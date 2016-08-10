<?php

/**
 * Created by PhpStorm.
 * User: ViviPro
 * Date: 7/31/2016
 * Time: 10:19 PM
 */
class IndexController extends ControllerBase
{
    public function initialize()
    {
        parent::initialize(); // TODO: Change the autogenerated stub
        $this->activeModule(__DIR__);
        $this->view->activeMenu = "index";
    }
    public function indexAction(){

    }
    public function authAction(){
        $username = $this->request->getPost("username","string");
        $password = $this->request->getPost("password","string");
        $user = User::findFirst(array("conditions"=>"username=:username: and password=:password:","bind"=>array("username"=>$username,"password"=>md5($password))));
        if($user->id>0){
            $this->setAuth($user);
            $this->response->redirect("/index/vungdat1");
            return;
        }
        else {
            $this->flash->error("No Account info");
            $this->view->loginfailed = true;
            //$this->response->redirect("/");
        }

    }
    public function registerAction(){
        $username = $this->request->getPost("username","string");
        $password = $this->request->getPost("password","string");
        $sdt = $this->request->getPost("sdt","string");
        $email = $this->request->getPost("email","string");
        $datapost = array("username"=>$username,"sdt"=>$sdt,"email"=>$email);
        $this->view->object = (object)$datapost;
        $userCount = User::count(array("conditions"=>"username=:username:","bind"=>array("username"=>$username)));
        if($userCount>0) {
            $this->view->registerMessage = "Tài khoản đã tồn tại";
        }
        else {
            $user = new User();
            $user->username = $username;
            $user->password = md5($password);
            $user->email = $email;
            $user->sdt = $sdt;
            $user->save();
            $user = User::findFirst(array("conditions"=>"username=:username: and password=:password:","bind"=>array("username"=>$username,"password"=>md5($password))));
            $this->setAuth($user);
            $this->response->redirect("/");
        }
    }
    public function saveinfoAction(){

    }
    public function logoutAction(){
        $this->session->destroy();
        session_destroy();
        $this->response->redirect("/");
    }
    public function vungdat1Action(){
        $auth = $this->getAuth();
        if($this->request->hasPost("saveinfo")){
            $user = User::findFirst($auth->id);
            $user->fullname = $this->request->getPost("fullname","string");
            $user->cmnd =  $this->request->getPost("cmnd","string");
            $user->sdt =  $this->request->getPost("sdt","string");
            $user->address =  $this->request->getPost("address","string");
            $user->save();
            $this->flash->success("Lưu thành công");
        }
        $user = User::findFirst($auth->id);
        $this->view->userobject = $user;
    }

}