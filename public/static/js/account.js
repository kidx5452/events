
function ajaxRegister(){
    var username_reg = $("#username-rg").val();
    var password_reg = $("#password-rg").val();
    var email_reg = $("#email-rg").val();
    var phone_reg = $("#phone-rg").val();

    if (!email_reg) {
        $(".kq-rg").html('Vui lòng nhập địa chỉ Email');
    } 
    else if (!username_reg) {
        $(".kq-rg").html('Vui lòng nhập tên đăng nhập');
    }
    else if (!username_reg.match(/[a-zA-Z0-9_]+/)) {
        $(".kq-rg").html('Tài khoản ko được có ký tự đặc biệt');
    }
    else if (!phone_reg) {
        $(".kq-rg").html('Vui lòng nhập số điện thoại');
    }
    else if (!password_reg) {
        $(".kq-rg").html('Vui lòng nhập mật khẩu!');
    }else {
        $.post(
            root + 'user/ajax_register.php',
            {
                password : password_reg,
                username : username_reg,
                email : email_reg,
                phone : phone_reg
            },
            function (result) {
              if(result.status){
                $('.kq-rg').html("Đăng kí thành công");
                setTimeout(function(){
                	if (document.body.classList.contains('intro')) {
                		window.location.href = '/choi-game/?s=' + document.body.id;
                	} else {
                  		window.location.href= root + uri;
                	}
                },500);
              }else{
                  $(".kq-rg").html(result.msg);
              } 
            },
            'JSON'
              
        );
    }
  }


  function ajax_login() {
    var username = $("#user-login").val();
    var password = $("#pass-login").val();

    var remember = 1;
    if (!username) {
        $('.kq-login').html("Vui lòng nhập tên đăng nhập");
        $("#user-login").focus();
    } else if (!password) {
        $('.kq-login').html("Vui lòng nhập mật khẩu");
        $("#pass-login").focus();
    }
    else
    {
        $.post(
            root + 'user/ajax_login.php',
            {
                password : password,
                username : username,
                remember : remember
            },
            function (result){                
                if(result.status){
                  $('.kq-login').html("Đăng nhập thành công");
                   setTimeout(function(){
                   	if (document.body.classList.contains('intro')) {
                		window.location.href = '/choi-game/?s=' + document.body.id;
                	} else {
                  		window.location.href= root + uri;
                	}
                  },500);
                }
                else{
                    $('.kq-login').html(result.msg);
                }
            },
            'JSON'
        );
    }
}