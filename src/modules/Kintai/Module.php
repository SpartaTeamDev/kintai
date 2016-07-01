<?php namespace Kintai;

use Chaos\Common\AbstractLeagueServiceProvider;

/**
 * Class Module
 * @author ntd1712
 */
class Module extends AbstractLeagueServiceProvider
{
    /**
     * Constructor
     */
    public function __construct()
    {
        foreach (glob(__DIR__ . '/[!R]*/*') as $v)
        {
            $this->provides[] = __NAMESPACE__ . str_replace('/', '\\', str_replace([__DIR__, '.php'], '', $v));

            if (false !== stripos($v, 'service'))
            {
                $this->provides[] = basename($v, '.php');
            }
        }
    }
}