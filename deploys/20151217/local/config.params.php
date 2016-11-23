<?php return [
    'app' => [
        'datetimeFormat' => 'Y-m-d H:i:s',
        'dateFormat' => 'Y-m-d',
        'timeFormat' => 'H:i:s',
        'itemsPerPage' => 10,
        'maxItemsPerPage' => 100,
        'minSearchChars' => 4,
        // specific
        'copyright' => 'Copyright 2016 by My Company. All Rights Reserved.',
        'title' => 'Admin Panel',
        'theme' => 'homer', // homer, classic
        'defaultRoute' => 'setting.index',
        'imageAllowedExt' => 'gif,jpeg,jpg,png',
        'imageMaxSize' => 2097152 // 2MB
    ],
    'paths' => [
        'api' => __DIR__ . '/../public/api',
        'upload' => __DIR__ . '/../public/uploads'
    ],
    'urls' => [
        'reset' => '/#/reset?k=',
    ]
];