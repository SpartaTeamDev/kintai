<?php namespace Don\Services;

use Chaos\Common\AbstractBaseService;

/**
 * Class DonService
 * @author ntd1712
 */
class DonService extends AbstractBaseService
{
    public function readAll($criteria = [], $paging = false)
    {
        return ['data' => [], 'total' => count([]), 'success' => true];
    }
}