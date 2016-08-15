<?php
defined('APP_PATH') || define('APP_PATH', realpath('.'));

return new \Phalcon\Config(array(
    'database' => array(
        'adapter'     => 'Mysql',
        'host'        => '127.0.0.1',
        'username'    => 'root',
        'password'    => '123456654321$',
        'dbname'      => 'events',
        'charset'     => 'utf8',
    ),
    'database_auth' => array(
        'adapter'     => 'Mysql',
        'host'        => '127.0.0.1',
        'username'    => 'root',
        'password'    => '123456654321$',
        'dbname'      => 'vantiens',
        'charset'     => 'utf8',
    ),
    'application' => array(
        'coreDir' => APP_PATH . '/app/core/',
        'modulesDir' => APP_PATH . '/app/modules/',
        'modelsDir' => APP_PATH . '/app/core/models/',
        'libraryDir'     => APP_PATH . '/app/library/',
        'cacheDir'       => APP_PATH . '/app/cache/',
        'baseUri'        => '/',
    ),
    "media"=>array(
        "dir"=>"C:\\Winginx\\home\\event\\public_html\\public\\",
        "host"=>"http://event.vantiens.com/"
    ),
    'modules'=>array("index","giaithuong","thele","shopqua","items")
));
