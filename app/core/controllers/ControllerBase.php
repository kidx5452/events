<?php

/**
 * Created by PhpStorm.
 * User: ViviPro
 * Date: 7/31/2016
 * Time: 10:19 PM
 */
class ControllerBase extends \Phalcon\Mvc\Controller
{
    public $moduleInformation; // Thông tin module khi người dùng truy cập
    public $layoutFile; // Default layout file
    public function initialize()
    {
        $this->layoutFile = "index";
    }

    /***
     * Hàm này dùng để switch view giữa client và admin + init Language + ...
     * @param $moduleDir
     * @param null $suffix_view
     */
    protected function activeModule($moduleDir,$suffix_view="views"){
        // init lang
        $lang = array();
        $culture = $this->getCulture();
        if(!empty($culture->lang)) $lang_key = $culture->lang;
        $lang_key = "vi_VN"; // fix test lang
        $lang_file = "$moduleDir/locale/lang/$lang_key.php";
        if(file_exists($lang_file)) require $lang_file;

        // Get module information by path
        $moduleName = basename($moduleDir);
        $this->moduleInformation = require "$moduleDir/$moduleName.php"; // include file infor of modules
        $this->moduleInformation['lang'] = $lang; // Set lang for variable use in controller
        $this->view->label = $lang; // Set lang to view volt file

        // Switch view - layout admin or client
        $actionName = $this->dispatcher->getActionName();
        if($suffix_view!="views") {
            $suffix_view = "views_".$suffix_view;
            $this->layoutFile = "admin";
        }
        $this->switchLayout();
        $this->view->pick("$moduleName/$suffix_view/$actionName");
    }

    protected function switchLayout($layout=null){
        if($layout==null) $this->view->setMainView("layout/{$this->layoutFile}");
        else $this->view->setMainView("layout/$layout");
    }

    /**
     * @return boolean
     */
    protected function hasPermission($key){

    }


    /**
     * @return mixed
     */
    protected function getAuth()
    {
        return $this->session->get("auth");
    }

    /**
     * @param mixed $auth
     */
    protected function setAuth($auth)
    {
        $this->session->set("auth",$auth);
    }


    /**
     * @return mixed
     */
    protected function getCulture()
    {
        return $this->session->get("culture");
    }

    /**
     * @param mixed culture
     */
    protected function setCulture($culture)
    {
        $this->session->set("culture",$culture);
    }


}