<?php

/**
 * Created by PhpStorm.
 * User: ViviPro
 * Date: 7/31/2016
 * Time: 10:19 PM
 */
class TheleAdminController extends ControllerAdminBase
{
    public function initialize()
    {
        parent::initialize(); // TODO: Change the autogenerated stub
        $this->activeModule(__DIR__, "admin");
        $this->view->activeMenu = "thele";
        if(!$this->checkLogin()) return;
    }

    public function indexAction()
    {
        $file = getcwd()."/thele.vf";
        if($this->request->isPost()){
            file_put_contents($file,$this->request->getPost("contents"));
            $this->flash->success("Success");
        }

        $gt =new stdClass();
        $gt->contents = file_get_contents($file);
        $this->view->object = $gt;
    }


}