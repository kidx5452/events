<div class="main-content radius">
    <h1 class="title-game">VÙNG ĐẤT 2</h1>

    <ul class="tabs">
        <li class="tab-link current" data-tab="tab-1">Bắt đầu chơi</li>
        <li class="tab-link" data-tab="tab-2">Nhận lượt</li>
        <li class="tab-link" data-tab="tab-3">Lịch sử</li>
    </ul>
    <div>
        <marquee class="txt-marquee">{{ nguoitrungthuong }}</marquee>
        <div class="row">
            <div class="col-md-6 col-sm-6 col-xs-6 txt-ltg">Lượt tham gia: <span>{{ userobject.count_play }}</span>
            </div>
            <div class="col-md-6 col-sm-6 col-xs-6 txt-dsm">Điểm sức mạnh: <span>{{ userobject.mypointevent }}</span>
            </div>
        </div>

        <div class="txt-nhap">Vui lòng <a href="javascript:void(0)" data-toggle="modal" data-target="#idnhanluot">nhập
                thông tin</a> để tham gia chương trình
        </div>
    </div>
    <div id="tab-1" class="tab-content current">
        <div class="form-group">
            <div class="input-group">
                <form action="" id="formdoi" method="post">
                    <input type="hidden" name="doidiem" value="1">
                    <input type="text" name="turn" placeholder="1 lượt = {{ pointv }} điểm" class="input-mp">

                    <div class="btn-mp-addon"><a onclick="jQuery('#formdoi').submit()">Đổi Ngay</a></div>
                </form>
            </div>
        </div>

        <div class="bg_quayso">
            {% if itemRecv is not empty %}
                <div class="modal fade" id="idnhanthuong" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                    <div class="modal-dialog modal-nhanthuong" role="document">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"></button>
                        <div class="body-nt">
                            <h2>CHÚC MỪNG BẠN ĐÃ NHẬN ĐƯỢC</h2>
                            <img src="/{{ itemRecv.avatar }}" alt=""/>
                        </div>
                    </div>
                </div><!-- End-Modal-nhan-thuong -->
                <script>
                    jQuery('#idnhanthuong').modal("show");
                </script>
            {% endif %}
            <div class="bg-all-items">
                <ul class="row">
                    {% for item in listitem %}
                        <li class="col-md-4 col-sm-4 col-xs-6"><img src="/{{ item.avatar }}" alt=""/></li>
                    {% endfor %}
                </ul>
            </div>
            <div class="btn-vantien">
                <form action="" id="daokhobau" method="post">
                    <input type="hidden" name="daokhobau" value="1">
                    <img alt="Tham gia" style="cursor: pointer;" src="/_resources/client/skins/images/button_dao.png"
                         onclick="jQuery('#daokhobau').submit()">
                </form>
            </div>
        </div>
    </div>
    <!-- end-tab1-->

    <div id="tab-2" class="tab-content">
        <div>
            <div class="col-md-6 col-sm-6 col-xs-12 bg-lthe">
                10.000 VND = 100.000 điểm sức mạnh<br>
                100.000 điểm sức mạnh = 1 Lượt tham gia<br>
                100.000 điểm sức mạnh = 80.000 KNB
            </div>
            <div class="col-md-6 col-sm-6 col-xs-12 bg-rthe">
                <form action="/index/napthe" method="post">
                    <input type="hidden" name="backurl" value="/index/vungdat2">
                    <ul>
                        <li>
                            <span>Loại thẻ</span>
                            <select class="select-the" name="mang">
                                <option value="VIETEL">Viettel</option>
                                <option value="MOBI">Mobifone</option>
                                <option value="VINA">Vinaphone</option>
                            </select>
                        </li>
                        <li>
                            <span>Mã thẻ</span>
                            <input placeholder="Mã thẻ" class="input-the" type="text" name="pin">
                        </li>
                        <li>
                            <span>Số seri</span>
                            <input placeholder="Số seri" class="input-the" type="text" name="seri">
                        </li>
                        <li>
                            <span>&nbsp;</span>
                            Liên hệ GM: Yahoo: ads_privatevn
                        </li>
                        <li>
                            <span>&nbsp;</span>
                            <input class="btn-the" type="submit" value="Nạp thẻ">
                        </li>
                    </ul>
                </form>
            </div>
        </div>
    </div>
    <!-- end-tab2-->

    <div id="tab-3" class="tab-content">
        <div class="txt-lichsu">LỊCH SỬ THAM GIA</div>
        <div class="table-responsive-vertical shadow-z-1">
            <table id="table" class="table table-hover table-mc-light-blue">
                <thead>
                <tr>
                    <th>Thời gian</th>
                    <th>Phần thưởng</th>
                </tr>
                </thead>
                <tbody>
                {% for item in history %}
                    <tr>
                        <td>{{ date("d-m-Y H:i:s",item.create_at) }}</td>
                        <td>1 {{ item.Items.name }}
                            {% if item.card_id>0 %}
                                <p onclick="jQuery(this).next().show()"><small><a href="javascript:void(0)">Bấm vào đây để xem thông tin thẻ</a></small></p>
                                <div style="display: none;text-align: left">
                                    <p>Mạng: {{ item.Cards.telco|upper }}</p>
                                    <p>Mã thẻ: {{ item.Cards.codes }}</p>
                                    <p>Seri: {{ item.Cards.seri }}</p>
                                </div>
                            {% endif %}
                        </td>
                    </tr>
                {% endfor %}
                </tbody>
            </table>
        </div>

        <div class="txt-tong">TỔNG {{ history_count }} LẦN THAM GIA</div>

        <div class="txt-lichsu">Lịch sử nạp thẻ</div>
        <div class="table-responsive-vertical shadow-z-1">
            <table id="table" class="table table-hover table-mc-light-blue">
                <thead>
                <tr>
                    <th>Thời gian</th>
                    <th>Mệnh giá</th>
                </tr>
                </thead>
                <tbody>
                {% for item in chargehistory %}
                    <tr>
                        <td>{{ date("d-m-Y H:i:s",item.create_at) }}</td>
                        <td>{{ item.amount }} đ</td>
                    </tr>
                {% endfor %}
                </tbody>
            </table>
        </div>

    </div>
    <!-- end-tab3-->

</div><!-- end -->
<div class="modal fade" id="idnhanluot" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog modal-dk" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"></button>
                <h4 class="modal-title" id="myModalLabel">Nhận lượt</h4>

                <p>Nhập thông tin địa chỉ</p>
            </div>
            <div class="modal-body">
                <form class="bv-form" action="" method="post">
                    <ul class="form-gui">
                        <li><label>Họ tên</label><input class="input-d" type="text" name="fullname"
                                                        value="{{ userobject.fullname }}" placeholder="Nguyễn Văn A">
                        </li>
                        <li><label>Số CMND</label><input class="input-d" type="text" name="cmnd"
                                                         value="{{ userobject.cmnd }}" placeholder="1118463.."></li>
                        <li><label>Số điện thoại</label><input class="input-d" type="text" name="sdt"
                                                               value="{{ userobject.sdt }}" placeholder="0988xxxxxx">
                        </li>
                        <li><label>Email</label><input class="input-d" type="text" value="{{ userobject.email }}"
                                                       readonly placeholder="nguyenvana@gmail.com"></li>
                        <li><label>Đia chỉ</label><input class="input-d" type="text" name="address"
                                                         value="{{ userobject.address }}"
                                                         placeholder="Số 14, Pháo đài "></li>
                        <li><input type="submit" class="btnform" name="saveinfo" value="Xác nhận"></li>
                    </ul>
                </form>
            </div>
        </div>
    </div>
</div><!-- End-Modal-nhanluot -->
<link rel="stylesheet" href="/_resources/client/skins/table.css" type="text/css" media="all">
<script type="text/javascript" src="/_resources/client/js/login.js"></script>