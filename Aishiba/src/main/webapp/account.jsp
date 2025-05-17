
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<main id="main" class="main">

    <div class="pagetitle">
        <h1>Quản lý tài khoản Khách hàng</h1>
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="index.html">Màn hình chính</a></li>
                <li class="breadcrumb-item">Khách hàng</li>
                <li class="breadcrumb-item active">Khóa/Mở tài khoản</li>
            </ol>
        </nav>
    </div><!-- End Page Title -->

    <section class="section dashboard">
        <div class="row justify-content-center align-items-stretch g-4">
            <!-- Tổng số tài khoản -->
            <div class="col-lg-4 col-md-6 mb-4">
                <div class="stat-modern-card stat-total h-100">
                    <div class="stat-modern-icon-bg">
                        <i class="bi bi-people"></i>
                    </div>
                    <div class="stat-modern-content">
                        <div class="stat-modern-title">Tổng số tài khoản</div>
                        <div class="stat-modern-number" id="stat-total">250</div>
                        <div class="stat-modern-desc">Tài khoản</div>
                    </div>
                </div>
            </div>
            <!-- Tài khoản hoạt động -->
            <div class="col-lg-4 col-md-6 mb-4">
                <div class="stat-modern-card stat-active h-100">
                    <div class="stat-modern-icon-bg">
                        <i class="bi bi-person-check-fill"></i>
                    </div>
                    <div class="stat-modern-content">
                        <div class="stat-modern-title">Tài khoản hoạt động</div>
                        <div class="stat-modern-number" id="stat-active">180</div>
                        <div class="stat-modern-desc">Đang hoạt động</div>
                    </div>
                </div>
            </div>
            <!-- Tài khoản bị khóa -->
            <div class="col-lg-4 col-md-6 mb-4">
                <div class="stat-modern-card stat-locked h-100">
                    <div class="stat-modern-icon-bg">
                        <i class="bi bi-person-x-fill"></i>
                    </div>
                    <div class="stat-modern-content">
                        <div class="stat-modern-title">Tài khoản bị khóa</div>
                        <div class="stat-modern-number" id="stat-locked">70</div>
                        <div class="stat-modern-desc">Bị khóa</div>
                    </div>
                </div>
            </div>
        </div>
    </section>

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
                                <button class="btn btn-outline-secondary btn-sm dropdown-toggle" type="button"
                                        id="statusFilterButton" data-bs-toggle="dropdown" aria-expanded="false">
                                    Tất cả
                                </button>
                                <ul class="dropdown-menu" aria-labelledby="statusFilterButton">
                                    <li><a class="dropdown-item filter-link active" href="#"
                                           data-status="all">Tất
                                        cả</a></li>
                                    <li><a class="dropdown-item filter-link" href="#" data-status="active">Hoạt
                                        động</a></li>
                                    <li><a class="dropdown-item filter-link" href="#" data-status="locked">Đã
                                        khóa</a></li>
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
                                <td><i class="bi bi-unlock-fill text-success fs-5 status-icon"
                                       title="Hoạt động"></i> <span class="status-text">Hoạt động</span>
                                </td>
                                <td>
                                    <button type="button"
                                            class="btn btn-danger btn-sm action-button action-lock"
                                            title="Khóa tài khoản"><i class="bi bi-key-fill"></i></button>
                                </td>
                            </tr>
                            <tr>
                                <th scope="row">2</th>
                                <td>Trần Thị B</td>
                                <td>tranthib@example.com</td>
                                <td><i class="bi bi-lock-fill text-danger fs-5 status-icon"
                                       title="Đã khóa"></i>
                                    <span class="status-text">Đã khóa</span>
                                </td>
                                <td>
                                    <button type="button"
                                            class="btn btn-success btn-sm action-button action-unlock"
                                            title="Mở khóa tài khoản"><i class="bi bi-key-fill"></i></button>
                                </td>
                            </tr>
                            <tr>
                                <th scope="row">3</th>
                                <td>Lê Văn C</td>
                                <td>levanc@example.com</td>
                                <td><i class="bi bi-unlock-fill text-success fs-5 status-icon"
                                       title="Hoạt động"></i> <span class="status-text">Hoạt động</span>
                                </td>
                                <td>
                                    <button type="button"
                                            class="btn btn-danger btn-sm action-button action-lock"
                                            title="Khóa tài khoản"><i class="bi bi-key-fill"></i></button>
                                </td>
                            </tr>
                            <tr>
                                <th scope="row">4</th>
                                <td>Phạm Thị D</td>
                                <td>phamthid@example.com</td>
                                <td><i class="bi bi-unlock-fill text-success fs-5 status-icon"
                                       title="Hoạt động"></i> <span class="status-text">Hoạt động</span>
                                </td>
                                <td>
                                    <button type="button"
                                            class="btn btn-danger btn-sm action-button action-lock"
                                            title="Khóa tài khoản"><i class="bi bi-key-fill"></i></button>
                                </td>
                            </tr>
                            <tr>
                                <th scope="row">5</th>
                                <td>Hoàng Văn E</td>
                                <td>hoangvane@example.com</td>
                                <td><i class="bi bi-lock-fill text-danger fs-5 status-icon"
                                       title="Đã khóa"></i>
                                    <span class="status-text">Đã khóa</span>
                                </td>
                                <td>
                                    <button type="button"
                                            class="btn btn-success btn-sm action-button action-unlock"
                                            title="Mở khóa tài khoản"><i class="bi bi-key-fill"></i></button>
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

    /* Stat Modern Card Style */
    .stat-modern-card {
        background: #fff;
        border-radius: 1.2rem;
        box-shadow: 0 4px 24px 0 rgba(60, 72, 100, .10);
        padding: 1.2rem 0.7rem 1rem 0.7rem;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        position: relative;
        min-height: 120px;
        transition: box-shadow 0.2s, transform 0.2s;
    }

    .stat-modern-card:hover {
        box-shadow: 0 8px 32px 0 rgba(60, 72, 100, .18);
        transform: translateY(-6px) scale(1.03);
    }

    .stat-modern-icon-bg {
        width: 40px;
        height: 40px;
        border-radius: 50%;
        display: flex;
        align-items: center;
        justify-content: center;
        font-size: 1.2rem;
        margin-bottom: 0.7rem;
        background: linear-gradient(135deg, #e3eafe 0%, #f5f7fa 100%);
        box-shadow: 0 2px 12px 0 rgba(60, 72, 100, .10);
        color: #4154f1;
    }

    .stat-total .stat-modern-icon-bg {
        background: linear-gradient(135deg, #e3eafe 0%, #f5f7fa 100%);
        color: #4154f1;
    }

    .stat-active .stat-modern-icon-bg {
        background: linear-gradient(135deg, #d0f5e8 0%, #f5f7fa 100%);
        color: #009688;
    }

    .stat-locked .stat-modern-icon-bg {
        background: linear-gradient(135deg, #ffe0b2 0%, #f5f7fa 100%);
        color: #ff9800;
    }

    .stat-modern-title {
        font-size: 0.95rem;
        font-weight: 600;
        color: #1a237e;
        margin-bottom: 0.3rem;
        text-align: center;
    }

    .stat-modern-number {
        font-size: 1.5rem;
        font-weight: 800;
        color: #222;
        margin-bottom: 0.1rem;
        text-align: center;
    }

    .stat-modern-desc {
        font-size: 0.85rem;
        color: #888;
        text-align: center;
    }

    @media (max-width: 991px) {
        .stat-modern-card {
            min-height: 90px;
        }

        .stat-modern-icon-bg {
            width: 28px;
            height: 28px;
            font-size: 0.9rem;
        }
    }

    /* End Stat Modern Card Style */

    .status-circle {
        display: inline-flex;
        align-items: center;
        justify-content: center;
        width: 20px;
        height: 20px;
        border-radius: 50%;
        font-size: 0.9rem;
    }
</style>

<script>
    document.addEventListener('DOMContentLoaded', () => {
        const actionButtons = document.querySelectorAll('.action-button');
        const tableInstance = document.querySelector('.datatable');

        // Hàm cập nhật số liệu thống kê và biểu đồ
        function updateStatsAndChart() {
            const rows = tableInstance ? tableInstance.querySelectorAll('tbody tr') : [];
            let total = 0, active = 0, locked = 0;
            rows.forEach(row => {
                const statusIcon = row.querySelector('.status-icon');
                if (!statusIcon) return;
                total++;
                if (statusIcon.classList.contains('text-success')) active++;
                else if (statusIcon.classList.contains('text-danger')) locked++;
            });
            // Cập nhật số liệu trên thẻ
            document.getElementById('stat-total').textContent = total;
            document.getElementById('stat-active').textContent = active;
            document.getElementById('stat-locked').textContent = locked;
            // Cập nhật biểu đồ donut nếu có
            if (window.donutChart) {
                window.donutChart.updateSeries([active, locked]);
            }
        }

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
                    this.innerHTML = '<i class="bi bi-key-fill"></i>';
                } else if (this.classList.contains('action-unlock')) {
                    statusIcon.classList.remove('bi-lock-fill', 'text-danger');
                    statusIcon.classList.add('bi-unlock-fill', 'text-success');
                    statusIcon.title = 'Hoạt động';
                    if (statusText) statusText.textContent = 'Hoạt động';

                    this.classList.remove('btn-success', 'action-unlock');
                    this.classList.add('btn-danger', 'action-lock');
                    this.title = 'Khóa tài khoản';
                    this.innerHTML = '<i class="bi bi-key-fill"></i>';
                }
                // Sau khi đổi trạng thái, cập nhật lại số liệu và biểu đồ
                updateStatsAndChart();
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

        // ApexCharts - Donut Chart for Account Status
        window.donutChart = new ApexCharts(document.querySelector("#reportsChart"), {
            series: [180, 70], // Dữ liệu mẫu: 180 Hoạt động, 70 Bị khóa
            chart: {
                height: 350,
                type: 'donut',
                toolbar: {
                    show: true
                }
            },
            labels: ['Hoạt động', 'Bị khóa'],
            colors: ['#2eca6a', '#ff771d'],
            legend: {
                position: 'bottom'
            },
            plotOptions: {
                pie: {
                    donut: {
                        size: '65%', // Kích thước của lỗ donut
                        labels: {
                            show: true,
                            name: {
                                show: true,
                                fontSize: '22px',
                                fontFamily: 'Nunito, sans-serif',
                                color: '#444444',
                                offsetY: -10
                            },
                            value: {
                                show: true,
                                fontSize: '16px',
                                fontFamily: 'Nunito, sans-serif',
                                color: '#111111',
                                offsetY: 16,
                                formatter: function (val) {
                                    return val + " KH"; // KH = Khách hàng/Tài khoản
                                }
                            },
                            total: {
                                show: true,
                                showAlways: true,
                                label: 'Tổng số',
                                fontSize: '20px',
                                fontFamily: 'Nunito, sans-serif',
                                color: '#373d3f',
                                formatter: function (w) {
                                    return w.globals.seriesTotals.reduce((a, b) => {
                                        return a + b
                                    }, 0) + ' KH';
                                }
                            }
                        }
                    }
                }
            },
            dataLabels: {
                enabled: true,
                formatter: function (val, opts) {
                    return opts.w.globals.labels[opts.seriesIndex] + ": " + val.toFixed(1) + '%'
                },
                style: {
                    fontSize: '12px',
                    colors: ["#fff"]
                },
                dropShadow: {
                    enabled: true,
                    top: 1,
                    left: 1,
                    blur: 1,
                    color: '#000',
                    opacity: 0.45
                }
            },
            responsive: [{
                breakpoint: 480,
                options: {
                    chart: {
                        width: 200
                    },
                    legend: {
                        position: 'bottom'
                    }
                }
            }]
        });
        window.donutChart.render();

        // Khi trang load xong, cập nhật số liệu lần đầu
        updateStatsAndChart();
    });
</script>