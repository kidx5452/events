<section>
    <div class="section-header">
        <ol class="breadcrumb">
            <li class="active">Items</li>
        </ol>

    </div>
    <div class="section-body contain-lg">
        <div class="panel">
            <header class="panel-heading">
                <a href="index" class="btn btn-warning"><i class="fa fa-arrow-circle-left"></i> Back</a>
                <h4>Thông tin items</h4>
            </header>
            <div class="panel-body no-pad">
                <form action="" method="post" enctype="multipart/form-data" class="form-horizontal">
                    <div class="col-md-12">
                        <div class="form-group">
                            <label class="col-md-2 control-label">Name</label>
                            <div class="col-md-8"><input type="text" name="name" value="{{ object.name }}" class="form-control"></div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-2 control-label">Avatar</label>
                            <div class="col-md-8">
                                {% if object.avatar|length >0 %}
                                    <p class="clearfix"><a href="{{ media.host~object.avatar }}" target="_blank"><img width="250" src="{{ media.host~object.avatar }}" alt="Cover Photo"></a></p>
                                {% endif %}
                                <input id="file-0" class="file" type="file" name="avatar" accept="image/*">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-2 control-label">Trạng thái</label>
                            <div class="col-md-8">
                                <div class="radio radio-styled">
                                    <label class="">
                                        <input type="radio" {{ object.status==0?"checked":"" }} value="0" name="status">
                                        <span>Ẩn</span>
                                    </label>
                                    <label class="col-xs-offset-1">
                                        <input type="radio" {{ object.status==1?"checked":"" }} value="1" name="status">
                                        <span>Hiện</span>
                                    </label>
                                </div>

                            </div>
                        </div>

                    </div>

                    <div class="action_area">
                        <button type="submit" class="btn btn-info">Lưu lại</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>