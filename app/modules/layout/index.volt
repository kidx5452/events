<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Vấn Tiên S</title>
    <link rel="stylesheet" href="/_resources/client/skins/style.css" type="text/css" media="all">
    <link rel="stylesheet" href="/_resources/client/skins/responsive.css" type="text/css" media="all">
    <link rel="stylesheet" href="/_resources/client/skins/menu_sideslide.css" type="text/css" media="all">
    <link rel="stylesheet" href="/_resources/client/skins/login.css" type="text/css" media="all">
    <link rel="stylesheet" href="/_resources/client/skins/font-awesome.css" type="text/css" media="all">

    <script type="text/javascript" src="/_resources/client/js/jquery.min.js"></script>
    <script type="text/javascript" src="/_resources/client/js/bootstrap.min.js"></script>

</head>

<body>
<div class="menu-wrap">
    <div class="menu">
        <div class="icon-list">
            <a href="#"><span>Trang chủ</span></a>
            <a href="#"><span>Thể lệ</span></a>
            <a href="#"><span>Giải thưởng</span></a>
            <a href="#"><span>Shop đổi quà</span></a>
        </div>
    </div>
    <button class="close-button" id="close-button">Close Menu</button>
</div><!--End-menu-mobile-->

<div class="container">
    <button class="menu-button" id="open-button"><img src="/_resources/client/skins/images/btn-mobile.png" alt=""/></button>
    <div class="box-top">
        <div class="col-md-6 col-sm-6 col-xs-12"><h1 class="text-logo">LOGO</h1></div>
        <div class="col-md-6 col-sm-6 col-xs-12 text-company">Truy tìm kho báu<span>Nhanh tay rinh quà</span></div>
    </div>
    <nav class="hidden">
        <ul>
            <li><a class="home {{ activeMenu=="index"?"active":"" }}" href="/"></a></li>
            <li><a class="thele {{ activeMenu=="thele"?"active":"" }}" href="/thele"></a></li>
            <li><a class="giaithuong {{ activeMenu=="giaithuong"?"active":"" }}" href="/giaithuong"></a></li>
            <li><a class="shopqua {{ activeMenu=="shopqua"?"active":"" }}" href="/shopqua"></a></li>
        </ul>
    </nav>

    <div>
        <div>
            {{ flash.output() }}
        </div>
        {{ content() }}
    </div>

    <div class="box-bottom">
        <div class="col-sm-6 col-xs-12 text-left">LOGO</div>
        <div class="col-sm-6 col-xs-12 text-right">
            Vấn Tiên S - Bản quyền thuộc về Baidu<br>
            Phát hành bởi đối tác GamePrivateVN<br>
            Giờ làm việc : Sáng 8:00 - 12:00, Chiều : 13:30 - 22:00
        </div>
    </div>

</div><!--End-container-->


<div class="content"></div>

<script type="text/javascript" src="/_resources/client/js/classie.js"></script>
<script type="text/javascript" src="/_resources/client/js/rwdImageMaps.min.js"></script>
<script type="text/javascript" src="/_resources/client/js/script.js"></script>


</body>
</html>