<div class="main-content">
    <img id="map-treasure" usemap="#treasure" style="max-width: 100%; height: auto;"
         src="/_resources/client/skins/images/map.jpg">
    <map name="treasure">
        <area shape="rect" coords="70,95,286,277" data-href="/index/vungdat1" onclick="checklogin(this)"
              class="area-map" id="map1" style="cursor: pointer;" hover-src="/_resources/client/skins/images/map-1.jpg">
        <area shape="rect" coords="306,78,483,343" href="vung-dat-2.html" class="area-map" id="map2"
              style="cursor: pointer;" onclick="" hover-src="/_resources/client/skins/images/map-2.jpg">
        <area shape="rect" coords="511,100,684,346" href="vung-dat-3.html" class="area-map" id="map3"
              style="cursor: pointer;" onclick="" hover-src="/_resources/client/skins/images/map-3.jpg">
    </map>
</div>
<link rel="stylesheet" href="/static/css/account.css">
<div class="modal fade" tabindex="-1" role="dialog" id="myModal">
    <div class="modal-dialog" role="document">
        <div>
            <div class="account">
                <div id="tab-regis">
                    <form action="/index/register" method="post">
                        <div class="title"></div>
                        <div class="kq-rg"></div>
                        <p><span class="ac-acc"></span><input id="username-rg" type="text" placeholder="Tên đăng nhập" name="username" ></p>

                        <p><span class='ac-mail'></span><input id="email-rg" type="text" placeholder="Email" name="email">
                        </p>

                        <p><span class='ac-phone'></span><input id="phone-rg" type="text" placeholder="Phone" name="sdt">
                        </p>

                        <p><span class='ac-pass'></span><input id="password-rg" type="password" placeholder="Mật khẩu" name="password"></p>
                        <!-- <p><input type="checkbox"><label for="Điều khoản đăng ký">Tôi đồng ý với điều khoản đăng ký</label></p> -->
                        <p><input class="btn_accou" value="Đăng ký" type="submit" id="btn-rg"></p>
                    </form>
                </div>
                <div id="tab-login">
                    <form action="/index/auth" method="post">
                        <div class="title"></div>
                        <div class="kq-login"></div>
                        <p><span class="ac-acc"></span><input type="text" name="username" placeholder="Tên đăng nhập" id='user-login'>
                        </p>

                        <p><span class='ac-pass'></span><input type="password" name="password" placeholder="Mật khẩu" id='pass-login'>
                        </p>

                        <p><input class="btn_accou btn_login" type="submit" value="Đăng nhập" id="btn-login"></p>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- /.modal-dialog -->
</div><!-- /.modal -->
<script>
    {% if loginfailed==true %}
    jQuery(document).ready(function(){
        alert("Bạn đã đăng nhập sai thông tin");
        jQuery('#myModal').modal();
    })
    {% endif %}
</script>