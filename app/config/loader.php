<?php

$loader = new \Phalcon\Loader();

/**
 * We're a registering a set of directories taken from the configuration file
 */
$listdirector[] = $config->application->coreDir."controllers/";
$listdirector[] = $config->application->coreDir."models/";
$listdirector[] = $config->application->coreDir."libs/";
foreach($config->modules as $module) $listdirector[] =  $config->application->modulesDir.$module."/";
$loader->registerDirs($listdirector)->register();

