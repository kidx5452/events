<?php

header('Content-Type: text/html; charset=utf-8');
define('CORE_API_HTTP_USR', 'merchant_15804');
define('CORE_API_HTTP_PWD', '158041jUuIz0nxCHwhRbi3Wqp5De4BEXNgQ');

$bk = 'https://www.baokim.vn/the-cao/restFul/send';
$seri = isset($_POST['txtseri']) ? $_POST['txtseri'] : '';
$sopin = isset($_POST['txtpin']) ? $_POST['txtpin'] : '';
//Loai the cao (VINA, MOBI, VIETEL, VTC, GATE)
$mang = isset($_POST['chonmang']) ? $_POST['chonmang'] : '';

$server = $_POST['server'];
$username = $_POST['username'];

include_once '../function/xss_clean.php';
if (empty($server) || empty($username) || empty($seri) || empty($sopin) || empty($mang) ||
    hasSC(array($server, $username, $seri, $sopin, $mang))) {
    echo '<script>alert("Thông tin nh?p vào không h?p l?!");location.href="/nap-the"</script>';
    exit;
}

if($mang=='MOBI'){
    $ten = "Mobifone";
}
else if($mang=='VIETEL'){
    $ten = "Viettel";
}
else if($mang=='GATE'){
    $ten = "Gate";
}
else if($mang=='VTC'){
    $ten = "VTC";
}
else $ten ="Vinaphone";

//Mã MerchantID dang kí trên B?o Kim
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
    $rate = 5;
    $extraRate = 6;


    switch($amount) {
        case 10000: $xu = 2000 * $rate; break;
        case 20000: $xu = 4000 * $rate; break;
        case 30000: $xu = 6000 * $rate; break;
        case 50000: $xu= 10000 * $rate; break;
        case 100000: $xu = 20000 * $rate; break;
        case 200000: $xu = 40000 * $rate; break;
        case 300000: $xu = 60000 * $rate; break;
        case 500000: $xu = 100000 * $extraRate; break;
        case 1000000: $xu = 200000 * $extraRate; break;
    }

    // Xu ly thong tin tai day

    include_once '../function/pay.php';
    pay($server, $username, $xu);

    //Luu the cao vao DB:
    $serverIdInt = preg_replace('/[^0-9]+/', '', $server);
    include_once '../db/connect.php';
    $dbh->prepare("INSERT INTO card_transaction (account, card_pin, card_serial, service, `date`, cost, server_id) VALUES (?, ?, ?, ?, ?, ?, ?)")
        ->execute(array($username, $sopin, $seri, $ten, date('Y-m-d H:i:s', $time), $amount, $serverIdInt));

    //Luu card ra log:
    $file = "carddung.log";
    $fh = fopen($file,'a') or die("cant open file");
    fwrite($fh,"Tai khoan: ".$username.", Loai the: ".$ten.", Menh gia: ".$amount.",Ma the: ".$sopin.", Seri: ".$seri.", Thoi gian: ".$time);
    fwrite($fh,"\r\n");
    fclose($fh);
    echo '<script>alert("B?n ?ã thanh toán thành công th? '.$ten.' m?nh giá '.$amount.' ");location.href="/"</script>';

}
else{
    echo 'Status Code:' . $status . '<hr >';
    $error = $result['errorMessage'];
    echo $error;
    $file = "cardsai.log";
    $fh = fopen($file,'a') or die("cant open file");
    fwrite($fh,"Tai khoan: ".$username.", Ma the: ".$sopin.", Seri: ".$seri.", Noi dung loi: ".$error.", Thoi gian: ".$time);
    fwrite($fh,"\r\n");
    fclose($fh);
    echo '<script>alert("Thong tin the cao khong hop le!");location.href="/nap-the"</script>';
}

