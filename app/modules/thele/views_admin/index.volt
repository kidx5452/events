<section>
    <div class="section-header">
        <ol class="breadcrumb">
            <li class="active">Thể lệ</li>
        </ol>

    </div>
    <div class="section-body contain-lg">
        <!-- BEGIN INTRO -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="text-primary">Thông tin</h1>
            </div><!--end .col -->
            <div class="col-lg-8">
                <article class="margin-bottom-xxl">
                    <p class="lead">
                        Dữ liệu này sẽ được hiển thị lên phía client. Hãy chắc chắn những dữ liệu này là chính xác
                    </p>
                </article>
            </div><!--end .col -->
        </div><!--end .row -->
        <!-- END INTRO -->

        <!-- BEGIN BASIC ELEMENTS -->
        <div class="row">
            <div class="col-lg-12">
                <h4>Basic elements</h4>
            </div><!--end .col -->
            <div class="col-lg-3 col-md-4">
                <article class="margin-bottom-xxl">
                    <ul class="list-divided">
                        <li>
                            Chỉnh sửa nội dung và bấm <b>Save</b> để lưu
                        </li>
                    </ul>
                </article>
            </div><!--end .col -->
            <div class="col-lg-offset-1 col-md-8 col-sm-6">
                <div class="card">
                    <div class="card-body">
                        <form class="form" action="" method="post">
                            <input type="hidden" name="key" value="thele">
                            <div class="form-group">
                                <textarea name="contents" id="contents" class="form-control" rows="3" placeholder="">{{ object.contents }}</textarea>
                                <label for="contents">Nội dung</label>
                            </div>
                            <div class="form-group">
                                <button class="btn btn-success" type="submit">Save</button>
                            </div>
                        </form>
                    </div><!--end .card-body -->
                </div><!--end .card -->
            </div><!--end .col -->
        </div><!--end .row -->
        <!-- END BASIC ELEMENTS -->


    </div><!--end .section-body -->
</section>