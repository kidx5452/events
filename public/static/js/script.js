$(document).ready(function() {
    //Trigger popup dang nhap
    if(uri == 'dang-nhap' || uri == 'dang-ky'){
        setTimeout(function(){
            $('.bt-dangnhap').trigger('click');
        },100);
    }
    
    /*if(user_login){
        $('.bt-playgame').removeAttr('href');
        $('.bt-playgame').removeAttr('href');
        
        $('.bt-playgame').click(function(){
            alert('Mời bạn quay lại vào lúc 10h ngày 5-10-2014 để chơi game và nhận lại KNB!');
            return false;
        })
        $(".bt-playgame").fancybox({
            autoSize : false,
            type: 'iframe',
            beforeLoad : function() {
                this.width  = 716;
                this.height = 576;
            },
            padding: 0,
        });
    }else{
        $(".bt-playgame").fancybox({padding:2});
    }*/
    $(".bt-dangky, .bt-dangnhap").fancybox({padding:2});
    //Script giao dien
    //Form login, reg chuan xuyen suot web
    if(!user_login){
        $('.bt-dki, .bt-dnhap, .bt-choingay').fancybox();
    }   

    
    $('#pass-rg').keydown(function (e) {
        if (e.keyCode == 13){
            ajaxRegister('#user-rg','#pass-rg','#email-rg');
            setTime('.kq-rg');
        }
    });
    $('#user-login').keydown(function (e) {
        if (e.keyCode == 13){
            ajax_login('#user-login','#pass-login');
            setTime('.kq-login');
        }
    });
    $('#pass-login').keydown(function (e) {
        if (e.keyCode == 13){
            ajax_login('#user-login','#pass-login');
            setTime('.kq-login');
        }
    });
    //End form login, reg chuan

    //Doi mat khau
    $('#change-pass').click(function(e){
        change_password(user_login);
        setTime('.info-change');
    });
    $('#password-old').keydown(function (e) {
        if (e.keyCode == 13){
            change_password(user_login);
            setTime('.info-change');
        }
    });
    $('#password-new').keydown(function (e) {
        if (e.keyCode == 13){
            change_password(user_login);
            setTime('.info-change');
        }
    });
    $('#password1-new').keydown(function (e) {
        if (e.keyCode == 13){
            change_password(user_login);
            setTime('.info-change');
        }
    });
    //End Doi mat khau

    //Thong tin tai khoan
    $('#change-info').click(function(e) {
        update_user(user_login);
        setTime('.chang-info');
    });
    //End Thong tin tai khoan
    // Quen mat khau
    $('#forgetPass').click(function() {
        forgot_password();
        setTime('.mss_u_fg');
    });
    //End Quen mat khau

    //Safe form:
    $('form').submit(function() {
        if (!$(this).attr('onsubmit')) {
            $(this).find('[type="submit"]').prop('disabled', true);
        }
    });
});

function insert_sv_cur(sid,slug,sname){
    $.post(
        root + 'servers/set_ser_cur',
            {
                sid: sid,
                slug : slug,
                sname : sname
            },
            function (result) {
                if (result) {
                    alert(result);
                }
            },'JSON'
    );
}


function change_password(username){
    var email = $('#email').val();
    var oldpass  = $('#password-old').val();
    var newpass  = $('#password-new').val();
    var newpass1 = $('#password1-new').val();
    if (oldpass == '') {
        $('.info-change').html("Hãy nhập mật khẩu cũ");
        $('#password-old').focus();
        return false;
    }
    else if(email == ''){
        $('.info-change').html("Hãy nhập địa chỉ mail đăng ký");
        $('#email').focus();
    }
    else if (newpass == '') {
        $('.info-change').html("Hãy nhập mật khẩu mới");
        $('#password-new').focus();
        return false;
    }
    else if(newpass1 == '' || newpass1 != newpass){
        $('.info-change').html("Nhập lại mật khẩu không khớp");
        $('#password1-new').focus();
        return false;
    }
    else{
        $.post(
            root + 'user/ajax_change_password',
                {
                    username: username,
                    email: email,
                    old_password: oldpass,
                    new_password: newpass,
                },
            function (result) {
                if (result.status == 1) {
                    $('.info-change').html('<font color="blue">'+result.msg+'</font>');
                    $('.infomation input').val('');
                    setTimeout(function(){
                        window.location.href = root+'trang-chu';
                    },1000)
                } else {
                    $('.info-change').html(result.msg);
                }
            },'JSON'
        );
    }
}
function forgot_password(){
    var domain = 'http://magioi.vn';
    var mail_fg = $("#mail_fg").val();
    var username_fg = $("#username_fg").val();
    if (!username_fg) {
        $(".mss_u_fg").html('Bạn chưa điền tên đăng nhập');
        $("#username_fg").focus();
    } else if (!mail_fg) {
        $(".mss_u_fg").html('Bạn chưa điền email');
        $("#mail_fg").focus();
    } else if (validateEmail(mail_fg) == false) {
        $(".mss_u_fg").html('Email không hợp lệ!');
        $("#mail_fg").focus();
    } else {
        $.post(
            root + 'user/ajax_forgot_password',
                {
                    username: username_fg,
                    email: mail_fg,
                    domain: domain,
                },
            function (result) {
                if (result.status == 1) {
                    $('.mss_u_fg').html('<p style="color:blue;">'+result.msg+'</p>');
                    $('.infomation input').val('');
                    setTimeout(function(){
                        window.location.href = root+'trang-chu';
                    },2000)
                } else {
                    $('.mss_u_fg').html(result.msg);
                }
            },'JSON'
        );
    }
}
function update_user(username) {
    var fullname    = $('#fullname').val();
    var birthday     = $('#birthday').val();
    var gender       = $('#gender').val();
    var address      = $('#address').val();
    var cmnd         = $('#cmnd').val();
    var ngaycap_cmnd = $('#time-purvey').val();
    var noicap_cmnd  = $('#province').val();
    var phone        = $('#mobilephone').val();
    if (fullname == '') {
        $('.chang-info').html('Vui lòng nhập tên của bạn');
        $('#fullname').focus();
    }
    else if(cmnd == '' || ngaycap_cmnd == ''){
        $('.chang-info').html("Bạn vui lòng cung cấp thông tin CMND");
        $('#time-purvey').focus();
    }
    else if(noicap_cmnd == 0){
        $('.chang-info').html("Bạn vui lòng cung cấp nơi cấp CMND");
        $('#province').focus();
    }
    else if(is_number(cmnd) == false || (cmnd.length > 0 && cmnd.length !=9)) {
        $('.chang-info').html("Định dạng chứng minh nhân dân không chính xác");
        // $('#cmnd')focus();
    }
    else if(phone == '' || phone.length > 0 && (phone.length < 10 || phone.length > 12) || is_number(phone) == false){
        $('.chang-info').html("Định dạng số điện thoại không đúng");
        // $('#phone')focus();
    }
    else{
        $.post(
            root + 'user/ajax_update_user',
                {
                    username: username,
                    fullname: fullname,
                    birthday: birthday,
                    gender: gender,
                    address: address,
                    cmnd: cmnd,
                    ngaycap_cmnd: ngaycap_cmnd,
                    noicap_cmnd: noicap_cmnd,
                    phone: phone
                },
            function (result) {
                if (result.status == 1) {
                    $('.chang-info span').html('<p style="color:blue;">Cập nhật thông tin thành công</p>');
                    $('.infomation input').val('');
                    setTimeout(function(){
                        window.location.href = root+'trang-chu';
                    },2000)
                } else {
                    $('.chang-info').html(result.msg);
                }
            },'JSON'
        );
    }
}
function validateEmail(sEmail) {
    var filter = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
    if (filter.test(sEmail)) {
        return true;
    }
    else {
        return false;
    }
}

function is_number(s){
    test="0123456789";
    i=0;
    len=s.length;
    if((s.substring(0,1)=='-'||s.substring(0,1)=='+')&&len!=1)
    i=1;
        isnum=true;
    while(i<len&&isnum){
        c=s.substring(i,i+1);
        if(test.indexOf(c,0)==-1)
            isnum=false;
        else
            ++i;
    }
    return isnum;
}
function setTime(kq){
    setInterval(function(){
        $(kq).html("");
    },
    4000);
}


 window.fbAsyncInit = function(){
   FB.init({
      appId: '574749352629484',
      cookie:true,
      status:true, xfbml:true
   });
}


function sharecaption(){

  if(!user_login){
      $('.bt-dangky').trigger('click');
      return false;
  }
  var msg=[];
  msg[1]='Vấn Tiên  WebGame 2.5D' ;
  msg[2]='[Vấn Tiên] Game độc đáo mới ra mắt tại Việt Nam';
  msg[3]='[Vấn Tiên] Trải nghiệm 72 phép biến hình tại Vấn Tiên';
  msg[4]='[Vấn Tiên] Tam giới đại loạn - Bạn có đủ sức tham chiến?';
  msg[5]='[Vấn Tiên] Game Moba ngay trên web - Ngại gì ko thử?';
  msg[6]='[Vấn Tiên] Webgame Vấn Tiên 2.5D - Chơi như game Client.';
  msg[7]='[Vấn Tiên] Siêu Phẩm Chưa Từng Xuất Hiện';

  var img_f=[];  
  img_f[1]='http://vt.gamezvn.com/static/images/home_popup.jpg';
  //img_f[2]='';
  //img_f[3]='';
  //img_f[4]='';
  //img_f[5]='';

   FB.ui({
      method: 'feed',
      name: msg[1],
      link: 'http://vt.gamezvn.com/',
      picture: img_f[1],
      caption: 'Vấn Tiên  WebGame 2.5D',
      description: 'Trải nghiệm ngay webgame hot nhất 2014, và nhận ngay gift code lên đến 1.000.000 vnđ',
      message: 'Bạn đã thử chưa'
   },function(response){
      if (response != "" && response != null && response.post_id) {
         loadgiftcode(response.post_id);
      }
   });
}  


function loadgiftcode(post_id){
    $.fancybox({
        href: '/gift-code/share-fb?id=' + post_id,
        type:'ajax'
    });
}


$(document).ready(function() {
    $.get(
        root + 'servers/popupServer',
          function (result) {
              $('.wap_sl_sv').html(result);
          }
    );
});    

function playGamePop(){
   if(!user_login){
    $('.bt-dangky').trigger('click');
    return false;
   }     

  $('body').scrollTop( 0 );
  $('.overlay_po').height($('body').height());
  $( ".wap_sl_sv" ).animate({
    left: "0%"
  },400);
  $('.overlay_po').toggle('show');
  $('body').toggleClass('overflow-hidden');
}

function close_pop(){
   $( ".wap_sl_sv" ).animate({
    left: "-100%"
  },400);
  $('.overlay_po').toggle('show');
  $('body').toggleClass('overflow-hidden');
}


function loadgiftcode_setup(){
    $.fancybox({
        href:root+'gift/gc_plugin_chrome',
        type:'ajax'
    })
}