<section>
    <div class="section-header">
        <ol class="breadcrumb">
            <li class="active">Thẻ cào</li>
        </ol>

    </div>
    <div class="section-body contain-lg">
        <div class="panel">
            <div class="panel-heading">
                <h4>Danh sách thẻ</h4>
                <a href="form" class="btn btn-success">Thêm mới</a>
            </div>
            <div class="panel-body">
                <table class="table table-bordered">
                    <thread>
                        <tr>
                            <th>ID</th>
                            <th>Telco</th>
                            <th>Mã thẻ</th>
                            <th>Seri</th>
                            <th>Trạng thái</th>
                            <th>Action</th>
                        </tr>
                    </thread>
                    <tbody>
                    {% for item in listdata %}
                        <tr>
                            <td>{{ item.id }}</td>
                            <td>
                                {{ item.telco }}
                            </td>
                            <td>{{ item.codes }}</td>
                            <td>{{ item.seri }}</td>
                            <td>{{ item.status }}</td>
                            <td>
                                <a class="btn btn-sm btn-info" href="form?id={{ item.id }}"><i class="fa fa-pencil"></i> Sửa</a>
                                <a class="btn btn-sm btn-warning" onclick="return confirm('Are you sure')" href="delete?id={{ item.id }}"><i class="fa fa-times"></i> Xóa</a>
                            </td>
                        </tr>
                    {% endfor %}
                    </tbody>
                </table>
                {% include "layout/paging.volt" %}
            </div>
        </div>
    </div><!--end .section-body -->
</section>