<div class="main-content radius">
    <h1 class="title-game">Shop đổi quà</h1>

    <ul class="tabs">
        <li class="tab-linkt" data-tab="tab-1">Thể lệ</li>
        <li class="tab-link current" data-tab="tab-2">Đổi quà</li>
        <li class="tab-link" data-tab="tab-3">Lịch sử</li>
    </ul>

    <div id="tab-1" class="tab-content">
        {{ thele.contents }}
    </div><!-- end-tab1-->

    <div id="tab-2" class="tab-content current">
        <div class="bg-box-doiqua">
            <ul class="block-doiqua">
                {% for item in shopqua %}
                <li>
                    {% if item['hasitem']==1 %}
                        <img src="/{{ item['item']['avatar'] }}" alt="">
                    {% else %}
                    <a href="#">{{ item['name'] }}</a>
                    {% endif %}
                </li>
                {% endfor %}
            </ul>
        </div>
        <div class="box-dq">
            <img class="img-absolute" src="images/iphone.jpg" alt=""/>
            <a href="javascript:void(0)" onclick="jQuery('#loidoiqua').show()"><img src="/_resources/client/skins/images/btn-doiqua.png" alt=""/></a>
            <p class="error" id="loidoiqua" style="display: none">Lỗi "bạn chưa có đủ mảnh ghép"</p>
        </div>
    </div><!-- end-tab2-->

    <div id="tab-3" class="tab-content">
        <marquee class="txt-marquee">Chúc mừng khách hàng Đào Việt Dũng, chủ tài khoản ************988 đã đào trúng Pin sạc dự phòng Xiaomi 10,000 mAh  ---  Chúc mừng khách hàng Trần Nguyên Công, chủ tài khoản ************ng1123 đã đào trúng Pin sạc dự phòng Xiaomi 10,000 mAh</marquee>
        <div class="row">
            <div class="col-md-6 col-sm-6 col-xs-6 txt-ltg">Lượt tham gia: <span>{{ userobject.count_play }}</span></div>
            <div class="col-md-6 col-sm-6 col-xs-6 txt-dsm">Điểm sức mạnh: <span>{{ userobject.mypointevent }}</span></div>
        </div>


        <div class="txt-lichsu">LỊCH SỬ đổi quà</div>

        <div class="row">
            <div class="col-md-6 col-sm-6 col-xs-6 txt-lstg txt-black">Thời gian</div>
            <div class="col-md-6 col-sm-6 col-xs-6 txt-lstg txt-black">Phần thưởng</div>
        </div>
        <div class="txt-tong">Bạn chưa có lần đổi quà nào</div>

    </div><!-- end-tab3-->

</div>