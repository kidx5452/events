<?php
$admin['username'] = "admin";
$admin['password'] = "123456$$";
$point_v1 = 20000;
$point_v2 = 40000;
$point_v3 = 80000;
$nguoitrungthuong = array(
    "Xin chúc mừng Nguyễn văn mừng đã trúng ipad mini",
    "Xin chúc mừng Nguyễn hoàng anh đã trúng thẻ 20k",
);
$shopdoiqua =array(
    array("name"=>"Rương gỗ","key"=>"ruong-go"),
    array("name"=>"Rương đá","key"=>"ruong-da"),
    array("name"=>"Rương đồng","key"=>"ruong-dong"),
    array("name"=>"Rương bạc","key"=>"ruong-bac"),
    array("name"=>"Rương vàng","key"=>"ruong-vang"),
    array("name"=>"Chìa khóa vàng","key"=>"chiakhoa"),
);

$vungdat1 = array(
    "ruong-go",
    "ruong-go",
    "ruong-go",
    "ruong-go",
    "ruong-dong",
    "ruong-dong",
    "ruong-dong",
    "ruong-dong",
    "ruong-da",
    "ruong-da",
    "ruong-da",
    "the-20",
    "ruong-da",
    "ruong-dong",
    "ruong-dong",
    "the-50",
    "ruong-dong",
    "ruong-dong",
    "ruong-dong",
    "ruong-dong",
    "ruong-dong",
    "ruong-dong",
);

$vungdat2 = array(
    "ruong-go",
    "ruong-go",
    "ruong-go",
    "ruong-go",
    "ruong-dong",
    "ruong-dong",
    "ruong-dong",
    "ruong-dong",
    "ruong-da",
    "ruong-da",
    "ruong-da",
    "the-20",
    "ruong-da",
    "ruong-dong",
    "ruong-dong",
    "the-50",
    "ruong-dong",
    "ruong-dong",
    "ruong-dong",
    "ruong-dong",
    "ruong-dong",
    "ruong-dong",
);

$vungdat3 = array(
    "ruong-go",
    "ruong-go",
    "ruong-go",
    "ruong-go",
    "ruong-dong",
    "ruong-dong",
    "ruong-dong",
    "ruong-dong",
    "ruong-da",
    "ruong-da",
    "ruong-da",
    "the-20",
    "ruong-da",
    "ruong-dong",
    "ruong-dong",
    "the-50",
    "ruong-dong",
    "ruong-dong",
    "ruong-dong",
    "ruong-dong",
    "ruong-dong",
    "ruong-dong",
);




$loader = new \Phalcon\Loader();

/**
 * We're a registering a set of directories taken from the configuration file
 */
$listdirector[] = $config->application->coreDir."controllers/";
$listdirector[] = $config->application->coreDir."models/";
$listdirector[] = $config->application->coreDir."libs/";
foreach($config->modules as $module) $listdirector[] =  $config->application->modulesDir.$module."/";
$loader->registerDirs($listdirector)->register();
