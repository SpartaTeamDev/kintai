<?php

require __DIR__ . '/bootstrap/autoload.php';
/** @var \Illuminate\Foundation\Application $app */
$app = require_once __DIR__ . '/bootstrap/app.php';

/** @var Illuminate\Contracts\Http\Kernel $kernel */
$kernel = $app->make('Illuminate\Contracts\Console\Kernel');
$kernel->bootstrap();

$app->boot();
return \Doctrine\ORM\Tools\Console\ConsoleRunner::createHelperSet($app->make('Doctrine\ORM\EntityManager'));