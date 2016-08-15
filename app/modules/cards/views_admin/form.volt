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
                <h4>Thông tin thẻ</h4>
            </header>
            <div class="panel-body no-pad">
                <form action="" method="post" enctype="multipart/form-data" class="form-horizontal">
                    <div class="col-md-12">
                        <div class="form-group">
                            <label class="col-md-2 control-label">Mạng</label>
                            <div class="col-md-8">
                                <select name="telco" id="" class="form-control">
                                    <option {{ object.level=='viettel'?"selected":"" }} value="viettel">Viettel</option>
                                    <option {{ object.level=='vinaphone'?"selected":"" }} value="vinaphone">Vinaphone</option>
                                    <option {{ object.level=='mobifone'?"selected":"" }} value="mobifone">Mobifone</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-2 control-label">Mã thẻ</label>
                            <div class="col-md-8"><input type="text" name="codes" value="{{ object.codes }}" class="form-control"></div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-2 control-label">Seri</label>
                            <div class="col-md-8"><input type="text" name="seri" value="{{ object.seri }}" class="form-control"></div>
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