<?php

/**
 * Created by PhpStorm.
 * User: ViviPro
 * Date: 7/31/2016
 * Time: 10:19 PM
 */
class TheleController extends ControllerBase
{
    public function initialize()
    {
        parent::initialize(); // TODO: Change the autogenerated stub
        $this->activeModule(__DIR__);
        $this->view->activeMenu = "thele";
    }
    public function indexAction(){
        $config = Configs::findFirst(array("conditions"=>"key='thele'"));
        $this->view->object = $config;
    }


}