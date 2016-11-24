<?php namespace App\Http\Controllers\Kintai;

use Dompdf\Dompdf;
use Dompdf\Options;
use Riskihajar\Terbilang\Terbilang;
use Zend\Db\Sql\Predicate\Predicate;
use App\Http\Controllers\Controller;

/**
 * Class StaffController
 * @author ntd1712
 */
class StaffController extends Controller
{
    /**
     * @override
     * @example GET /lookup?filter=&sort=&start=&length=
     */
    public function index()
    {
        /** @var \Doctrine\ORM\EntityManager $entityManager */
        // $entityManager = app(DOCTRINE_ENTITY_MANAGER); // we can't run this way
        $entityManager = $this->getService()->getRepository()->entityManager;

        /** @var \Doctrine\ORM\EntityRepository $repo */
        $settingRepository = $entityManager->getRepository('System\Entities\Setting');
        $data = $settingRepository->findAll();

        var_dump($data); // GET /api/staff?length=10&start=0
        die;
    }

    /** {@inheritdoc} */
    public function getPage()
    {
        $response = $this->getService()->readAll($this->getFilterParams2([
            'joins' => [
                ['join' => $this->getService('Income')->getRepository(), 'condition' => '%2$s = %1$s.%2$s'],
                ['join' => $this->getService('Product')->getRepository(), 'condition' => '%2$s = %1$s.%2$s', 'type' => 'left']
            ]
        ]), $this->getPagerParams([], ['pageindex', 'pagesize']));

        switch ($this->getRequest('export'))
        {
            case 'pdf':
                $type = 'income';
                $view = view($this->getConfig()->get('app.theme') . '.templates.' . $type, ['config' => $this->getConfig(),
                    'data' => $response['data'], 'terbilang' => new Terbilang
                ]);

                $dompdf = new Dompdf;
                $dompdf->setOptions(new Options([
                    'debugLayoutLines' => false,
                    'debugLayoutBlocks' => false,
                    'debugLayoutInline' => false,
                    'debugLayoutPaddingBox' => false,
                    'isJavascriptEnabled' => false,
                    'isRemoteEnabled' => true,
                    'isHtml5ParserEnabled' => true
                ]));
                $dompdf->setPaper('A4', 'landscape');
                $dompdf->loadHtml($view->render());
                $dompdf->render();

                if (!headers_sent())
                {
                    $dompdf->stream(sprintf('%s_%s.pdf', $type, date('Ymd')), ['Attachment' => 0]);
                }
                die;
            default:
        }

        return [
            'result' => 'Success',
            'pageindex' => $this->getRequest('pageindex'),
            'pagesize' => $this->getRequest('pagesize'),
            'totalcount' => $response['total'],
            strtolower($this->getService()->className) . 's' => $response['data']
        ];
    }

    /** {@inheritdoc} */
    protected function getFilterParams2(array $binds = [])
    {
        // do some checks
        $searchParams = $this->getRequest('searchparams');

        if (is_blank($searchParams))
        {
            return $binds;
        }
        elseif (is_string($searchParams))
        {
            $searchParams = trim(rawurldecode($searchParams));

            if (false !== ($decodedValue = is_json($searchParams, true)))
            {
                $searchParams = (array)$decodedValue;
            }
            else
            {
                $searchParams = [['Key' => 'SearchCode', 'Value' => $searchParams]];
            }
        }

        // switch...
        $filterSet = new Predicate;
        $orderSet = [];

        foreach ($searchParams as $param)
        {
            if (empty($param['Key']) || !isset($param['Value']) ||
                is_blank($param['Value']) || !is_scalar($param['Value']))
            {
                continue;
            }

            switch ($param['Key'])
            {
                case 'SortedField':
                    $orderSet['property'] = $param['Value'];
                    break;
                case 'SortedDirection':
                    $orderSet['direction'] = 'true' == $param['Value'] ? 'DESC' : 'ASC';
                    break;
                case 'SearchCode':
                    $this->getService()->prepareFilterParams($param['Value'], $filterSet);
                    break;
                case 'GreaterOrEqualStartDate':
                    $filterSet->greaterThan('%2$s.InvoiceDate',
                        "'" . $this->getService()->filter($param['Value'], -1) . "'");
                    break;
                case 'LessThanOrEqualEndDate':
                    $filterSet->lessThan('%2$s.InvoiceDate',
                        "'" . $this->getService()->filter($param['Value'], 86400) . "'");
                    break;
                case 'FromPrice':
                    $filterSet->greaterThan('UnitPrice', (int)$param['Value'] - 1);
                    break;
                case 'ToPrice':
                    $filterSet->lessThan('UnitPrice', (int)$param['Value'] + 1);
                    break;
                case 'Type':
                case 'Income.Type':
                    $filterSet->equalTo('%2$s.Type', "'" . $this->getService()->filter($param['Value']) . "'");
                    break;
                case 'CategoryId':
                case 'Product.CategoryId':
                    if (0 < ($id = (int)$param['Value']))
                    {
                        $filterSet->equalTo('%3$s.CategoryId', $id);
                    }
                    break;
                case 'ProductId':
                    if (0 < ($id = (int)$param['Value']))
                    {
                        $filterSet->equalTo($param['Key'], $id);
                    }
                    break;
                case 'CustomerId':
                    if (0 < ($id = (int)$param['Value']))
                    {
                        $filterSet->equalTo('%2$s.' . $param['Key'], $id);
                    }
                    break;
                default:
            }
        }

        $orderSet = $this->getService()->prepareOrderParams([$orderSet]);

        // merge with existing criteria (if any)
        if (0 !== count($filterSet))
        {
            if (isset($binds['where']))
            {
                $filterSet->addPredicates($binds['where']);
            }

            $binds['where'] = $filterSet;
        }

        if (!empty($orderSet))
        {
            if (empty($binds['order']))
            {
                $binds['order'] = [];
            }

            foreach ($orderSet as $k => $v)
            {
                if (is_string($binds['order']))
                {
                    $binds['order'] .= ', ' . $k . ' ' . $v;
                }
                elseif (is_array($binds['order']))
                {
                    $binds['order'][$k] = $v;
                }
            }
        }

        // bye!
        return $binds;
    }
}