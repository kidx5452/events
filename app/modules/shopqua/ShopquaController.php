<?php

/**
 * Created by PhpStorm.
 * User: ViviPro
 * Date: 7/31/2016
 * Time: 10:19 PM
 */
class ShopquaController extends ControllerBase
{
    public function initialize()
    {
        parent::initialize(); // TODO: Change the autogenerated stub
        $this->activeModule(__DIR__);
        $this->view->activeMenu = "shopqua";
    }
    public function indexAction(){
        $auth = $this->getAuth();
        $config = Configs::findFirst(array("conditions"=>"key='thele'"));
        $this->view->thele = $config;
        //
        $user = User::findFirst($auth->id);
        $this->view->userobject = $user;
        global $shopdoiqua;
        foreach($shopdoiqua as $key=>$item){
            $c = AccountLog::count(array("conditions"=>"item_key=:itemkey:","bind"=>array("itemkey"=>$item['key'])));
            if($c>0) {
                $shopdoiqua[$key]['hasitem'] = 1;
                $itemObj = Items::findFirst(array("conditions"=>"item_keys=:itemkey:","bind"=>array("itemkey"=>$item['key'])));
                $shopdoiqua[$key]['item'] = $itemObj->toArray();
            }
        }
        $this->view->shopqua = $shopdoiqua;
    }


}