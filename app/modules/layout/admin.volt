<!DOCTYPE html>
<html lang="en">
<head>
    <title>Material Admin - Colors</title>

    <!-- BEGIN META -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="keywords" content="your,keywords">
    <meta name="description" content="Short explanation about this website">
    <!-- END META -->

    <!-- BEGIN STYLESHEETS -->
    <link href='http://fonts.googleapis.com/css?family=Roboto:300italic,400italic,300,400,500,700,900' rel='stylesheet' type='text/css'/>
    <link type="text/css" rel="stylesheet" href="/_resources/admin/css/modules/materialadmin/css/theme-1/bootstrap.css~1422823207.css"/>

    <link type="text/css" rel="stylesheet" href="/_resources/admin/css/modules/materialadmin/css/theme-1/materialadmin.css~1422823211.css"/>

    <link type="text/css" rel="stylesheet" href="/_resources/admin/css/modules/materialadmin/css/theme-1/font-awesome.min.css~1422823207.css"/>

    <link type="text/css" rel="stylesheet" href="/_resources/admin/css/modules/materialadmin/css/theme-1/material-design-iconic-font.min.css~1422823208.css"/>

    <!-- END STYLESHEETS -->


    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script type="text/javascript" src="/_resources/admin/js/modules/materialadmin/libs/utils/html5shiv.js~1422823601"></script>
    <script type="text/javascript" src="/_resources/admin/js/modules/materialadmin/libs/utils/respond.min.js~1422823601"></script>
    <![endif]-->
    <script src="/_resources/admin/js/modules/materialadmin/libs/jquery/jquery-1.11.2.min.js"></script>
    <script src="/_resources/admin/js/modules/materialadmin/libs/jquery/jquery-migrate-1.2.1.min.js"></script>
    <script src="/_resources/admin/js/modules/materialadmin/libs/bootstrap/bootstrap.min.js"></script>

</head>


<body class="menubar-hoverable header-fixed menubar-pin">
<!-- BEGIN HEADER-->
<header id="header">


    <div class="headerbar">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="headerbar-left">
            <ul class="header-nav header-nav-options">
                <li class="header-nav-brand">
                    <div class="brand-holder">
                        <a href="../dashboards/dashboard.html">
                            <span class="text-lg text-bold text-primary">EVENT VẤN TIÊN</span>
                        </a>
                    </div>
                </li>
                <li>
                    <a class="btn btn-icon-toggle menubar-toggle" data-toggle="menubar" href="javascript:void(0);">
                        <i class="fa fa-bars"></i>
                    </a>
                </li>
            </ul>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="headerbar-right">
            <ul class="header-nav header-nav-options">

            </ul><!--end .header-nav-options -->
            <ul class="header-nav header-nav-profile">
                <li class="dropdown">
                    <a href="javascript:void(0);" class="dropdown-toggle ink-reaction" data-toggle="dropdown">
                        <img src="/_resources/admin/img/modules/materialadmin/avatar1.jpg~1422538623.jpg" alt=""/>
					<span class="profile-info">
						Hello
						<small>Administrator</small>
					</span>
                    </a>
                    <ul class="dropdown-menu animation-dock">
                        <li class="dropdown-header">Config</li>
                        <li><a href="../pages/profile.html">My profile</a></li>
                        <li><a href="../pages/blog/post.html"><span class="badge style-danger pull-right">16</span>My blog</a></li>
                        <li><a href="../pages/calendar.html">My appointments</a></li>
                        <li class="divider"></li>
                        <li><a href="../pages/locked.html"><i class="fa fa-fw fa-lock"></i> Lock</a></li>
                        <li><a href="../pages/login.html"><i class="fa fa-fw fa-power-off text-danger"></i> Logout</a></li>
                    </ul><!--end .dropdown-menu -->
                </li><!--end .dropdown -->
            </ul><!--end .header-nav-profile -->

        </div><!--end #header-navbar-collapse -->
    </div>
</header>
<!-- END HEADER-->

<!-- BEGIN BASE-->
<div id="base">
    <!-- BEGIN OFFCANVAS LEFT -->
    <div class="offcanvas">
    </div><!--end .offcanvas-->
    <!-- END OFFCANVAS LEFT -->

    <!-- BEGIN CONTENT-->
    <div id="content">
        <div class="col-xs-12">{{ flash.output() }}</div>
        {{ content() }}
    </div><!--end #content-->
    <!-- END CONTENT -->

    <!-- BEGIN MENUBAR-->
    <div id="menubar" class="menubar-inverse ">
        <div class="menubar-fixed-panel">
            <div>
                <a class="btn btn-icon-toggle btn-default menubar-toggle" data-toggle="menubar" href="javascript:void(0);">
                    <i class="fa fa-bars"></i>
                </a>
            </div>
            <div class="expanded">
                <a href="../dashboards/dashboard.html">
                    <span class="text-lg text-bold text-primary ">MATERIAL&nbsp;ADMIN</span>
                </a>
            </div>
        </div>
        <div class="menubar-scroll-panel">
            <!-- BEGIN MAIN MENU -->


            <ul id="main-menu" class="gui-controls">
                <!-- BEGIN DASHBOARD -->
                <li class="{{ activeMenu=="index"?"active expanded":"" }}">
                    <a href="/index_admin/index">
                        <div class="gui-icon"><i class="md md-home"></i></div>
                        <span class="title">Home</span>
                    </a>
                </li><!--end /menu-li -->
                <!-- END DASHBOARD -->

                <!-- BEGIN EMAIL -->
                <li class="{{ activeMenu=="giaithuong"?"active expanded":"" }}">
                    <a href="/giaithuong_admin/index">
                        <div class="gui-icon"><i class="md md-email"></i></div>
                        <span class="title">Giải thưởng</span>
                    </a>
                </li><!--end /menu-li -->
                <!-- END EMAIL -->

                <!-- BEGIN DASHBOARD -->
                <li class="{{ activeMenu=="thele"?"active expanded":"" }}">
                    <a href="/thele_admin/index">
                        <div class="gui-icon"><i class="md md-web"></i></div>
                        <span class="title">Thể lệ</span>
                    </a>
                </li><!--end /menu-li -->
                <!-- END DASHBOARD -->

                <!-- BEGIN UI -->
                <li>
                    <a href="/items_admin/index">
                        <div class="gui-icon"><i class="fa fa-puzzle-piece fa-fw"></i></div>
                        <span class="title">Items</span>
                    </a>
                </li><!--end /menu-li -->
                <!-- END UI -->

            </ul><!--end .main-menu -->
            <!-- END MAIN MENU -->

            <div class="menubar-foot-panel">
                <small class="no-linebreak hidden-folded">
                    <span class="opacity-75">Copyright &copy; 2016</span> <strong>Vivi</strong>
                </small>
            </div>
        </div><!--end .menubar-scroll-panel-->
    </div><!--end #menubar-->
    <!-- END MENUBAR -->



</div><!--end #base-->
<!-- END BASE -->


<!-- BEGIN JAVASCRIPT -->
<script src="/_resources/admin/js/modules/materialadmin/libs/spin.js/spin.min.js"></script>
<script src="/_resources/admin/js/modules/materialadmin/libs/autosize/jquery.autosize.min.js"></script>
<script src="/_resources/admin/js/modules/materialadmin/libs/nanoscroller/jquery.nanoscroller.min.js"></script>
<script src="/_resources/admin/js/modules/materialadmin/core/cache/63d0445130d69b2868a8d28c93309746.js"></script>
<script src="/_resources/admin/js/modules/materialadmin/core/demo/Demo.js"></script>

<!-- END JAVASCRIPT -->


</body>
</html>
