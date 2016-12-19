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
                'db' => ($db = config('database.connections')[config('database.default')]) + [
                    'user' => $db['username'],
                    'dbname' => $db['database'],
                ],
                'orm' => config('doctrine'),
                'mail' => config('mail'),
                'session' => ['expires' => config('session.lifetime')] + array_diff_key(config('session'), [
                    'driver' => 0, 'lifetime' => 0, 'files' => 0, 'connection' => 0, 'table' => 0, 'store' => 0
                ]),
                'paths' => ['config' => $configPath = base_path('modules/config.params.php')],
            ], require_once $configPath),
            require_once base_path('modules/config.services.php')
        );
    }
}