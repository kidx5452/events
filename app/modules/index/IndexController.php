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
        global $nguoitrungthuong;
        shuffle($nguoitrungthuong);
        $this->view->nguoitrungthuong = implode(" --- ",$nguoitrungthuong);
    }

    public function indexAction()
    {

    }

    public function authAction()
    {
        $username = $this->request->getPost("username", "string");
        $password = $this->request->getPost("password", "string");
        $user = User::findFirst(array("conditions" => "username=:username: and password=:password:", "bind" => array("username" => $username, "password" => md5($password))));
        if ($user->id > 0) {
            $this->setAuth($user);
            $this->response->redirect("/index/index");
            return;
        } else {
            $this->flash->error("No Account info");
            $this->view->loginfailed = true;
            //$this->response->redirect("/");
        }

    }

    public function registerAction()
    {
        $username = $this->request->getPost("username", "string");
        $password = $this->request->getPost("password", "string");
        $sdt = $this->request->getPost("sdt", "string");
        $email = $this->request->getPost("email", "string");
        $datapost = array("username" => $username, "sdt" => $sdt, "email" => $email);
        $this->view->object = (object)$datapost;
        $userCount = User::count(array("conditions" => "username=:username:", "bind" => array("username" => $username)));
        if ($userCount > 0) {
            $this->view->registerMessage = "Tài khoản đã tồn tại";
        } else {
            $user = new User();
            $user->username = $username;
            $user->password = md5($password);
            $user->email = $email;
            $user->sdt = $sdt;
            $user->save();
            $user = User::findFirst(array("conditions" => "username=:username: and password=:password:", "bind" => array("username" => $username, "password" => md5($password))));
            $this->setAuth($user);
            $this->response->redirect("/");
        }
    }

    public function saveinfoAction()
    {

    }

    public function logoutAction()
    {
        $this->session->destroy();
        session_destroy();
        $this->response->redirect("/");
    }

    public function naptheAction()
    {
        $bk = 'https://www.baokim.vn/the-cao/restFul/send';
        $httpurs = "merchant_15804";
        $httppass = "158041jUuIz0nxCHwhRbi3Wqp5De4BEXNgQ";
        $seri = $this->request->getPost("seri");
        $sopin = $this->request->getPost("pin");
        $mang = $this->request->getPost("mang");
        if ($mang == 'MOBI') $ten = "Mobifone";
        else if ($mang == 'VIETEL') $ten = "Viettel";
        else if ($mang == 'GATE') $ten = "Gate";
        else if ($mang == 'VTC') $ten = "VTC";
        else $ten = "Vinaphone";
        //Mã MerchantID dang kí trên Bảo Kim
        $merchant_id = '15804';
        //Api username
        $api_username = 'mghaygamevncom';
        //Api Pwd d
        $api_password = 'mghaygamevncomhgd7AYFshssfd';
        //Mã TransactionId
        $transaction_id = time();
        //mat khau di kem ma website dang kí trên B?o Kim
        $secure_code = '025db880c82570f0';
        $arrayPost = array(
            'merchant_id'=>$merchant_id,
            'api_username'=>$api_username,
            'api_password'=>$api_password,
            'transaction_id'=>$transaction_id,
            'card_id'=>$mang,
            'pin_field'=>$sopin,
            'seri_field'=>$seri,
            'algo_mode'=>'hmac'
        );
        ksort($arrayPost);
        $data_sign = hash_hmac('SHA1',implode('',$arrayPost),$secure_code);
        $arrayPost['data_sign'] = $data_sign;
        $curl = curl_init($bk);
        curl_setopt_array($curl, array(
            CURLOPT_POST=>true,
            CURLOPT_HEADER=>false,
            CURLINFO_HEADER_OUT=>true,
            CURLOPT_TIMEOUT=>30,
            CURLOPT_RETURNTRANSFER=>true,
            CURLOPT_SSL_VERIFYPEER => false,
            CURLOPT_HTTPAUTH=>CURLAUTH_DIGEST|CURLAUTH_BASIC,
            CURLOPT_USERPWD=>CORE_API_HTTP_USR.':'.CORE_API_HTTP_PWD,
            CURLOPT_POSTFIELDS=>http_build_query($arrayPost)
        ));
        $data = curl_exec($curl);
        $status = curl_getinfo($curl, CURLINFO_HTTP_CODE);
        $result = json_decode($data,true);
        date_default_timezone_set('Asia/Ho_Chi_Minh');
        $time = time();
//$time = time();
        if($status==200){
            $amount = $result['amount'];
            $diemsucmanh = $amount*10;
            $user = $this->getAuth();
            $userobject = User::findFirst($user->id);
            $userobject->mypointevent = $userobject->mypointevent+$diemsucmanh;
            $userobject->save();
            $chargelog = new Chargelog();
            $chargelog->userid = $user->id;
            $chargelog->amount = $amount;
            $chargelog->create_at = time();
            $chargelog->save();
            $this->flash->success("Nạp thẻ thành công");
        }
        else{
            $this->flash->error($result['errorMessage']);
        }
        $backurl = $this->request->getPost("backurl");
        $this->response->redirect($backurl);
    }

    public function vungdat1Action()
    {
        global $point_v1;
        $auth = $this->getAuth();
        if(empty($auth)) {
            $this->flash->error("Bạn cần đăng nhập để vào vùng đất này");
            $this->response->redirect("/");
        }
        if ($this->request->hasPost("saveinfo")) {
            $user = User::findFirst($auth->id);
            $user->fullname = $this->request->getPost("fullname", "string");
            $user->cmnd = $this->request->getPost("cmnd", "string");
            $user->sdt = $this->request->getPost("sdt", "string");
            $user->address = $this->request->getPost("address", "string");
            $user->save();
            $this->flash->success("Lưu thành công");

        }
        else if($this->request->hasPost("doidiem")){
            $soluot = $this->request->getPost("turn");
            $sodiem = $soluot*$point_v1;
            $user = User::findFirst($auth->id);
            if($user->mypointevent<$sodiem){
                $this->flash->error("Số điểm hiện tại của bạn không đủ để đổi $soluot lượt");
            }
            else{
                $user->count_play = $user->count_play+$soluot;
                $user->mypointevent = $user->mypointevent-$sodiem;
                $user->save();
                $this->flash->success("Đổi lượt thành công");
            }
        }
        else if($this->request->hasPost("daokhobau")){
            $user = User::findFirst($auth->id);
            if($user->count_play<=0) {
                $this->flash->error("Bạn không đủ lượt tham gia để đào kho báu. Hãy đổi điểm sức mạnh lấy lượt tham gia và tiến hành đào kho báu");
            }
            else{
                global $vungdat1;
                $key =$vungdat1[array_rand($vungdat1)];
                $itemobj = Items::findFirst(array("conditions"=>"item_keys=:key:","bind"=>array("key"=>$key)));
                $this->view->itemRecv = $itemobj;
                $user->count_play = $user->count_play-1;
                $user->save();
                $accountLog = new AccountLog();
                $accountLog->userid = $auth->id;
                $accountLog->item_key = $key;
                $accountLog->create_at = time();
                $accountLog->level = 1;
                if($key=="the-50" || $key=="the-20"){
                    $card = Cards::findFirst(array("conditions"=>"status=0"));
                    if($card->id>0) {
                        $card->status = 1;
                        $card->date_accept = time();
                        $accountLog->card_id = $card->id;
                    }
                }
                $accountLog->save();

            }
        }
        $user = User::findFirst($auth->id);
        $this->view->userobject = $user;
        // Load item
        $listitem = Items::find(array("conditions"=>"level=1"));
        $this->view->listitem = $listitem;
        // Load History
        $history = AccountLog::find(array("conditions"=>"userid=:userid: and level=:level:","bind"=>array("userid"=>$auth->id,"level"=>1),"limit"=>10,"offset"=>0,"order"=>"create_at desc"));
        $this->view->history = $history;
        $this->view->history_count = AccountLog::count(array("conditions"=>"userid=:userid: and level=:level:","bind"=>array("userid"=>$auth->id,"level"=>1)));
        // Load charge history
        $chargehistory = Chargelog::find(array("conditions"=>"userid=:userid:","bind"=>array("userid"=>$auth->id),"limit"=>20,"offset"=>0,"order"=>"create_at desc"));
        $this->view->chargehistory = $chargehistory;
        $this->view->pointv = $point_v1;
    }


    public function vungdat2Action()
    {
        global $point_v2;
        $auth = $this->getAuth();
        if(empty($auth)) {
            $this->flash->error("Bạn cần đăng nhập để vào vùng đất này");
            $this->response->redirect("/");
        }
        // Check vung 1
        $c = AccountLog::count(array("conditions"=>"userid=:userid: and level=:level:","bind"=>array("userid"=>$auth->id,"level"=>1)));
        if($c<100){
            /*$this->flash->error("Bạn cần đào 100 lần ở vùng đất 1 mới được chuyển sang vùng đất 2");
            $this->response->redirect("/");
            return;*/
        }

        if ($this->request->hasPost("saveinfo")) {
            $user = User::findFirst($auth->id);
            $user->fullname = $this->request->getPost("fullname", "string");
            $user->cmnd = $this->request->getPost("cmnd", "string");
            $user->sdt = $this->request->getPost("sdt", "string");
            $user->address = $this->request->getPost("address", "string");
            $user->save();
            $this->flash->success("Lưu thành công");

        }
        else if($this->request->hasPost("doidiem")){
            $soluot = $this->request->getPost("turn");
            $sodiem = $soluot*$point_v2;
            $user = User::findFirst($auth->id);
            if($user->mypointevent<$sodiem){
                $this->flash->error("Số điểm hiện tại của bạn không đủ để đổi $soluot lượt");
            }
            else{
                $user->count_play = $user->count_play+$soluot;
                $user->mypointevent = $user->mypointevent-$sodiem;
                $user->save();
                $this->flash->success("Đổi lượt thành công");
            }
        }
        else if($this->request->hasPost("daokhobau")){
            $user = User::findFirst($auth->id);
            if($user->count_play<=0) {
                $this->flash->error("Bạn không đủ lượt tham gia để đào kho báu. Hãy đổi điểm sức mạnh lấy lượt tham gia và tiến hành đào kho báu");
            }
            else{
                global $vungdat2;
                $key =$vungdat2[array_rand($vungdat2)];
                $itemobj = Items::findFirst(array("conditions"=>"item_keys=:key:","bind"=>array("key"=>$key)));
                $this->view->itemRecv = $itemobj;
                $user->count_play = $user->count_play-1;
                $user->save();
                $accountLog = new AccountLog();
                $accountLog->userid = $auth->id;
                $accountLog->item_key = $key;
                $accountLog->create_at = time();
                $accountLog->level = 2;
                if($key=="the-50" || $key=="the-20"){
                    $card = Cards::findFirst(array("conditions"=>"status=0"));
                    if($card->id>0) {
                        $card->status = 1;
                        $card->date_accept = time();
                        $accountLog->card_id = $card->id;
                    }
                }
                $accountLog->save();
            }
        }
        $user = User::findFirst($auth->id);
        $this->view->userobject = $user;
        // Load item
        $listitem = Items::find(array("conditions"=>"level=2"));
        $this->view->listitem = $listitem;
        // Load History
        $history = AccountLog::find(array("conditions"=>"userid=:userid: and level=:level:","bind"=>array("userid"=>$auth->id,"level"=>2),"limit"=>20,"offset"=>0,"order"=>"create_at desc"));
        $this->view->history = $history;
        $this->view->history_count = AccountLog::count(array("conditions"=>"userid=:userid: and level=:level:","bind"=>array("userid"=>$auth->id,"level"=>2)));
        // Load charge history
        $chargehistory = Chargelog::find(array("conditions"=>"userid=:userid:","bind"=>array("userid"=>$auth->id),"limit"=>10,"offset"=>0,"order"=>"create_at desc"));
        $this->view->chargehistory = $chargehistory;
        $this->view->pointv = $point_v2;
    }

    public function vungdat3Action()
    {
        global $point_v3;
        $auth = $this->getAuth();
        if(empty($auth)) {
            $this->flash->error("Bạn cần đăng nhập để vào vùng đất này");
            $this->response->redirect("/");
        }
        // Check vung 2
        $c = AccountLog::count(array("conditions"=>"userid=:userid: and level=:level:","bind"=>array("userid"=>$auth->id,"level"=>2)));
        if($c<200){
            /*$this->flash->error("Bạn cần đào 200 lần ở vùng đất 2 mới được chuyển sang vùng đất 3");
            $this->response->redirect("/");
            return;*/
        }
        if ($this->request->hasPost("saveinfo")) {
            $user = User::findFirst($auth->id);
            $user->fullname = $this->request->getPost("fullname", "string");
            $user->cmnd = $this->request->getPost("cmnd", "string");
            $user->sdt = $this->request->getPost("sdt", "string");
            $user->address = $this->request->getPost("address", "string");
            $user->save();
            $this->flash->success("Lưu thành công");

        }
        else if($this->request->hasPost("doidiem")){
            $soluot = $this->request->getPost("turn");
            $sodiem = $soluot*$point_v3;
            $user = User::findFirst($auth->id);
            if($user->mypointevent<$sodiem){
                $this->flash->error("Số điểm hiện tại của bạn không đủ để đổi $soluot lượt");
            }
            else{
                $user->count_play = $user->count_play+$soluot;
                $user->mypointevent = $user->mypointevent-$sodiem;
                $user->save();
                $this->flash->success("Đổi lượt thành công");
            }
        }
        else if($this->request->hasPost("daokhobau")){
            $user = User::findFirst($auth->id);
            if($user->count_play<=0) {
                $this->flash->error("Bạn không đủ lượt tham gia để đào kho báu. Hãy đổi điểm sức mạnh lấy lượt tham gia và tiến hành đào kho báu");
            }
            else{
                global $vungdat3;
                $key =$vungdat3[array_rand($vungdat3)];
                $itemobj = Items::findFirst(array("conditions"=>"item_keys=:key:","bind"=>array("key"=>$key)));
                $this->view->itemRecv = $itemobj;
                $user->count_play = $user->count_play-1;
                $user->save();
                $accountLog = new AccountLog();
                $accountLog->userid = $auth->id;
                $accountLog->item_key = $key;
                $accountLog->create_at = time();
                $accountLog->level = 2;
                if($key=="the-50" || $key=="the-20"){
                    $card = Cards::findFirst(array("conditions"=>"status=0"));
                    if($card->id>0) {
                        $card->status = 1;
                        $card->date_accept = time();
                        $accountLog->card_id = $card->id;
                    }
                }
                $accountLog->save();
            }
        }
        $user = User::findFirst($auth->id);
        $this->view->userobject = $user;
        // Load item
        $listitem = Items::find(array("conditions"=>"level=3"));
        $this->view->listitem = $listitem;
        // Load History
        $history = AccountLog::find(array("conditions"=>"userid=:userid: and level=:level:","bind"=>array("userid"=>$auth->id,"level"=>3),"limit"=>20,"offset"=>0,"order"=>"create_at desc"));
        $this->view->history = $history;
        $this->view->history_count = AccountLog::count(array("conditions"=>"userid=:userid: and level=:level:","bind"=>array("userid"=>$auth->id,"level"=>3)));
        // Load charge history
        $chargehistory = Chargelog::find(array("conditions"=>"userid=:userid:","bind"=>array("userid"=>$auth->id),"limit"=>10,"offset"=>0,"order"=>"create_at desc"));
        $this->view->chargehistory = $chargehistory;
        $this->view->pointv = $point_v3;
    }

}