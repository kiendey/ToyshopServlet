
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- Bootstrap CSS -->


<main id="main" class="main">

    <div class="pagetitle">
        <h1>Quản lý tài khoản Khách hàng</h1>
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="homepage">Màn hình chính</a></li>
                <li class="breadcrumb-item">Khách hàng</li>
                <li class="breadcrumb-item active">Khóa/Mở tài khoản</li>
            </ol>
        </nav>
    </div><!-- End Page Title -->

    <section class="section">
        <div class="row">
            <div class="col-lg-12">

                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Danh sách tài khoản khách hàng</h5>
                        <hr>

                        <!-- Filter Dropdown and Search Bar Wrapper -->
                        <div class="table-controls-wrapper d-flex justify-content-end align-items-center mb-3">
                            <div class="dropdown me-2" id="statusFilterDropdownContainer">
                                <button class="btn btn-outline-secondary btn-sm dropdown-toggle" type="button" id="statusFilterButton"
                                        data-bs-toggle="dropdown" aria-expanded="false">
                                    Tất cả
                                </button>
                                <ul class="dropdown-menu" aria-labelledby="statusFilterButton">
                                    <li><a class="dropdown-item filter-link active" href="#" data-status="all">Tất cả</a></li>
                                    <li><a class="dropdown-item filter-link" href="#" data-status="active">Hoạt động</a></li>
                                    <li><a class="dropdown-item filter-link" href="#" data-status="locked">Đã khóa</a></li>
                                </ul>
                            </div>
                        </div>

                        <!-- Table with stripped rows -->
                        <table class="table datatable">
                            <thead>
                            <tr>
                                <th scope="col" data-sortable="false"></th>
                                <th scope="col" data-sortable="false">Tên Khách Hàng</th>
                                <th scope="col" data-sortable="false">Email</th>
                                <th scope="col" data-sortable="false">Trạng thái</th>
                                <th scope="col" data-sortable="false">Hành động</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <th scope="row">1</th>
                                <td>Nguyễn Văn A</td>
                                <td>nguyenvana@example.com</td>
                                <td><i class="bi bi-unlock-fill text-success fs-5 status-icon" title="Hoạt động"></i> <span
                                        class="status-text">Hoạt động</span></td>
                                <td>
                                    <button type="button" class="btn btn-danger btn-sm action-button action-lock"
                                            title="Khóa tài khoản"><i class="bi bi-lock-fill"></i></button>
                                </td>
                            </tr>
                            <tr>
                                <th scope="row">2</th>
                                <td>Trần Thị B</td>
                                <td>tranthib@example.com</td>
                                <td><i class="bi bi-lock-fill text-danger fs-5 status-icon" title="Đã khóa"></i> <span
                                        class="status-text">Đã khóa</span></td>
                                <td>
                                    <button type="button" class="btn btn-success btn-sm action-button action-unlock"
                                            title="Mở khóa tài khoản"><i class="bi bi-unlock-fill"></i></button>
                                </td>
                            </tr>
                            <tr>
                                <th scope="row">3</th>
                                <td>Lê Văn C</td>
                                <td>levanc@example.com</td>
                                <td><i class="bi bi-unlock-fill text-success fs-5 status-icon" title="Hoạt động"></i> <span
                                        class="status-text">Hoạt động</span></td>
                                <td>
                                    <button type="button" class="btn btn-danger btn-sm action-button action-lock"
                                            title="Khóa tài khoản"><i class="bi bi-lock-fill"></i></button>
                                </td>
                            </tr>
                            <tr>
                                <th scope="row">4</th>
                                <td>Phạm Thị D</td>
                                <td>phamthid@example.com</td>
                                <td><i class="bi bi-unlock-fill text-success fs-5 status-icon" title="Hoạt động"></i> <span
                                        class="status-text">Hoạt động</span></td>
                                <td>
                                    <button type="button" class="btn btn-danger btn-sm action-button action-lock"
                                            title="Khóa tài khoản"><i class="bi bi-lock-fill"></i></button>
                                </td>
                            </tr>
                            <tr>
                                <th scope="row">5</th>
                                <td>Hoàng Văn E</td>
                                <td>hoangvane@example.com</td>
                                <td><i class="bi bi-lock-fill text-danger fs-5 status-icon" title="Đã khóa"></i> <span
                                        class="status-text">Đã khóa</span></td>
                                <td>
                                    <button type="button" class="btn btn-success btn-sm action-button action-unlock"
                                            title="Mở khóa tài khoản"><i class="bi bi-unlock-fill"></i></button>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                        <!-- End Table with stripped rows -->

                    </div>
                </div>

            </div>
        </div>
    </section>

</main><!-- End #main -->

<style>

    /* Căn lề trái cho nội dung trong các ô của bảng quản lý tài khoản */
    .datatable td,
    .datatable th {
        text-align: left;
        vertical-align: middle;
        /* Giữ căn giữa theo chiều dọc */
    }

    /* Căn giữa cho cột Hành động nếu muốn */
    .datatable th:last-child,
    .datatable td:last-child {
        text-align: center;
    }
</style>

<script>
    document.addEventListener('DOMContentLoaded', () => {
        const actionButtons = document.querySelectorAll('.action-button');
        const tableInstance = document.querySelector('.datatable');

        actionButtons.forEach(button => {
            button.addEventListener('click', function () {
                const row = this.closest('tr');
                const statusIcon = row.querySelector('.status-icon');
                const statusText = row.querySelector('.status-text');

                if (this.classList.contains('action-lock')) {
                    statusIcon.classList.remove('bi-unlock-fill', 'text-success');
                    statusIcon.classList.add('bi-lock-fill', 'text-danger');
                    statusIcon.title = 'Đã khóa';
                    if (statusText) statusText.textContent = 'Đã khóa';

                    this.classList.remove('btn-danger', 'action-lock');
                    this.classList.add('btn-success', 'action-unlock');
                    this.title = 'Mở khóa tài khoản';
                    this.innerHTML = '<i class="bi bi-unlock-fill"></i>';
                } else if (this.classList.contains('action-unlock')) {
                    statusIcon.classList.remove('bi-lock-fill', 'text-danger');
                    statusIcon.classList.add('bi-unlock-fill', 'text-success');
                    statusIcon.title = 'Hoạt động';
                    if (statusText) statusText.textContent = 'Hoạt động';

                    this.classList.remove('btn-success', 'action-unlock');
                    this.classList.add('btn-danger', 'action-lock');
                    this.title = 'Khóa tài khoản';
                    this.innerHTML = '<i class="bi bi-lock-fill"></i>';
                }
            });
        });

        // Filter Dropdown Logic
        const filterDropdownButton = document.getElementById('statusFilterButton');
        const filterLinks = document.querySelectorAll('#statusFilterDropdownContainer .filter-link');

        function applyFilters() {
            const activeFilterLink = document.querySelector('#statusFilterDropdownContainer .filter-link.active');
            if (!activeFilterLink) return;

            const filterStatus = activeFilterLink.getAttribute('data-status');
            const tableRows = tableInstance ? tableInstance.querySelectorAll('tbody tr') : [];

            tableRows.forEach(row => {
                const statusIcon = row.querySelector('.status-icon');
                let rowVisible = false;

                if (filterStatus === 'all') {
                    rowVisible = true;
                } else if (statusIcon) {
                    if (filterStatus === 'active' && statusIcon.classList.contains('text-success')) {
                        rowVisible = true;
                    } else if (filterStatus === 'locked' && statusIcon.classList.contains('text-danger')) {
                        rowVisible = true;
                    }
                }
                row.style.display = rowVisible ? '' : 'none';
            });
        }

        filterLinks.forEach(link => {
            link.addEventListener('click', function (e) {
                e.preventDefault();
                filterLinks.forEach(l => l.classList.remove('active'));
                this.classList.add('active');
                if (filterDropdownButton) filterDropdownButton.textContent = this.textContent;
                applyFilters();
            });
        });
    });
</script>