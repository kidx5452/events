<section>
    <div class="section-header">
        <ol class="breadcrumb">
            <li class="active">Items</li>
        </ol>

    </div>
    <div class="section-body contain-lg">
        <div class="panel">
            <div class="panel-heading">
                <h4>Danh sách items</h4>
                <a href="form" class="btn btn-success">Thêm mới</a>
            </div>
            <div class="panel-body">
                <table class="table table-bordered">
                    <thread>
                        <tr>
                            <th>ID</th>
                            <th>Avatar</th>
                            <th>Name</th>
                            <th>Action</th>
                        </tr>
                    </thread>
                    <tbody>
                    {% for item in listdata %}
                        <tr>
                            <td>{{ item.id }}</td>
                            <td>
                                <img width="96" src="{{ media.host~item.avatar }}" alt="Cover Photo">
                            </td>
                            <td>{{ item.name }}</td>
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