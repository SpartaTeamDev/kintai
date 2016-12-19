<?php return [
    'app' => [
        'dateFormat' => 'Y-m-d',
        'timeFormat' => 'H:i:s',
        'itemsPerPage' => 10,
        'maxItemsPerPage' => 100,
        'minSearchChars' => 4,
        // specific
        'copyright' => 'Copyright 2016 My Company',
        'title' => 'Admin Panel',
        'theme' => 'homer', // homer, inspinia, classic
        'defaultRoute' => 'setting.index',
        'imageAllowedExt' => 'gif,jpeg,jpg,png',
        'imageMaxSize' => 2097152 // 2MB
    ],
    'paths' => [
        'api' => __DIR__ . '/../public/api',
        'uploads' => __DIR__ . '/../public/uploads'
    ],
    'urls' => [
        'reset' => '/#/reset?k=',
    ]
];