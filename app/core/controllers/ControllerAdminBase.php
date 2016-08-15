<?php

/**
 * Created by PhpStorm.
 * User: ViviPro
 * Date: 8/3/2016
 * Time: 11:20 PM
 */
class ControllerAdminBase extends \Phalcon\Mvc\Controller
{
    public $moduleInformation; // Thông tin module khi người dùng truy cập
    public $layoutFile; // Default layout file
    public function initialize()
    {
        global $config;
        $this->layoutFile = "index";
        $this->view->media = $config->media;
    }
    public function checkLogin(){
        if(empty($this->getAuth())){
            $this->response->redirect("index-admin/login");
            return false;
        }
        return true;
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

    public function post_file_key($key, $fullpath = false) {
        if (!isset($_FILES["$key"])) return null;
        //$target_dir = getcwd() . "/";
        //$target_dir = "/home/wsi.vn/public_html/public/";
        $target_dir = $this->config->media->dir;
        $folder = "uploads/" . date("Y/m/d");
        $listallow = [
            "jpg",
            "jpeg",
            "png",
            "gif",
            "mp3",
            "mp4",
            "xlsx",
            "xls"
        ];
        $fileParts = strtolower(pathinfo($_FILES[$key]['name'], PATHINFO_EXTENSION));
        $folder_name = '/';
        $folder_name = '/general/';
        if (in_array($fileParts, [
            'jpg',
            'jpeg',
            'gif',
            'png'
        ])) {
            $folder_name = '/picture/';
        }
        if (in_array($fileParts, [
            'mp3',
            'mp4',
            'avi',
            'mkv'
        ])) {
            $folder_name = '/video/';
        }
        if (in_array($fileParts, ['srt'])) {
            $folder_name = '/sub/';
        }
        if (!file_exists($target_dir . $folder . $folder_name)) var_dump(mkdir($target_dir . $folder . $folder_name, 0777, true));
        $target_file = $folder . $folder_name . basename(md5(strtotime("now") . uniqid() . rand(0, 9999)) . "_" . $this->removeTitle($_FILES["$key"]["name"]));
        $imageFileType = strtolower(pathinfo($target_file, PATHINFO_EXTENSION));
        if (file_exists($target_file)) return null;
        if ($_FILES["$key"]["size"] <= 0) return null;
        if (!in_array($imageFileType, $listallow)) return null;
        move_uploaded_file($_FILES["$key"]["tmp_name"], $target_dir . $target_file);
        if ($fullpath == true) return $target_dir . $target_file;
        else return $target_file;
    }
    public function RemoveSign($str) {
        $coDau = [
            "à",
            "á",
            "ạ",
            "ả",
            "ã",
            "â",
            "ầ",
            "ấ",
            "ậ",
            "ẩ",
            "ẫ",
            "ă",
            "ằ",
            "ắ",
            "ặ",
            "ẳ",
            "ẵ",
            "è",
            "é",
            "ẹ",
            "ẻ",
            "ẽ",
            "ê",
            "ề",
            "ế",
            "ệ",
            "ể",
            "ễ",
            "ì",
            "í",
            "ị",
            "ỉ",
            "ĩ",
            "ò",
            "ó",
            "ọ",
            "ỏ",
            "õ",
            "ô",
            "ồ",
            "ố",
            "ộ",
            "ổ",
            "ỗ",
            "ơ",
            "ờ",
            "ớ",
            "ợ",
            "ở",
            "ỡ",
            "ù",
            "ú",
            "ụ",
            "ủ",
            "ũ",
            "ư",
            "ừ",
            "ứ",
            "ự",
            "ử",
            "ữ",
            "ỳ",
            "ý",
            "ỵ",
            "ỷ",
            "ỹ",
            "đ",
            "À",
            "Á",
            "Ạ",
            "Ả",
            "Ã",
            "Â",
            "Ầ",
            "Ấ",
            "Ậ",
            "Ẩ",
            "Ẫ",
            "Ă",
            "Ằ",
            "Ắ",
            "Ặ",
            "Ẳ",
            "Ẵ",
            "È",
            "É",
            "Ẹ",
            "Ẻ",
            "Ẽ",
            "Ê",
            "Ề",
            "Ế",
            "Ệ",
            "Ể",
            "Ễ",
            "Ì",
            "Í",
            "Ị",
            "Ỉ",
            "Ĩ",
            "Ò",
            "Ó",
            "Ọ",
            "Ỏ",
            "Õ",
            "Ô",
            "Ồ",
            "Ố",
            "Ộ",
            "Ổ",
            "Ỗ",
            "Ơ",
            "Ờ",
            "Ớ",
            "Ợ",
            "Ở",
            "Ỡ",
            "Ù",
            "Ú",
            "Ụ",
            "Ủ",
            "Ũ",
            "Ư",
            "Ừ",
            "Ứ",
            "Ự",
            "Ử",
            "Ữ",
            "Ỳ",
            "Ý",
            "Ỵ",
            "Ỷ",
            "Ỹ",
            "Đ",
            "ê",
            "ù",
            "à"
        ];
        $khongDau = [
            "a",
            "a",
            "a",
            "a",
            "a",
            "a",
            "a",
            "a",
            "a",
            "a",
            "a",
            "a",
            "a",
            "a",
            "a",
            "a",
            "a",
            "e",
            "e",
            "e",
            "e",
            "e",
            "e",
            "e",
            "e",
            "e",
            "e",
            "e",
            "i",
            "i",
            "i",
            "i",
            "i",
            "o",
            "o",
            "o",
            "o",
            "o",
            "o",
            "o",
            "o",
            "o",
            "o",
            "o",
            "o",
            "o",
            "o",
            "o",
            "o",
            "o",
            "u",
            "u",
            "u",
            "u",
            "u",
            "u",
            "u",
            "u",
            "u",
            "u",
            "u",
            "y",
            "y",
            "y",
            "y",
            "y",
            "d",
            "A",
            "A",
            "A",
            "A",
            "A",
            "A",
            "A",
            "A",
            "A",
            "A",
            "A",
            "A",
            "A",
            "A",
            "A",
            "A",
            "A",
            "E",
            "E",
            "E",
            "E",
            "E",
            "E",
            "E",
            "E",
            "E",
            "E",
            "E",
            "I",
            "I",
            "I",
            "I",
            "I",
            "O",
            "O",
            "O",
            "O",
            "O",
            "O",
            "O",
            "O",
            "O",
            "O",
            "O",
            "O",
            "O",
            "O",
            "O",
            "O",
            "O",
            "U",
            "U",
            "U",
            "U",
            "U",
            "U",
            "U",
            "U",
            "U",
            "U",
            "U",
            "Y",
            "Y",
            "Y",
            "Y",
            "Y",
            "D",
            "e",
            "u",
            "a"
        ];

        return str_replace($coDau, $khongDau, $str);
    }

    public function removeTitle($string, $keyReplace = '-') {
        $string = $this->RemoveSign($string);
        //neu muon de co dau
        $string = trim(preg_replace("/[^A-Za-z0-9.]/i", " ", $string)); // khong dau
        $string = str_replace(" ", "-", $string);
        $string = str_replace("--", "-", $string);
        $string = str_replace("--", "-", $string);
        $string = str_replace("--", "-", $string);
        $string = str_replace("--", "-", $string);
        $string = str_replace("--", "-", $string);
        $string = str_replace("--", "-", $string);
        $string = str_replace("--", "-", $string);
        $string = str_replace($keyReplace, "-", $string);
        $string = strtolower($string);

        return $string;
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
        return $this->session->get("auth_admin");
    }

    /**
     * @param mixed $auth
     */
    protected function setAuth($auth)
    {
        $this->session->set("auth_admin",$auth);
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