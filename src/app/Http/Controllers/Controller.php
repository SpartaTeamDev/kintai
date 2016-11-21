<?php namespace App\Http\Controllers;

use Chaos\Common\AbstractLaravelRestController;

/**
 * Class Controller
 * @author ntd1712
 */
abstract class Controller extends AbstractLaravelRestController
{
    /** {@inheritdoc} */
    public function __construct()
    {
        parent::__construct(
            array_replace_recursive([
                'app' => array_diff_key(config('app'), ['providers' => 0, 'aliases' => 0]),
                'session' => ['expires' => config('session.lifetime')] + array_diff_key(config('session'), [
                    'driver' => 0, 'lifetime' => 0, 'files' => 0, 'connection' => 0, 'table' => 0, 'store' => 0
                ]),
                'mail' => config('mail'),
                'paths' => ['config' => $configPath = base_path('modules/config.params.php')],
            ], require_once $configPath),
            require_once base_path('modules/config.services.php')
        );
    }

    /** {@inheritdoc} */
    // public function getInit()
    // {
    //     $data = $this->getService()->entity->toSimpleArray();
    //     $data['uuid'] = \Ramsey\Uuid\Uuid::uuid4();
    //
    //     return [
    //         'result' => 'Success',
    //         strtolower($this->getService()->className) => $data
    //     ];
    // }
}