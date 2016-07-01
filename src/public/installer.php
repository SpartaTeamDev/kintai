<?php

function rm($dir)
{
    $files = array_diff(scandir($dir), array('.', '..'));

    foreach ($files as $file)
    {
        @chmod("$dir/$file", 0777);
        is_dir("$dir/$file") ? rm("$dir/$file") : @unlink("$dir/$file");
    }

    return rmdir($dir);
}

chdir(__DIR__ . '/../');
$root = getcwd() . '/';
$mode = 0777 & ~umask();

chmod($root . 'modules/config.params.php', $mode);
chmod($root . 'public/api', $mode);
chmod($root . 'public/uploads', $mode);
chmod($root . 'storage/app', $mode);
chmod($root . 'storage/framework/cache', $mode);
chmod($root . 'storage/framework/proxies', $mode);
chmod($root . 'storage/framework/sessions', $mode);
chmod($root . 'storage/framework/views', $mode);
chmod($root . 'storage/logs', $mode);

echo nl2br(
<<<EOF
Please make sure that you have finished the following steps before continuing:

1. Only keep the following folders:

./app
./bootstrap
./modules
./public
./resources
./storage
./vendor

2. Configure the ./public/.htaccess file (if any):

RewriteBase /

3. About optimizing for production with Laravel 5.0,
please make sure you've changed the application URL & PATH settings
for the following files correctly:

./vendor/compiled.php
./vendor/config.php

Have fun!
EOF
);

rm($root . 'public/themes/homer/app');
rm($root . 'public/themes/homer/bower_components');
rm($root . 'public/themes/homer/node_modules');
@chmod($root . 'public/themes/homer/bower.json', $mode);
@unlink($root . 'public/themes/homer/bower.json');
@chmod($root . 'public/themes/homer/Gruntfile.js', $mode);
@unlink($root . 'public/themes/homer/Gruntfile.js');
@chmod($root . 'public/themes/homer/package.json', $mode);
@unlink($root . 'public/themes/homer/package.json');
@chmod(__FILE__, $mode);
@unlink(__FILE__);

die;