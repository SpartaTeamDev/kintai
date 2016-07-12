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
                'app' => array_slice(config('app'), 0, 10), // remove "providers" & "aliases" keys
                'cookie' => ['name' => config('session.cookie'), 'expires' => config('session.lifetime')],
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
    //     $data['uuid'] = uuid();
    //
    //     return [
    //         'result' => 'Success',
    //         strtolower($this->getService()->className) => $data
    //     ];
    // }
}