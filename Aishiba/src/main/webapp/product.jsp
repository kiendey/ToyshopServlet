<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <title>Quản lý sản phẩm - Aishiba</title>
    <meta content="" name="description">
    <meta content="" name="keywords">
    <!-- Favicons -->
    <link href="assets/img/logo.png" rel="icon">
    <link href="assets/img/logo.png" rel="apple-touch-icon">
    <!-- Google Fonts -->
    <link href="https://fonts.gstatic.com" rel="preconnect">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i" rel="stylesheet">
    <!-- Vendor CSS Files -->
    <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
    <link href="assets/vendor/quill/quill.snow.css" rel="stylesheet">
    <link href="assets/vendor/quill/quill.bubble.css" rel="stylesheet">
    <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
    <link href="assets/vendor/simple-datatables/style.css" rel="stylesheet">
    <!-- Template Main CSS File -->
    <link href="assets/css/style.css" rel="stylesheet">
    <!-- =======================================================
    * Template Name: NiceAdmin
    * Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
    * Updated: Apr 20 2024 with Bootstrap v5.3.3
    * Author: BootstrapMade.com
    * License: https://bootstrapmade.com/license/
    ======================================================== -->

</head>
<body>
<!-- ======= Header ======= -->
<header id="header" class="header fixed-top d-flex align-items-center">
    <div class="d-flex align-items-center justify-content-between">
        <a href="index.html" class="logo d-flex align-items-center">
            <img src="assets/img/logo.png" alt="">
            <span class="d-none d-lg-block">Aishiba</span>
        </a>
        <i class="bi bi-list toggle-sidebar-btn"></i>
    </div><!-- End Logo -->
    <div class="search-bar">
        <form class="search-form d-flex align-items-center" method="POST" action="#">
            <input type="text" name="query" placeholder="Search" title="Enter search keyword">
            <button type="submit" title="Search"><i class="bi bi-search"></i></button>
        </form>
    </div><!-- End Search Bar -->
    <nav class="header-nav ms-auto">
        <ul class="d-flex align-items-center">
            <li class="nav-item d-block d-lg-none">
                <a class="nav-link nav-icon search-bar-toggle " href="#">
                    <i class="bi bi-search"></i>
                </a>
            </li><!-- End Search Icon-->
            <li class="nav-item dropdown">
                <a class="nav-link nav-icon" href="#" data-bs-toggle="dropdown">
                    <i class="bi bi-bell"></i>
                    <span class="badge bg-primary badge-number">4</span>
                </a><!-- End Notification Icon -->
                <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow notifications">
                    <li class="dropdown-header">
                        You have 4 new notifications
                        <a href="#"><span class="badge rounded-pill bg-primary p-2 ms-2">View all</span></a>
                    </li>
                    <li>
                        <hr class="dropdown-divider">
                    </li>
                    <li class="notification-item">
                        <i class="bi bi-exclamation-circle text-warning"></i>
                        <div>
                            <h4>Lorem Ipsum</h4>
                            <p>Quae dolorem earum veritatis oditseno</p>
                            <p>30 min. ago</p>
                        </div>
                    </li>
                    <li>
                        <hr class="dropdown-divider">
                    </li>
                    <li class="notification-item">
                        <i class="bi bi-x-circle text-danger"></i>
                        <div>
                            <h4>Atque rerum nesciunt</h4>
                            <p>Quae dolorem earum veritatis oditseno</p>
                            <p>1 hr. ago</p>
                        </div>
                    </li>
                    <li>
                        <hr class="dropdown-divider">
                    </li>
                    <li class="notification-item">
                        <i class="bi bi-check-circle text-success"></i>
                        <div>
                            <h4>Sit rerum fuga</h4>
                            <p>Quae dolorem earum veritatis oditseno</p>
                            <p>2 hrs. ago</p>
                        </div>
                    </li>
                    <li>
                        <hr class="dropdown-divider">
                    </li>
                    <li class="notification-item">
                        <i class="bi bi-info-circle text-primary"></i>
                        <div>
                            <h4>Dicta reprehenderit</h4>
                            <p>Quae dolorem earum veritatis oditseno</p>
                            <p>4 hrs. ago</p>
                        </div>
                    </li>
                    <li>
                        <hr class="dropdown-divider">
                    </li>
                    <li class="dropdown-footer">
                        <a href="#">Show all notifications</a>
                    </li>
                </ul><!-- End Notification Dropdown Items -->
            </li><!-- End Notification Nav -->
            <li class="nav-item dropdown">
                <a class="nav-link nav-icon" href="#" data-bs-toggle="dropdown">
                    <i class="bi bi-chat-left-text"></i>
                    <span class="badge bg-success badge-number">3</span>
                </a><!-- End Messages Icon -->
                <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow messages">
                    <li class="dropdown-header">
                        You have 3 new messages
                        <a href="#"><span class="badge rounded-pill bg-primary p-2 ms-2">View all</span></a>
                    </li>
                    <li>
                        <hr class="dropdown-divider">
                    </li>
                    <li class="message-item">
                        <a href="#">
                            <img src="assets/img/messages-1.jpg" alt="" class="rounded-circle">
                            <div>
                                <h4>Maria Hudson</h4>
                                <p>Velit asperiores et ducimus soluta repudiandae labore officia est ut...</p>
                                <p>4 hrs. ago</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <hr class="dropdown-divider">
                    </li>
                    <li class="message-item">
                        <a href="#">
                            <img src="assets/img/messages-2.jpg" alt="" class="rounded-circle">
                            <div>
                                <h4>Anna Nelson</h4>
                                <p>Velit asperiores et ducimus soluta repudiandae labore officia est ut...</p>
                                <p>6 hrs. ago</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <hr class="dropdown-divider">
                    </li>
                    <li class="message-item">
                        <a href="#">
                            <img src="assets/img/messages-3.jpg" alt="" class="rounded-circle">
                            <div>
                                <h4>David Muldon</h4>
                                <p>Velit asperiores et ducimus soluta repudiandae labore officia est ut...</p>
                                <p>8 hrs. ago</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <hr class="dropdown-divider">
                    </li>
                    <li class="dropdown-footer">
                        <a href="#">Show all messages</a>
                    </li>
                </ul><!-- End Messages Dropdown Items -->
            </li><!-- End Messages Nav -->
            <li class="nav-item dropdown pe-3">
                <a class="nav-link nav-profile d-flex align-items-center pe-0" href="#" data-bs-toggle="dropdown">
                    <img src="assets/img/profile-img.jpg" alt="Profile" class="rounded-circle">
                    <span class="d-none d-md-block dropdown-toggle ps-2">K. Anderson</span>
                </a><!-- End Profile Iamge Icon -->
                <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
                    <li class="dropdown-header">
                        <h6>Kevin Anderson</h6>
                        <span>Web Designer</span>
                    </li>
                    <li>
                        <hr class="dropdown-divider">
                    </li>
                    <li>
                        <a class="dropdown-item d-flex align-items-center" href="users-profile.html">
                            <i class="bi bi-person"></i>
                            <span>My Profile</span>
                        </a>
                    </li>
                    <li>
                        <hr class="dropdown-divider">
                    </li>
                    <li>
                        <a class="dropdown-item d-flex align-items-center" href="users-profile.html">
                            <i class="bi bi-gear"></i>
                            <span>Account Settings</span>
                        </a>
                    </li>
                    <li>
                        <hr class="dropdown-divider">
                    </li>
                    <li>
                        <a class="dropdown-item d-flex align-items-center" href="pages-faq.html">
                            <i class="bi bi-question-circle"></i>
                            <span>Need Help?</span>
                        </a>
                    </li>
                    <li>
                        <hr class="dropdown-divider">
                    </li>
                    <li>
                        <a class="dropdown-item d-flex align-items-center" href="#">
                            <i class="bi bi-box-arrow-right"></i>
                            <span>Sign Out</span>
                        </a>
                    </li>
                </ul><!-- End Profile Dropdown Items -->
            </li><!-- End Profile Nav -->
        </ul>
    </nav><!-- End Icons Navigation -->
</header><!-- End Header -->
<!-- ======= Sidebar ======= -->
<aside id="sidebar" class="sidebar">
    <ul class="sidebar-nav" id="sidebar-nav">
        <li class="nav-item">
            <a class="nav-link " href="index.html">
                <i class="bi bi-grid fs-5"></i>
                <span>Dashboard</span>
            </a>
        </li><!-- End Dashboard Nav -->
        <li class="nav-item">
            <a class="nav-link collapsed" data-bs-target="#components-nav" data-bs-toggle="collapse" href="#">
                <i class="bi bi-box-seam fs-5"></i><span>Sản phẩm</span><i class="bi bi-chevron-down ms-auto"></i>
            </a>
            <ul id="components-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
                <li>
                    <a href="product.html">
                        <i class="bi bi-list-ul fs-5"></i><span>Danh sách sản phẩm</span>
                    </a>
                </li>
                <li>
                    <a href="supplier.html">
                        <i class="bi bi-truck fs-5"></i><span>Nhà cung cấp</span>
                    </a>
                </li>
            </ul>
        </li><!-- End Components Nav -->
        <li class="nav-item">
            <a class="nav-link collapsed" data-bs-target="#forms-nav" data-bs-toggle="collapse" href="#">
                <i class="bi bi-people fs-5"></i><span>Nhân viên</span>
            </a>
        </li><!-- End Forms Nav -->
        <li class="nav-item">
            <a class="nav-link collapsed" data-bs-target="#tables-nav" data-bs-toggle="collapse" href="#">
                <i class="bi bi-cart-check fs-5"></i><span>Giao dịch</span><i class="bi bi-chevron-down ms-auto"></i>
            </a>
            <ul id="tables-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
                <li>
                    <a href="orders.html">
                        <i class="bi bi-receipt fs-5"></i><span>Đơn hàng</span>
                    </a>
                </li>
                <li>
                    <a href="stocks.html">
                        <i class="bi bi-box-arrow-in-down fs-5"></i><span>Nhập hàng</span>
                    </a>
                </li>
            </ul>
        </li><!-- End Tables Nav -->
        <li class="nav-item">
            <a class="nav-link collapsed" data-bs-target="#charts-nav" data-bs-toggle="collapse" href="#">
                <i class="bi bi-people-fill fs-5"></i><span>Khách hàng</span><i class="bi bi-chevron-down ms-auto"></i>
            </a>
            <ul id="charts-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
                <li>
                    <a href=#>
                        <i class="bi bi-person-lines-fill fs-5"></i><span>Danh sách khách hàng</span>
                    </a>
                </li>
                <li>
                    <a href=#>
                        <i class="bi bi-person-x fs-5"></i><span>Khóa/Mở tài khoản khách hàng</span>
                    </a>
                </li>
            </ul>
        </li><!-- End Charts Nav -->
        <li class="nav-item">
            <a class="nav-link collapsed" data-bs-target="#icons-nav" data-bs-toggle="collapse" href="#">
                <i class="bi bi-graph-up fs-5"></i><span>Thống kê</span><i class="bi bi-chevron-down ms-auto"></i>
            </a>
            <ul id="icons-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
                <li>
                    <a href="icons-bootstrap.html">
                        <i class="bi bi-file-earmark-excel fs-5"></i><span>Xuất báo cáo</span>
                    </a>
                </li>
                <li>
                    <a href="icons-remix.html">
                        <i class="bi bi-box-seam fs-5"></i><span>Hàng tồn kho</span>
                    </a>
                </li>
                <li>
                    <a href="icons-boxicons.html">
                        <i class="bi bi-bar-chart fs-5"></i><span>Lược đồ doanh thu</span>
                    </a>
                </li>
            </ul>
        </li><!-- End Icons Nav -->
        <li class="nav-heading">Pages</li>
        <li class="nav-item">
            <a class="nav-link collapsed" href="users-profile.html">
                <i class="bi bi-person fs-5"></i>
                <span>Thông tin cá nhân</span>
            </a>
        </li><!-- End Profile Page Nav -->
        <li class="nav-item">
            <a class="nav-link collapsed" href="pages-faq.html">
                <i class="bi bi-question-circle fs-5"></i>
                <span>F.A.Q</span>
            </a>
        </li><!-- End F.A.Q Page Nav -->
        <li class="nav-item">
            <a class="nav-link collapsed" href="pages-contact.html">
                <i class="bi bi-envelope fs-5"></i>
                <span>Liên hệ</span>
            </a>
        </li><!-- End Contact Page Nav -->
        <li class="nav-item">
            <a class="nav-link collapsed" href="pages-register.html">
                <i class="bi bi-person-plus fs-5"></i>
                <span>Đăng ký</span>
            </a>
        </li><!-- End Register Page Nav -->
        <li class="nav-item">
            <a class="nav-link collapsed" href="pages-login.html">
                <i class="bi bi-box-arrow-in-right fs-5"></i>
                <span>Đăng nhập</span>
            </a>
        </li><!-- End Login Page Nav -->
    </ul>
</aside><!-- End Sidebar-->
<main id="main" class="main">
    <div class="pagetitle">
        <h1>Danh sách sản phẩm</h1>
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="#">Trang chủ</a></li>
                <li class="breadcrumb-item"><a href="#">Sản phẩm</a></li>
                <li class="breadcrumb-item active">Danh sách sản phẩm</li>
            </ol>
        </nav>
    </div>
    <section class="section">
        <div class="container-fluid px-0">
            <div class="card shadow-sm rounded-4 p-4" style="border: none;">
                <!-- Cập nhật giao diện toolbar -->
                <div class="d-flex justify-content-between align-items-center flex-wrap mb-3">
                    <h2 class="fw-bold text-primary mb-0">Danh sách sản phẩm</h2>
                    <div class="d-flex gap-2">
                        <button class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#addProductModal">
                            <i class="bi bi-plus-lg me-1"></i> Thêm mới
                        </button>
                        <div class="dropdown">
                            <button class="btn btn-success dropdown-toggle" type="button" data-bs-toggle="dropdown">
                                <i class="bi bi-file-earmark me-1"></i> Xuất/Nhập
                            </button>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="#" onclick="exportProducts()">
                                    <i class="bi bi-file-earmark-excel me-2"></i>Xuất Excel
                                </a></li>
                                <li><a class="dropdown-item" href="#" onclick="importProducts()">
                                    <i class="bi bi-file-earmark-arrow-up me-2"></i>Nhập Excel
                                </a></li>
                            </ul>
                        </div>
                        <div class="dropdown">
                            <button class="btn btn-warning dropdown-toggle" type="button" data-bs-toggle="dropdown" id="businessActionBtn">
                                <i class="bi bi-shop me-1"></i> Kinh doanh
                            </button>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="#" onclick="startBusinessSelected()" id="startBusinessBtn">
                                    <i class="bi bi-unlock me-2"></i>Mở kinh doanh
                                </a></li>
                                <li><a class="dropdown-item" href="#" onclick="stopBusinessSelected()" id="stopBusinessBtn">
                                    <i class="bi bi-lock me-2"></i>Ngừng kinh doanh
                                </a></li>
                            </ul>
                        </div>
                        <button class="btn btn-danger" onclick="deleteSelectedProducts()" title="Xóa" id="deleteSelectedBtn">
                            <i class="bi bi-trash me-1"></i> Xóa
                        </button>
                    </div>
                </div>
                <div class="row g-2 mb-3">
                    <div class="col-md-4">
                        <div class="input-group">
                            <span class="input-group-text bg-white"><i class="bi bi-search"></i></span>
                            <input type="text" class="form-control" id="searchInput" placeholder="Tìm kiếm theo mã, tên hàng..." oninput="filterProducts()">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <select class="form-select" id="filterCategory" title="Lọc theo nhóm hàng" onchange="filterProducts()">
                            <option value="">Tất cả nhóm hàng</option>
                            <option value="Đồ chơi trẻ em">Đồ chơi trẻ em</option>
                            <option value="Đồ chơi giáo dục">Đồ chơi giáo dục</option>
                            <option value="Đồ chơi mô hình">Đồ chơi mô hình</option>
                            <option value="Đồ chơi điện tử">Đồ chơi điện tử</option>
                            <option value="Đồ chơi vận động">Đồ chơi vận động</option>
                            <option value="Đồ chơi xếp hình">Đồ chơi xếp hình</option>
                            <option value="Đồ chơi nghệ thuật">Đồ chơi nghệ thuật</option>
                        </select>
                    </div>
                    <div class="col-md-3">
                        <select class="form-select" id="filterStatus" title="Lọc theo trạng thái" onchange="filterProducts()">
                            <option value="">Tất cả trạng thái</option>
                            <option value="Còn hàng">Còn hàng</option>
                            <option value="Hết hàng">Hết hàng</option>
                        </select>
                    </div>
                    <div class="col-md-4">
                        <div class="input-group">
                            <button class="btn btn-outline-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                                <i class="bi bi-calendar3"></i> Thời gian
                            </button>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="#" onclick="setDateRange('today')">Hôm nay</a></li>
                                <li><a class="dropdown-item" href="#" onclick="setDateRange('yesterday')">Hôm qua</a></li>
                                <li><a class="dropdown-item" href="#" onclick="setDateRange('thisWeek')">Tuần này</a></li>
                                <li><a class="dropdown-item" href="#" onclick="setDateRange('lastWeek')">Tuần trước</a></li>
                                <li><a class="dropdown-item" href="#" onclick="setDateRange('thisMonth')">Tháng này</a></li>
                                <li><a class="dropdown-item" href="#" onclick="setDateRange('lastMonth')">Tháng trước</a></li>
                                <li><hr class="dropdown-divider"></li>
                                <li><a class="dropdown-item" href="#" onclick="setDateRange('last7Days')">7 ngày qua</a></li>
                                <li><a class="dropdown-item" href="#" onclick="setDateRange('last30Days')">30 ngày qua</a></li>
                                <li><a class="dropdown-item" href="#" onclick="setDateRange('last90Days')">90 ngày qua</a></li>
                                <li><hr class="dropdown-divider"></li>
                                <li><a class="dropdown-item" href="#" onclick="clearDateRange()">Xóa bộ lọc</a></li>
                            </ul>
                            <div class="date-range-inputs">
                                <div class="date-input-group">
                                    <label>Từ ngày:</label>
                                    <input type="date" class="form-control" id="filterStartDate" title="Lọc từ ngày" onchange="handleDateChange()">
                                </div>
                                <div class="date-input-group">
                                    <label>Đến ngày:</label>
                                    <input type="date" class="form-control" id="filterEndDate" title="Lọc đến ngày" onchange="handleDateChange()">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="table-responsive">
                    <table class="table table-hover align-middle rounded-4 overflow-hidden">
                        <thead class="table-light">
                        <tr>
                            <th style="width:40px">
                                <input type="checkbox" class="form-check-input" id="selectAll" title="Chọn tất cả" onclick="toggleSelectAll(this)">
                            </th>
                            <th style="width:40px">
                                <i class="bi bi-star header-star text-warning" id="selectAllStars" title="Chọn/Bỏ chọn tất cả nổi bật" onclick="toggleSelectAllStars()"></i>
                            </th>
                            <th>Mã hàng</th>
                            <th>Tên hàng</th>
                            <th class="text-end">Giá bán</th>
                            <th class="text-end">Giá vốn</th>
                            <th class="text-end">Tồn kho</th>
                            <th class="text-center">Trạng thái</th>
                            <th class="text-center">Trạng thái KD</th>
                            <th>Thời gian tạo</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>
                                <div class="form-check">
                                    <input type="checkbox" class="form-check-input product-checkbox" title="Chọn sản phẩm này">
                                </div>
                            </td>
                            <td><i class="bi bi-star star-outline text-warning" title="Đánh dấu sản phẩm"></i></td>
                            <td>SP000001</td>
                            <td>Xe đạp trẻ em</td>
                            <td class="text-end">1,200,000</td>
                            <td class="text-end">900,000</td>
                            <td class="text-end">10</td>
                            <td class="text-center"><span class="badge bg-success">Còn hàng</span></td>
                            <td class="text-center"><span class="badge bg-success">Kinh doanh</span></td>
                            <td>01/06/2024 09:00</td>
                        </tr>
                        <tr>
                            <td>
                                <div class="form-check">
                                    <input type="checkbox" class="form-check-input product-checkbox" title="Chọn sản phẩm này">
                                </div>
                            </td>
                            <td><i class="bi bi-star star-outline text-warning" title="Đánh dấu sản phẩm"></i></td>
                            <td>SP000002</td>
                            <td>Búp bê Barbie</td>
                            <td class="text-end">350,000</td>
                            <td class="text-end">200,000</td>
                            <td class="text-end">5</td>
                            <td class="text-center"><span class="badge bg-success">Còn hàng</span></td>
                            <td class="text-center"><span class="badge bg-success">Kinh doanh</span></td>
                            <td>02/06/2024 10:30</td>
                        </tr>
                        <tr>
                            <td>
                                <div class="form-check">
                                    <input type="checkbox" class="form-check-input product-checkbox" title="Chọn sản phẩm này">
                                </div>
                            </td>
                            <td><i class="bi bi-star star-outline text-warning" title="Đánh dấu sản phẩm"></i></td>
                            <td>SP000003</td>
                            <td>Bộ xếp hình Lego</td>
                            <td class="text-end">800,000</td>
                            <td class="text-end">600,000</td>
                            <td class="text-end">0</td>
                            <td class="text-center"><span class="badge bg-danger">Hết hàng</span></td>
                            <td class="text-center"><span class="badge bg-danger">Ngừng KD</span></td>
                            <td>03/06/2024 14:15</td>
                        </tr>
                        <tr>
                            <td>
                                <div class="form-check">
                                    <input type="checkbox" class="form-check-input product-checkbox" title="Chọn sản phẩm này">
                                </div>
                            </td>
                            <td><i class="bi bi-star star-outline text-warning" title="Đánh dấu sản phẩm"></i></td>
                            <td>SP000004</td>
                            <td>Đàn piano điện tử</td>
                            <td class="text-end">1,500,000</td>
                            <td class="text-end">1,200,000</td>
                            <td class="text-end">3</td>
                            <td class="text-center"><span class="badge bg-success">Còn hàng</span></td>
                            <td class="text-center"><span class="badge bg-success">Kinh doanh</span></td>
                            <td>04/06/2024 16:00</td>
                        </tr>
                        <tr>
                            <td>
                                <div class="form-check">
                                    <input type="checkbox" class="form-check-input product-checkbox" title="Chọn sản phẩm này">
                                </div>
                            </td>
                            <td><i class="bi bi-star star-outline text-warning" title="Đánh dấu sản phẩm"></i></td>
                            <td>SP000005</td>
                            <td>Bảng vẽ thông minh</td>
                            <td class="text-end">450,000</td>
                            <td class="text-end">300,000</td>
                            <td class="text-end">7</td>
                            <td class="text-center"><span class="badge bg-success">Còn hàng</span></td>
                            <td class="text-center"><span class="badge bg-success">Kinh doanh</span></td>
                            <td>05/06/2024 11:45</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </section>
    <!-- Modal Chỉnh Sửa Sản Phẩm -->
    <div class="modal fade" id="editProductModal" tabindex="-1" aria-labelledby="editProductModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header bg-primary text-white">
                    <h5 class="modal-title" id="editProductModalLabel">Chỉnh Sửa Sản Phẩm</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form id="editProductForm">
                        <div class="row mb-3">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="editProductCode" class="form-label">Mã sản phẩm</label>
                                    <input type="text" class="form-control" id="editProductCode" readonly>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="editProductBarcode" class="form-label">Mã vạch</label>
                                    <input type="text" class="form-control" id="editProductBarcode">
                                </div>
                            </div>
                        </div>

                        <div class="row mb-3">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="editProductName" class="form-label">Tên sản phẩm</label>
                                    <input type="text" class="form-control" id="editProductName" required>
                                </div>
                            </div>
                        </div>

                        <div class="row mb-3">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="editProductCategory" class="form-label">Nhóm hàng</label>
                                    <select class="form-select" id="editProductCategory">
                                        <option value="">Chọn nhóm hàng</option>
                                        <option value="Đồ chơi">Đồ chơi</option>
                                        <option value="Thời trang">Thời trang</option>
                                        <option value="Phụ kiện">Phụ kiện</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="editProductSupplier" class="form-label">Nhà cung cấp</label>
                                    <select class="form-select" id="editProductSupplier">
                                        <option value="">Chọn nhà cung cấp</option>
                                        <option value="NCC1">Nhà cung cấp 1</option>
                                        <option value="NCC2">Nhà cung cấp 2</option>
                                        <option value="NCC3">Nhà cung cấp 3</option>
                                    </select>
                                </div>
                            </div>
                        </div>

                        <div class="row mb-3">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="editProductPrice" class="form-label">Giá bán</label>
                                    <div class="input-group">
                                        <input type="number" class="form-control" id="editProductPrice" required>
                                        <span class="input-group-text">VNĐ</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="editProductCost" class="form-label">Giá vốn</label>
                                    <div class="input-group">
                                        <input type="number" class="form-control" id="editProductCost" required>
                                        <span class="input-group-text">VNĐ</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="editProductStock" class="form-label">Tồn kho</label>
                                    <input type="number" class="form-control" id="editProductStock" required>
                                </div>
                            </div>
                        </div>

                        <div class="row mb-3">
                            <div class="col-12">
                                <div class="form-group">
                                    <label for="editProductDescription" class="form-label">Mô tả sản phẩm</label>
                                    <textarea class="form-control" id="editProductDescription" rows="3"></textarea>
                                </div>
                            </div>
                        </div>

                        <div class="row mb-3">
                            <div class="col-12">
                                <div class="form-group">
                                    <label for="editProductOrderNote" class="form-label">Ghi chú đặt hàng</label>
                                    <textarea class="form-control" id="editProductOrderNote" rows="2"></textarea>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-12">
                                <div class="form-check form-switch">
                                    <input class="form-check-input" type="checkbox" id="editProductStatus">
                                    <label class="form-check-label" for="editProductStatus">Đang kinh doanh</label>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Hủy</button>
                    <button type="button" class="btn btn-primary" onclick="saveProductChanges()">Lưu thay đổi</button>
                </div>
            </div>
        </div>
    </div>

    <!-- Giao diện thêm mới sản phẩm -->
    <div id="addProductModal" class="modal fade" tabindex="-1" aria-labelledby="addProductModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header bg-primary text-white">
                    <h5 class="modal-title" id="addProductModalLabel">Thêm mới sản phẩm</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form id="addProductForm">
                        <div class="row mb-3">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="newProductCode" class="form-label">Mã sản phẩm</label>
                                    <input type="text" class="form-control" id="newProductCode" readonly>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="newProductBarcode" class="form-label">Mã vạch</label>
                                    <input type="text" class="form-control" id="newProductBarcode">
                                </div>
                            </div>
                        </div>

                        <div class="row mb-3">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="newProductName" class="form-label">Tên sản phẩm <span class="text-danger">*</span></label>
                                    <input type="text" class="form-control" id="newProductName" required>
                                </div>
                            </div>
                        </div>

                        <div class="row mb-3">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="newProductCategory" class="form-label">Nhóm hàng</label>
                                    <select class="form-select" id="newProductCategory">
                                        <option value="">Chọn nhóm hàng</option>
                                        <option value="Đồ chơi trẻ em">Đồ chơi trẻ em</option>
                                        <option value="Đồ chơi giáo dục">Đồ chơi giáo dục</option>
                                        <option value="Đồ chơi mô hình">Đồ chơi mô hình</option>
                                        <option value="Đồ chơi điện tử">Đồ chơi điện tử</option>
                                        <option value="Đồ chơi vận động">Đồ chơi vận động</option>
                                        <option value="Đồ chơi xếp hình">Đồ chơi xếp hình</option>
                                        <option value="Đồ chơi nghệ thuật">Đồ chơi nghệ thuật</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="newProductSupplier" class="form-label">Nhà cung cấp</label>
                                    <select class="form-select" id="newProductSupplier">
                                        <option value="">Chọn nhà cung cấp</option>
                                    </select>
                                </div>
                            </div>
                        </div>

                        <div class="row mb-3">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="newProductPrice" class="form-label">Giá bán <span class="text-danger">*</span></label>
                                    <div class="input-group">
                                        <input type="number" class="form-control" id="newProductPrice" required>
                                        <span class="input-group-text">VNĐ</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="newProductCost" class="form-label">Giá vốn <span class="text-danger">*</span></label>
                                    <div class="input-group">
                                        <input type="number" class="form-control" id="newProductCost" required>
                                        <span class="input-group-text">VNĐ</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="newProductStock" class="form-label">Tồn kho <span class="text-danger">*</span></label>
                                    <input type="number" class="form-control" id="newProductStock" required>
                                </div>
                            </div>
                        </div>

                        <div class="row mb-3">
                            <div class="col-12">
                                <div class="form-group">
                                    <label for="newProductDescription" class="form-label">Mô tả sản phẩm</label>
                                    <textarea class="form-control" id="newProductDescription" rows="3"></textarea>
                                </div>
                            </div>
                        </div>

                        <div class="row mb-3">
                            <div class="col-12">
                                <div class="form-group">
                                    <label for="newProductOrderNote" class="form-label">Ghi chú đặt hàng</label>
                                    <textarea class="form-control" id="newProductOrderNote" rows="2"></textarea>
                                </div>
                            </div>
                        </div>

                        <div class="row mb-3">
                            <div class="col-12">
                                <label class="form-label">Hình ảnh sản phẩm</label>
                                <div class="product-images" id="newProductImages">
                                    <div class="image-upload-placeholder" onclick="addNewProductImage()">
                                        <i class="bi bi-plus-lg fs-3 text-primary"></i>
                                        <span class="ms-2">Thêm ảnh</span>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-12">
                                <div class="form-check form-switch">
                                    <input class="form-check-input" type="checkbox" id="newProductStatus" checked>
                                    <label class="form-check-label" for="newProductStatus">Đang kinh doanh</label>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Hủy</button>
                    <button type="button" class="btn btn-success" onclick="addProduct()">Thêm</button>
                </div>
            </div>
        </div>
    </div>

    <!-- Thêm input file ẩn vào HTML -->
    <input type="file" id="importFile" accept=".csv" style="display:none" onchange="handleImport(event)">

</main><!-- End #main -->
<script>
    // 5 sản phẩm mẫu
    let products = [
        {
            code: 'SP000001',
            name: 'Xe đạp trẻ em',
            price: 1200000,
            cost: 900000,
            stock: 10,
            barcode: '8931234567890',
            category: 'Đồ chơi vận động',
            supplier: 'NCC1',
            description: 'Xe đạp trẻ em 3 bánh, màu xanh.',
            orderNote: '',
            status: '<span class="badge bg-success">Còn hàng</span>',
            business: '<span class="badge bg-success">Kinh doanh</span>',
            created: '01/06/2024 09:00',
            star: false,
            images: [],
            checked: false
        },
        {
            code: 'SP000002',
            name: 'Búp bê Barbie',
            price: 350000,
            cost: 200000,
            stock: 5,
            barcode: '8931234567891',
            category: 'Đồ chơi trẻ em',
            supplier: 'NCC2',
            description: 'Búp bê Barbie chính hãng.',
            orderNote: '',
            status: '<span class="badge bg-success">Còn hàng</span>',
            business: '<span class="badge bg-success">Kinh doanh</span>',
            created: '02/06/2024 10:30',
            star: false,
            images: [],
            checked: false
        },
        {
            code: 'SP000003',
            name: 'Bộ xếp hình Lego',
            price: 800000,
            cost: 600000,
            stock: 0,
            barcode: '8931234567892',
            category: 'Đồ chơi xếp hình',
            supplier: 'NCC3',
            description: 'Bộ xếp hình Lego 500 chi tiết.',
            orderNote: '',
            status: '<span class="badge bg-danger">Hết hàng</span>',
            business: '<span class="badge bg-danger">Ngừng KD</span>',
            created: '03/06/2024 14:15',
            star: false,
            images: [],
            checked: false
        },
        {
            code: 'SP000004',
            name: 'Đàn piano điện tử',
            price: 1500000,
            cost: 1200000,
            stock: 3,
            barcode: '8931234567893',
            category: 'Đồ chơi điện tử',
            supplier: 'NCC1',
            description: 'Đàn piano điện tử cho bé.',
            orderNote: '',
            status: '<span class="badge bg-success">Còn hàng</span>',
            business: '<span class="badge bg-success">Kinh doanh</span>',
            created: '04/06/2024 16:00',
            star: false,
            images: [],
            checked: false
        },
        {
            code: 'SP000005',
            name: 'Bảng vẽ thông minh',
            price: 450000,
            cost: 300000,
            stock: 7,
            barcode: '8931234567894',
            category: 'Đồ chơi nghệ thuật',
            supplier: 'NCC2',
            description: 'Bảng vẽ thông minh cho bé sáng tạo.',
            orderNote: '',
            status: '<span class="badge bg-success">Còn hàng</span>',
            business: '<span class="badge bg-success">Kinh doanh</span>',
            created: '05/06/2024 11:45',
            star: false,
            images: [],
            checked: false
        }
    ];

    // Không dùng localStorage nữa, xóa các hàm loadProductsFromStorage, saveProductsToStorage và các chỗ gọi tới chúng
    // Khi load trang chỉ cần renderProductTable();
    window.addEventListener('DOMContentLoaded', function() {
        renderProductTable();
        // Initialize modals
        const addProductModal = document.getElementById('addProductModal');
        if (addProductModal) {
            new bootstrap.Modal(addProductModal);
        }
        updateActionButtonsState();
    });

    // Tạo HTML cho dòng sản phẩm
    function createProductRow(product, index) {
        return `<tr onclick="showProductDetailByRow(this, ${index})">
        <td>
          <div class="form-check" onclick="event.stopPropagation()">
            <input type="checkbox"
              class="form-check-input product-checkbox"
              ${product.checked ? 'checked' : ''}
              onchange="toggleProductSelection(event, ${index})"
              title="Chọn sản phẩm này">
          </div>
        </td>
        <td><i class="bi ${product.star ? 'bi-star-fill' : 'bi-star'} star-outline text-warning" onclick="toggleStar(event, ${index})" title="Đánh dấu sản phẩm"></i></td>
        <td>${product.code}</td>
        <td>${product.name}</td>
        <td class="text-end">${formatCurrency(product.price)}</td>
        <td class="text-end">${formatCurrency(product.cost)}</td>
        <td class="text-end">${formatCurrency(product.stock)}</td>
        <td class="text-center"><span class="badge ${product.stock > 0 ? 'bg-success' : 'bg-danger'}">${product.stock > 0 ? 'Còn hàng' : 'Hết hàng'}</span></td>
        <td class="text-center"><span class="badge ${product.stock <= 0 ? 'bg-danger' : (product.business.includes('Kinh doanh') ? 'bg-success' : 'bg-danger')}">${product.stock <= 0 ? 'Ngừng KD' : (product.business.includes('Kinh doanh') ? 'Kinh doanh' : 'Ngừng KD')}</span></td>
        <td>${product.created}</td>
      </tr>`;
    }
    // Tạo HTML cho dòng chi tiết
    function createProductDetailRow(product) {
        const images = product.images || [];
        const imageGrid = `
        <div class="product-images">
          ${images.slice(0, 4).map((img, index) => `
            <div class="product-image-item">
              <img src="${img}" alt="${product.name} - Ảnh ${index + 1}">
              <button class="remove-image" onclick="removeProductImage(${products.indexOf(product)}, ${index})">
                <i class="bi bi-x"></i>
              </button>
            </div>
          `).join('')}
          ${images.length < 4 ? `
            <div class="image-upload-placeholder" onclick="addProductImage(${products.indexOf(product)})">
              <i class="bi bi-plus-lg fs-3 text-primary"></i>
            </div>
          ` : ''}
        </div>`;

        return `<tr class="product-detail-row">
        <td colspan="10">
          <div class="product-detail-content">
            <div class="row">
              <div class="col-md-4">
                ${images.length > 0 ? imageGrid : `
                  <div class="product-images">
                    <div class="image-upload-placeholder" onclick="addProductImage(${products.indexOf(product)})">
                      <i class="bi bi-plus-lg fs-3 text-primary"></i>
                      <span class="ms-2">Thêm ảnh</span>
                    </div>
                  </div>
                `}
              </div>
              <div class="col-md-8">
                <div class="row">
                  <div class="col-md-6">
                    <div class="detail-section">
                      <h5><i class="bi bi-info-circle me-2"></i>Thông tin cơ bản</h5>
                      <div class="mb-3">
                        <div class="detail-label">Mã hàng</div>
                        <div class="detail-value">${product.code}</div>
                      </div>
                      <div class="mb-3">
                        <div class="detail-label">Mã vạch</div>
                        <div class="detail-value">${product.barcode || (product.code + 'BAR')}</div>
                      </div>
                      <div class="mb-3">
                        <div class="detail-label">Nhóm hàng</div>
                        <div class="detail-value">${product.category || 'Chưa phân loại'}</div>
                      </div>
                    </div>
                  </div>
                  <div class="col-md-6">
                    <div class="detail-section">
                      <h5><i class="bi bi-currency-dollar me-2"></i>Thông tin giá</h5>
                      <div class="mb-3">
                        <div class="detail-label">Giá bán</div>
                        <div class="detail-value text-success fw-bold text-end">${formatCurrency(product.price)}</div>
                    </div>
                      <div class="mb-3">
                        <div class="detail-label">Giá vốn</div>
                        <div class="detail-value text-danger text-end">${formatCurrency(product.cost)}</div>
                  </div>
                      <div class="mb-3">
                        <div class="detail-label">Tồn kho</div>
                        <div class="detail-value">${product.stock} đơn vị</div>
                </div>
                    </div>
                  </div>
                </div>
                    <div class="detail-section">
                  <h5><i class="bi bi-card-text me-2"></i>Thông tin bổ sung</h5>
                  <div class="mb-3">
                    <div class="detail-label">Mô tả sản phẩm</div>
                    <div class="detail-value">${product.description || 'Chưa có mô tả'}</div>
                    </div>
                  <div class="mb-3">
                    <div class="detail-label">Nhà cung cấp</div>
                    <div class="detail-value">${product.supplier || 'Chưa có thông tin'}</div>
                  </div>
                  <div class="mb-3">
                    <div class="detail-label">Ngày tạo</div>
                    <div class="detail-value">${product.created}</div>
                </div>
                </div>
                <div class="btn-group mt-3">
                  <button class="btn btn-success" onclick="editProductDetail(${products.indexOf(product)})">
                    <i class="bi bi-pencil me-1"></i> Sửa
                  </button>
                  <button class="btn btn-secondary" onclick="printProductLabel(${products.indexOf(product)})">
                    <i class="bi bi-printer me-1"></i> In tem mã
                  </button>
                  <button class="btn btn-info text-white" onclick="copyProductDetail(${products.indexOf(product)})">
                    <i class="bi bi-clipboard me-1"></i> Sao chép
                  </button>
                  <button class="btn btn-warning" onclick="toggleBusinessStatus(${products.indexOf(product)})">
                    <i class="bi bi-lock me-1"></i> ${product.business.includes('Ngừng') ? 'Mở bán lại' : 'Ngừng kinh doanh'}
                  </button>
                  <button class="btn btn-danger" onclick="deleteProductDetail(${products.indexOf(product)})">
                    <i class="bi bi-trash me-1"></i> Xóa
                  </button>
                </div>
              </div>
            </div>
          </div>
        </td>
      </tr>`;
    }
    // Render lại toàn bộ bảng
    function renderProductTable() {
        const tbody = document.querySelector('tbody');
        if (!tbody) return;

        tbody.innerHTML = '';

        if (!Array.isArray(products)) {
            products = [];
        }

        products.forEach((product, idx) => {
            const productRow = createProductRow(product, idx);
            const detailRow = createProductDetailRow(product);
            tbody.insertAdjacentHTML('beforeend', productRow);
            tbody.insertAdjacentHTML('beforeend', detailRow);
        });

        updateSelectAllCheckbox();
        updateActionButtonsState();
        updateSelectAllStars();
    }
    // Cập nhật trạng thái selectAll checkbox
    function updateSelectAllCheckbox() {
        const selectAll = document.getElementById('selectAll');
        if (!selectAll) return;

        const checkedProducts = products.filter(p => p.checked);
        selectAll.checked = checkedProducts.length === products.length;
        selectAll.indeterminate = checkedProducts.length > 0 && checkedProducts.length < products.length;
    }
    // Cập nhật trạng thái selectAllStars
    function updateSelectAllStars() {
        const headerStar = document.getElementById('selectAllStars');
        if (headerStar) {
            const allStarred = products.length > 0 && products.every(p => p.star);
            headerStar.classList.remove('bi-star-fill', 'bi-star');
            headerStar.classList.add(allStarred ? 'bi-star-fill' : 'bi-star');
        }
    }
    // Chọn tất cả star
    function toggleSelectAllStars() {
        const headerStar = document.getElementById('selectAllStars');
        if (!headerStar) return;

        const allStarred = products.length > 0 && products.every(p => p.star);
        const newStarState = !allStarred;

        products.forEach(p => p.star = newStarState);
        renderProductTable();
    }
    // Toggle star cho 1 sản phẩm
    function toggleStar(event, idx) {
        event.stopPropagation();
        if (idx >= 0 && idx < products.length) {
            products[idx].star = !products[idx].star;
            renderProductTable();
        }
    }
    // ==== CRUD ==== //
    function addProduct() {
        const name = document.getElementById('newProductName').value.trim();
        const price = document.getElementById('newProductPrice').value;
        const cost = document.getElementById('newProductCost').value;
        const stock = document.getElementById('newProductStock').value;
        const description = document.getElementById('newProductDescription').value.trim();
        const barcode = document.getElementById('newProductBarcode').value.trim();
        const category = document.getElementById('newProductCategory').value;
        const supplier = document.getElementById('newProductSupplier').value;
        const orderNote = document.getElementById('newProductOrderNote').value.trim();
        const isActive = document.getElementById('newProductStatus').checked;

        // Validate
        if (!name || !price || !cost || !stock) {
            alert('Vui lòng điền đầy đủ thông tin bắt buộc!');
            return;
        }

        // Collect images
        const imageElements = document.querySelectorAll('#newProductImages .product-image-item img');
        const images = Array.from(imageElements).map(img => img.src);

        const stockNum = parseInt(stock);
        const priceNum = parseInt(price);
        const costNum = parseInt(cost);

        const newProduct = {
            code: "SP" + Math.floor(Math.random() * 1000000).toString().padStart(6, '0'),
            name,
            price: priceNum,
            cost: costNum,
            stock: stockNum,
            barcode,
            category,
            supplier,
            description,
            orderNote,
            status: stockNum > 0 ? '<span class="badge bg-success">Còn hàng</span>' : '<span class="badge bg-danger">Hết hàng</span>',
            business: stockNum <= 0 ? '<span class="badge bg-danger">Ngừng KD</span>' :
                (isActive ? '<span class="badge bg-success">Kinh doanh</span>' : '<span class="badge bg-danger">Ngừng KD</span>'),
            created: new Date().toLocaleDateString('vi-VN') + " " + new Date().toLocaleTimeString('vi-VN', {hour: '2-digit', minute:'2-digit'}),
            star: false,
            images: images,
            checked: false
        };

        // Add to products array
        if (!Array.isArray(products)) {
            products = [];
        }
        products.unshift(newProduct);
        renderProductTable();

        // Reset form and close modal
        const modal = bootstrap.Modal.getInstance(document.getElementById('addProductModal'));
        if (modal) {
            modal.hide();
        }

        // Reset form
        document.getElementById('addProductForm').reset();
        // Clear images
        const imagesContainer = document.getElementById('newProductImages');
        if (imagesContainer) {
            const placeholder = imagesContainer.querySelector('.image-upload-placeholder');
            Array.from(imagesContainer.children).forEach(child => {
                if (child !== placeholder) {
                    child.remove();
                }
            });
            if (placeholder) {
                placeholder.style.display = 'block';
            }
        }
        // Generate new product code
        document.getElementById('newProductCode').value = "SP" + Math.floor(Math.random() * 1000000).toString().padStart(6, '0');
        alert('Đã thêm sản phẩm mới thành công!');
    }

    function showProductDetailByRow(row, idx) {
        const detailRow = row.nextElementSibling;

        // Nếu đang hiển thị chi tiết của hàng này, đóng nó lại
        if (detailRow && detailRow.classList.contains('show')) {
            detailRow.classList.remove('show');
            row.classList.remove('selected-row');
            setTimeout(() => {
                if (!detailRow.classList.contains('show')) {
                    detailRow.style.display = 'none';
                }
            }, 300);
            currentProduct = null;
            currentDetailRow = null;
            return;
        }

        // Ẩn tất cả chi tiết và bỏ chọn các hàng
        document.querySelectorAll('.product-detail-row').forEach(r => {
            r.classList.remove('show');
            setTimeout(() => {
                if (!r.classList.contains('show')) {
                    r.style.display = 'none';
                }
            }, 300);
        });
        document.querySelectorAll('tbody tr').forEach(r => r.classList.remove('selected-row'));

        // Hiện chi tiết cho hàng được chọn
        if (detailRow && detailRow.classList.contains('product-detail-row')) {
            detailRow.style.display = 'table-row';
            // Trigger reflow
            detailRow.offsetHeight;
            detailRow.classList.add('show');
            row.classList.add('selected-row');
            currentProduct = products[idx];
            currentDetailRow = detailRow;
        }
    }
    function editProductDetail(idx) {
        updateEditModalSelects().then(() => {
            const p = products[idx];
            document.getElementById('editProductCode').value = p.code;
            document.getElementById('editProductBarcode').value = p.barcode || '';
            document.getElementById('editProductName').value = p.name;
            document.getElementById('editProductCategory').value = p.category || '';
            document.getElementById('editProductSupplier').value = p.supplier || '';
            document.getElementById('editProductPrice').value = p.price.toString().replace(/[^0-9]/g, '');
            document.getElementById('editProductCost').value = p.cost.toString().replace(/[^0-9]/g, '');
            document.getElementById('editProductStock').value = p.stock;
            document.getElementById('editProductDescription').value = p.description || '';
            document.getElementById('editProductOrderNote').value = p.orderNote || '';

            // Handle business status switch
            const businessStatusSwitch = document.getElementById('editProductStatus');
            businessStatusSwitch.checked = !p.business.includes('Ngừng');
            businessStatusSwitch.disabled = p.stock <= 0;

            document.getElementById('editProductModal').setAttribute('data-edit-idx', idx);
            var modal = new bootstrap.Modal(document.getElementById('editProductModal'));
            modal.show();
        });
    }
    function saveProductChanges() {
        const idx = +document.getElementById('editProductModal').getAttribute('data-edit-idx');
        if (isNaN(idx)) return;

        const product = products[idx];
        product.barcode = document.getElementById('editProductBarcode').value;
        product.name = document.getElementById('editProductName').value;
        product.category = document.getElementById('editProductCategory').value;
        product.supplier = document.getElementById('editProductSupplier').value;
        product.price = document.getElementById('editProductPrice').value;
        product.cost = document.getElementById('editProductCost').value;
        const newStock = parseInt(document.getElementById('editProductStock').value);
        product.stock = newStock;
        // Update stock status based on quantity
        product.status = newStock > 0 ?
            '<span class="badge bg-success">Còn hàng</span>' :
            '<span class="badge bg-danger">Hết hàng</span>';
        // Automatically set business status based on stock
        if (newStock <= 0) {
            product.business = '<span class="badge bg-danger">Ngừng KD</span>';
            document.getElementById('editProductStatus').disabled = true;
        } else {
            document.getElementById('editProductStatus').disabled = false;
            const isActive = document.getElementById('editProductStatus').checked;
            product.business = isActive ?
                '<span class="badge bg-success">Kinh doanh</span>' :
                '<span class="badge bg-danger">Ngừng KD</span>';
        }
        product.description = document.getElementById('editProductDescription').value;
        product.orderNote = document.getElementById('editProductOrderNote').value;
        renderProductTable();
        var modal = bootstrap.Modal.getInstance(document.getElementById('editProductModal'));
        modal.hide();
        alert('Đã cập nhật thông tin sản phẩm!');
    }
    function deleteProductDetail(idx) {
        if (!confirm('Xóa sản phẩm này?')) return;
        products.splice(idx, 1);
        renderProductTable();
        alert('Đã xóa sản phẩm!');
    }
    function printProductLabel(idx) {
        alert('In tem mã cho: ' + products[idx].name + '\nMã: ' + products[idx].code);
    }
    function copyProductDetail(idx) {
        const p = products[idx];
        const text = `\nTên: ${p.name}\nMã: ${p.code}\nGiá bán: ${p.price}\nTồn kho: ${p.stock}\nMô tả: ${p.description}`;
        navigator.clipboard.writeText(text.trim());
        alert('Đã sao chép thông tin sản phẩm!');
    }
    function toggleBusinessStatus(idx) {
        const isCurrentlyActive = !products[idx].business.includes('Ngừng');
        updateBusinessStatus(idx, !isCurrentlyActive);
        alert(isCurrentlyActive ? 'Đã ngừng kinh doanh sản phẩm!' : 'Đã mở lại kinh doanh cho sản phẩm!');
    }
    // Thêm các hàm xử lý ảnh và trạng thái
    function addProductImage(productIndex) {
        const input = document.createElement('input');
        input.type = 'file';
        input.accept = 'image/*';
        input.onchange = function(e) {
            const file = e.target.files[0];
            if (file) {
                const reader = new FileReader();
                reader.onload = function(e) {
                    if (!products[productIndex].images) {
                        products[productIndex].images = [];
                    }
                    if (products[productIndex].images.length < 4) {
                        products[productIndex].images.push(e.target.result);
                        renderProductTable();
                    } else {
                        alert('Chỉ được phép thêm tối đa 4 ảnh!');
                    }
                };
                reader.readAsDataURL(file);
            }
        };
        input.click();
    }

    function removeProductImage(productIndex, imageIndex) {
        if (confirm('Bạn có chắc muốn xóa ảnh này?')) {
            if (products[productIndex].images) {
                products[productIndex].images.splice(imageIndex, 1);
                if (products[productIndex].images.length === 0) {
                    delete products[productIndex].images;
                }
            } else if (products[productIndex].image) {
                delete products[productIndex].image;
            }
            renderProductTable();
        }
    }

    function updateBusinessStatus(productIndex, isActive) {
        const product = products[productIndex];
        if (product.stock <= 0) {
            product.business = '<span class="badge bg-danger">Ngừng KD</span>';
            return;
        }
        product.business = isActive ?
            '<span class="badge bg-success">Kinh doanh</span>' :
            '<span class="badge bg-danger">Ngừng KD</span>';
        renderProductTable();
    }
    // Thêm hàm để load danh sách nhà cung cấp
    async function loadSuppliers() {
        try {
            const response = await fetch('supplier.html');
            const html = await response.text();
            const parser = new DOMParser();
            const doc = parser.parseFromString(html, 'text/html');
            const suppliers = [];
            doc.querySelectorAll('table tbody tr').forEach(row => {
                const code = row.cells[2]?.textContent;
                const name = row.cells[3]?.textContent;
                if (code && name) {
                    suppliers.push({ code, name });
                }
            });
            return suppliers;
        } catch (error) {
            console.error('Không thể tải danh sách nhà cung cấp:', error);
            return [];
        }
    }

    // Cập nhật danh sách nhóm hàng và nhà cung cấp trong modal
    async function updateEditModalSelects() {
        // Cập nhật select nhóm hàng
        const categorySelect = document.getElementById('editProductCategory');
        categorySelect.innerHTML = `
        <option value="">Chọn nhóm hàng</option>
        <option value="Đồ chơi trẻ em">Đồ chơi trẻ em</option>
        <option value="Đồ chơi giáo dục">Đồ chơi giáo dục</option>
        <option value="Đồ chơi mô hình">Đồ chơi mô hình</option>
        <option value="Đồ chơi điện tử">Đồ chơi điện tử</option>
        <option value="Đồ chơi vận động">Đồ chơi vận động</option>
        <option value="Đồ chơi xếp hình">Đồ chơi xếp hình</option>
        <option value="Đồ chơi nghệ thuật">Đồ chơi nghệ thuật</option>
      `;

        // Cập nhật select nhà cung cấp
        const supplierSelect = document.getElementById('editProductSupplier');
        const suppliers = await loadSuppliers();
        supplierSelect.innerHTML = '<option value="">Chọn nhà cung cấp</option>' +
            suppliers.map(s => `<option value="${s.code}">${s.name}</option>`).join('');
    }

    // ==== IMPORT/EXPORT/SEARCH/FILTER giữ nguyên như cũ, chỉ thao tác trên mảng products và render lại bảng sau khi thay đổi ==== //
    // ... giữ lại các hàm filter, import/export nếu cần ...

    // Hàm chuyển đổi định dạng ngày từ dd/mm/yyyy sang yyyy-mm-dd
    function convertDateFormat(dateStr) {
        if (!dateStr) return '';
        const parts = dateStr.split('/');
        if (parts.length === 3) {
            // Chỉ lấy ngày tháng năm, bỏ qua giờ phút
            return `${parts[2].split(' ')[0]}-${parts[1].padStart(2, '0')}-${parts[0].padStart(2, '0')}`;
        }
        return dateStr;
    }

    // Hàm so sánh ngày
    function isDateInRange(dateStr, startDate, endDate) {
        if (!dateStr) return false;

        // Chuyển đổi ngày của sản phẩm sang định dạng yyyy-mm-dd
        const productDate = convertDateFormat(dateStr.split(' ')[0]);

        // Nếu không có ngày bắt đầu và kết thúc, return true
        if (!startDate && !endDate) return true;

        // Nếu chỉ có ngày bắt đầu
        if (startDate && !endDate) {
            return productDate >= startDate;
        }

        // Nếu chỉ có ngày kết thúc
        if (!startDate && endDate) {
            return productDate <= endDate;
        }

        // Nếu có cả ngày bắt đầu và kết thúc
        return productDate >= startDate && productDate <= endDate;
    }

    function filterProducts() {
        const searchText = document.getElementById('searchInput').value.toLowerCase();
        const category = document.getElementById('filterCategory').value;
        const status = document.getElementById('filterStatus').value;
        const startDate = document.getElementById('filterStartDate').value;
        const endDate = document.getElementById('filterEndDate').value;

        const filteredProducts = products.filter(product => {
            const matchSearch = !searchText ||
                product.code.toLowerCase().includes(searchText) ||
                product.name.toLowerCase().includes(searchText);

            const matchCategory = !category ||
                (product.category && product.category.includes(category));

            // Separate stock status and business status filtering
            const matchStatus = !status ||
                (status === 'Còn hàng' && product.stock > 0) ||
                (status === 'Hết hàng' && product.stock <= 0);

            const matchDate = isDateInRange(product.created, startDate, endDate);

            return matchSearch && matchCategory && matchStatus && matchDate;
        });

        const tbody = document.querySelector('tbody');
        tbody.innerHTML = '';
        filteredProducts.forEach((product, idx) => {
            const originalIndex = products.indexOf(product);
            tbody.insertAdjacentHTML('beforeend', createProductRow(product, originalIndex));
            tbody.insertAdjacentHTML('beforeend', createProductDetailRow(product));
        });

        updateSelectAllCheckbox();
        updateActionButtonsState();
        updateSelectAllStars();
    }

    // Thêm các hàm xử lý thời gian
    function setDateRange(range) {
        const today = new Date();
        let startDate = new Date();
        let endDate = new Date();

        switch (range) {
            case 'today':
                startDate = today;
                endDate = today;
                break;
            case 'yesterday':
                startDate = new Date(today.setDate(today.getDate() - 1));
                endDate = new Date(startDate);
                break;
            case 'thisWeek':
                startDate = new Date(today.setDate(today.getDate() - today.getDay()));
                endDate = new Date();
                break;
            case 'lastWeek':
                startDate = new Date(today.setDate(today.getDate() - today.getDay() - 7));
                endDate = new Date(startDate);
                endDate.setDate(endDate.getDate() + 6);
                break;
            case 'thisMonth':
                startDate = new Date(today.getFullYear(), today.getMonth(), 1);
                endDate = new Date();
                break;
            case 'lastMonth':
                startDate = new Date(today.getFullYear(), today.getMonth() - 1, 1);
                endDate = new Date(today.getFullYear(), today.getMonth(), 0);
                break;
            case 'last7Days':
                startDate = new Date(today.setDate(today.getDate() - 7));
                endDate = new Date();
                break;
            case 'last30Days':
                startDate = new Date(today.setDate(today.getDate() - 30));
                endDate = new Date();
                break;
            case 'last90Days':
                startDate = new Date(today.setDate(today.getDate() - 90));
                endDate = new Date();
                break;
        }

        document.getElementById('filterStartDate').value = formatDate(startDate);
        document.getElementById('filterEndDate').value = formatDate(endDate);
        filterProducts();

        // Cập nhật text trên button
        updateDateRangeButtonText(range);
    }

    function clearDateRange() {
        document.getElementById('filterStartDate').value = '';
        document.getElementById('filterEndDate').value = '';
        document.querySelector('.dropdown-toggle').innerHTML = '<i class="bi bi-calendar3"></i> Thời gian';
        filterProducts();
    }

    function updateDateRangeButtonText(range) {
        const button = document.querySelector('.dropdown-toggle');
        const rangeTexts = {
            'today': 'Hôm nay',
            'yesterday': 'Hôm qua',
            'thisWeek': 'Tuần này',
            'lastWeek': 'Tuần trước',
            'thisMonth': 'Tháng này',
            'lastMonth': 'Tháng trước',
            'last7Days': '7 ngày qua',
            'last30Days': '30 ngày qua',
            'last90Days': '90 ngày qua'
        };
        button.innerHTML = `<i class="bi bi-calendar3"></i> ${rangeTexts[range] || 'Thời gian'}`;
    }

    function formatDate(date) {
        return date.toISOString().split('T')[0];
    }

    function handleDateChange() {
        const startDate = document.getElementById('filterStartDate').value;
        const endDate = document.getElementById('filterEndDate').value;

        // Kiểm tra và điều chỉnh ngày nếu cần
        if (startDate && endDate && startDate > endDate) {
            document.getElementById('filterEndDate').value = startDate;
        }

        // Cập nhật text trên button
        if (startDate || endDate) {
            const formatDisplayDate = (dateStr) => {
                if (!dateStr) return '';
                const date = new Date(dateStr);
                return date.toLocaleDateString('vi-VN');
            };

            let buttonText = 'Thời gian: ';
            if (startDate && endDate) {
                buttonText += `${formatDisplayDate(startDate)} - ${formatDisplayDate(endDate)}`;
            } else if (startDate) {
                buttonText += `Từ ${formatDisplayDate(startDate)}`;
            } else {
                buttonText += `Đến ${formatDisplayDate(endDate)}`;
            }
            document.querySelector('.dropdown-toggle').innerHTML = `<i class="bi bi-calendar3"></i> ${buttonText}`;
        } else {
            document.querySelector('.dropdown-toggle').innerHTML = '<i class="bi bi-calendar3"></i> Thời gian';
        }

        filterProducts();
    }

    // Thêm hàm xử lý thêm mới sản phẩm
    function addNewProductImage() {
        const input = document.createElement('input');
        input.type = 'file';
        input.accept = 'image/*';
        input.onchange = function(e) {
            const file = e.target.files[0];
            if (file) {
                const reader = new FileReader();
                reader.onload = function(e) {
                    const imagesContainer = document.getElementById('newProductImages');
                    const imageCount = imagesContainer.querySelectorAll('.product-image-item').length;

                    if (imageCount < 4) {
                        const imageDiv = document.createElement('div');
                        imageDiv.className = 'product-image-item';
                        imageDiv.innerHTML = `
                <img src="${e.target.result}" alt="Product Image">
                <button class="remove-image" onclick="this.parentElement.remove()">
                  <i class="bi bi-x"></i>
                </button>
              `;

                        // Insert before the placeholder
                        const placeholder = imagesContainer.querySelector('.image-upload-placeholder');
                        imagesContainer.insertBefore(imageDiv, placeholder);

                        // Hide placeholder if 4 images
                        if (imageCount + 1 >= 4) {
                            placeholder.style.display = 'none';
                        }
                    } else {
                        alert('Chỉ được phép thêm tối đa 4 ảnh!');
                    }
                };
                reader.readAsDataURL(file);
            }
        };
        input.click();
    }

    // Thêm hàm khởi tạo mã sản phẩm khi mở modal
    document.getElementById('addProductModal').addEventListener('show.bs.modal', function () {
        document.getElementById('newProductCode').value = "SP" + Math.floor(Math.random() * 1000000).toString().padStart(6, '0');
        // Load suppliers
        loadSuppliers().then(suppliers => {
            const supplierSelect = document.getElementById('newProductSupplier');
            supplierSelect.innerHTML = '<option value="">Chọn nhà cung cấp</option>' +
                suppliers.map(s => `<option value="${s.code}">${s.name}</option>`).join('');
        });
    });

    // Format currency without currency symbol
    function formatCurrency(value) {
        if (typeof value === 'string') {
            value = parseInt(value.replace(/[^\d]/g, '')) || 0;
        }
        return new Intl.NumberFormat('vi-VN').format(value);
    }

    // Thêm các hàm xử lý tác vụ hàng loạt
    function printSelectedProducts() {
        const selectedProducts = products.filter(p => p.checked);
        if (selectedProducts.length === 0) {
            alert('Vui lòng chọn ít nhất một sản phẩm để in!');
            return;
        }
        const productList = selectedProducts.map(p => `${p.name} (${p.code})`).join('\n');
        alert('In tem mã cho các sản phẩm:\n' + productList);
    }

    function copySelectedProducts() {
        const selectedProducts = products.filter(p => p.checked);
        if (selectedProducts.length === 0) {
            alert('Vui lòng chọn ít nhất một sản phẩm để sao chép!');
            return;
        }
        const text = selectedProducts.map(p =>
            `Tên: ${p.name}\nMã: ${p.code}\nGiá bán: ${formatCurrency(p.price)}\nTồn kho: ${formatCurrency(p.stock)}\nMô tả: ${p.description || 'Không có mô tả'}`
        ).join('\n\n');
        navigator.clipboard.writeText(text);
        alert('Đã sao chép thông tin của ' + selectedProducts.length + ' sản phẩm!');
    }

    function deleteSelectedProducts() {
        const selectedProducts = products.filter(p => p.checked);
        if (selectedProducts.length === 0) {
            alert('Vui lòng chọn ít nhất một sản phẩm để xóa!');
            return;
        }
        if (!confirm(`Bạn có chắc muốn xóa ${selectedProducts.length} sản phẩm đã chọn?`)) {
            return;
        }
        products = products.filter(p => !p.checked);
        renderProductTable();
        alert('Đã xóa ' + selectedProducts.length + ' sản phẩm!');
    }

    function toggleBusinessStatusForSelected() {
        const selectedProducts = products.filter(p => p.checked);
        if (selectedProducts.length === 0) {
            alert('Vui lòng chọn ít nhất một sản phẩm!');
            return;
        }

        // Kiểm tra xem có sản phẩm nào có tồn kho <= 0 không
        const hasZeroStock = selectedProducts.some(p => p.stock <= 0);
        if (hasZeroStock) {
            alert('Không thể thay đổi trạng thái kinh doanh cho sản phẩm hết hàng!');
            return;
        }

        const currentStatus = selectedProducts[0].business.includes('Kinh doanh');
        const newStatus = !currentStatus;
        const action = newStatus ? 'mở bán' : 'ngừng bán';

        if (!confirm(`Bạn có chắc muốn ${action} ${selectedProducts.length} sản phẩm đã chọn?`)) {
            return;
        }

        selectedProducts.forEach(p => {
            if (p.stock > 0) { // Chỉ thay đổi trạng thái cho sản phẩm còn hàng
                p.business = newStatus ?
                    '<span class="badge bg-success">Kinh doanh</span>' :
                    '<span class="badge bg-danger">Ngừng KD</span>';
            }
        });

        renderProductTable();
        alert(`Đã ${action} ${selectedProducts.length} sản phẩm!`);
    }

    // Export products function
    function exportProducts() {
        const selectedProducts = products.filter(p => p.checked);
        if (selectedProducts.length === 0) {
            if (!confirm('Không có sản phẩm nào được chọn. Bạn có muốn xuất tất cả sản phẩm?')) {
                return;
            }
        }

        const productsToExport = selectedProducts.length > 0 ? selectedProducts : products;

        // Create CSV content
        const headers = ['Mã hàng', 'Tên hàng', 'Giá bán', 'Giá vốn', 'Tồn kho', 'Trạng thái', 'Trạng thái KD', 'Nhóm hàng', 'Nhà cung cấp', 'Mô tả'];
        const csvContent = [
            headers.join(','),
            ...productsToExport.map(p => [
                p.code,
                `"${p.name.replace(/"/g, '""')}"`,
          p.price,
          p.cost,
          p.stock,
          p.status.includes('Còn') ? 'Còn hàng' : 'Hết hàng',
          p.business.includes('Kinh doanh') ? 'Kinh doanh' : 'Ngừng KD',
          `"${p.category || ''}"`,
          `"${p.supplier || ''}"`,
          `"${(p.description || '').replace(/"/g, '""')}"`
            ].join(','))
        ].join('\n');

        // Create and trigger download
        const blob = new Blob(['\ufeff' + csvContent], { type: 'text/csv;charset=utf-8;' });
        const link = document.createElement('a');
        link.href = URL.createObjectURL(blob);
        link.download = `products_export_${new Date().toISOString().slice(0,10)}.csv`;
        link.click();
    }

    // Import products function
    function importProducts() {
        document.getElementById('importFile').click();
    }

    function handleImport(event) {
        const file = event.target.files[0];
        if (!file) return;

        if (!file.name.toLowerCase().endsWith('.csv')) {
            alert('Vui lòng chọn file CSV!');
            return;
        }

        const reader = new FileReader();
        reader.onload = function(e) {
            try {
                const text = e.target.result;
                const rows = text.split('\n').map(row => row.trim()).filter(row => row);
                const headers = rows[0].split(',');

                const newProducts = rows.slice(1).map(row => {
                    const values = row.split(',').map(val => val.trim().replace(/^"|"$/g, ''));
                    return {
                        code: values[0] || `SP${Math.floor(Math.random() * 1000000).toString().padStart(6, '0')}`,
                        name: values[1] || '',
                        price: parseInt(values[2]) || 0,
                        cost: parseInt(values[3]) || 0,
                        stock: parseInt(values[4]) || 0,
                        status: parseInt(values[4]) > 0 ? '<span class="badge bg-success">Còn hàng</span>' : '<span class="badge bg-danger">Hết hàng</span>',
                        business: parseInt(values[4]) <= 0 ? '<span class="badge bg-danger">Ngừng KD</span>' :
                            (values[6]?.includes('Kinh doanh') ? '<span class="badge bg-success">Kinh doanh</span>' : '<span class="badge bg-danger">Ngừng KD</span>'),
                        category: values[7] || '',
                        supplier: values[8] || '',
                        description: values[9] || '',
                        created: new Date().toLocaleDateString('vi-VN') + " " + new Date().toLocaleTimeString('vi-VN', {hour: '2-digit', minute:'2-digit'}),
                        star: false,
                        images: []
                    };
                });

                // Add new products to the beginning of the array
                products.unshift(...newProducts);
                renderProductTable();
                alert(`Đã nhập thành công ${newProducts.length} sản phẩm!`);
            } catch (error) {
                console.error('Import error:', error);
                alert('Có lỗi xảy ra khi nhập file. Vui lòng kiểm tra định dạng file CSV!');
            }
        };
        reader.readAsText(file, 'UTF-8');
        event.target.value = ''; // Reset file input
    }

    // Toggle business status for selected products
    function toggleBusinessStatusForSelected() {
        const selectedProducts = products.filter(p => p.checked);
        if (selectedProducts.length === 0) {
            alert('Vui lòng chọn ít nhất một sản phẩm!');
            return;
        }

        // Count products that can be toggled (stock > 0)
        const validProducts = selectedProducts.filter(p => p.stock > 0);
        if (validProducts.length === 0) {
            alert('Không thể thay đổi trạng thái kinh doanh cho sản phẩm hết hàng!');
            return;
        }

        // Determine current status of valid products
        const currentStatus = validProducts[0].business.includes('Kinh doanh');
        const newStatus = !currentStatus;
        const action = newStatus ? 'mở bán' : 'ngừng bán';

        const invalidCount = selectedProducts.length - validProducts.length;
        let confirmMessage = `Bạn có chắc muốn ${action} ${validProducts.length} sản phẩm đã chọn?`;
        if (invalidCount > 0) {
            confirmMessage += `\n(${invalidCount} sản phẩm hết hàng sẽ không được thay đổi trạng thái)`;
        }

        if (!confirm(confirmMessage)) {
            return;
        }

        // Update status for valid products
        validProducts.forEach(p => {
            p.business = newStatus ?
                '<span class="badge bg-success">Kinh doanh</span>' :
                '<span class="badge bg-danger">Ngừng KD</span>';
        });

        renderProductTable();
        alert(`Đã ${action} ${validProducts.length} sản phẩm!`);
    }

    // Toggle all checkboxes
    function toggleSelectAll(checkbox) {
        const productCheckboxes = document.querySelectorAll('.product-checkbox');
        productCheckboxes.forEach((cb, idx) => {
            if (idx < products.length) {
                cb.checked = checkbox.checked;
                products[idx].checked = checkbox.checked;
            }
        });
        updateActionButtonsState();
    }

    // Handle individual checkbox changes
    function toggleProductSelection(event, index) {
        event.stopPropagation();
        if (index >= 0 && index < products.length) {
            products[index].checked = !products[index].checked;
            updateSelectAllCheckbox();
            updateActionButtonsState();
        }
    }

    // Update select all checkbox state
    function updateSelectAllCheckbox() {
        const selectAll = document.getElementById('selectAll');
        if (!selectAll) return;

        const checkedProducts = products.filter(p => p.checked);
        selectAll.checked = checkedProducts.length === products.length;
        selectAll.indeterminate = checkedProducts.length > 0 && checkedProducts.length < products.length;
    }

    // Update action buttons state based on selection
    function updateActionButtonsState() {
        const hasSelection = products.some(p => p.checked);
        const selectedProducts = products.filter(p => p.checked);
        const hasValidProducts = selectedProducts.some(p => p.stock > 0);

        // Cập nhật trạng thái nút kinh doanh
        const businessBtn = document.getElementById('businessActionBtn');
        const startBusinessBtn = document.getElementById('startBusinessBtn');
        const stopBusinessBtn = document.getElementById('stopBusinessBtn');

        if (businessBtn) {
            businessBtn.disabled = !hasSelection;
            if (!hasSelection) {
                businessBtn.setAttribute('title', 'Vui lòng chọn sản phẩm');
            } else {
                businessBtn.removeAttribute('title');
            }
        }

        if (startBusinessBtn) {
            startBusinessBtn.classList.toggle('disabled', !hasValidProducts);
            if (!hasValidProducts) {
                startBusinessBtn.setAttribute('title', 'Không thể mở kinh doanh cho sản phẩm hết hàng');
            } else {
                startBusinessBtn.removeAttribute('title');
            }
        }

        if (stopBusinessBtn) {
            stopBusinessBtn.classList.toggle('disabled', !hasSelection);
        }

        // Cập nhật trạng thái nút xóa
        const deleteBtn = document.getElementById('deleteSelectedBtn');
        if (deleteBtn) {
            deleteBtn.disabled = !hasSelection;
            if (!hasSelection) {
                deleteBtn.setAttribute('title', 'Vui lòng chọn sản phẩm');
            } else {
                deleteBtn.removeAttribute('title');
            }
        }
    }

    // Add button IDs to the toolbar
    document.addEventListener('DOMContentLoaded', function() {
        const toolbar = document.querySelector('.d-flex.gap-2');
        if (toolbar) {
            const buttons = toolbar.querySelectorAll('button');
            buttons.forEach(btn => {
                if (btn.onclick) {
                    const action = btn.onclick.toString().match(/\w+\(\)/)?.[0].replace('()', '');
                    if (action) {
                        btn.id = action + 'Btn';
                    }
                }
            });
        }
        renderProductTable();
        updateActionButtonsState();
    });

    // Thêm các hàm xử lý kinh doanh mới
    function startBusinessSelected() {
        const selectedProducts = products.filter(p => p.checked);
        if (selectedProducts.length === 0) {
            alert('Vui lòng chọn ít nhất một sản phẩm!');
            return;
        }

        const validProducts = selectedProducts.filter(p => p.stock > 0);
        if (validProducts.length === 0) {
            alert('Không thể mở kinh doanh cho sản phẩm hết hàng!');
            return;
        }

        const invalidCount = selectedProducts.length - validProducts.length;
        let confirmMessage = `Bạn có chắc muốn mở kinh doanh ${validProducts.length} sản phẩm đã chọn?`;
        if (invalidCount > 0) {
            confirmMessage += `\n(${invalidCount} sản phẩm hết hàng sẽ không được thay đổi trạng thái)`;
        }

        if (!confirm(confirmMessage)) {
            return;
        }

        validProducts.forEach(p => {
            p.business = '<span class="badge bg-success">Kinh doanh</span>';
        });

        renderProductTable();
        alert(`Đã mở kinh doanh ${validProducts.length} sản phẩm!`);
    }

    function stopBusinessSelected() {
        const selectedProducts = products.filter(p => p.checked);
        if (selectedProducts.length === 0) {
            alert('Vui lòng chọn ít nhất một sản phẩm!');
            return;
        }

        if (!confirm(`Bạn có chắc muốn ngừng kinh doanh ${selectedProducts.length} sản phẩm đã chọn?`)) {
            return;
        }

        selectedProducts.forEach(p => {
            p.business = '<span class="badge bg-danger">Ngừng KD</span>';
        });

        renderProductTable();
        alert(`Đã ngừng kinh doanh ${selectedProducts.length} sản phẩm!`);
    }
</script>
<style>
    .card {
        border-radius: 16px !important;
        box-shadow: 0 2px 16px rgba(0,0,0,0.06) !important;
        border: none !important;
    }
    .table {
        border-radius: 12px !important;
        overflow: hidden;
        background: #fff;
    }
    .table thead th {
        background: #f6f8fa !important;
        font-weight: 600;
        font-size: 1.05rem;
    }
    .table tbody tr {
        transition: background 0.2s;
    }
    .table tbody tr:hover {
        background: #f0f6ff;
    }
    .badge.bg-success {
        background: #22c55e !important;
    }
    .badge.bg-danger {
        background: #ef4444 !important;
    }
    .btn-primary {
        background: #2563eb !important;
        border: none;
    }
    .btn-success {
        background: #22c55e !important;
        border: none;
    }
    .btn-outline-secondary {
        border-radius: 8px;
    }
    .input-group-text {
        background: #fff;
        border-right: 0;
    }
    .form-control, .form-select {
        border-radius: 8px !important;
    }
    .product-detail-row {
        display: none;
        background: #fff;
        transition: all 0.3s ease;
        max-height: 0;
        overflow: hidden;
    }
    .product-detail-row.show {
        display: table-row;
        max-height: 1000px;
    }
    .product-detail-row td {
        padding: 0 !important;
    }
    .product-detail-row .product-detail-content {
        padding: 1.5rem;
        border-top: 1px solid #eee;
        transform: translateY(-100%);
        opacity: 0;
        transition: all 0.3s ease;
    }
    .product-detail-row.show .product-detail-content {
        transform: translateY(0);
        opacity: 1;
    }
    .product-detail-row .product-detail-content .row {
        margin: 0;
    }
    .product-detail-row .product-detail-content img {
        max-height: 200px;
        object-fit: contain;
        border-radius: 8px;
        box-shadow: 0 2px 8px rgba(0,0,0,0.1);
    }
    .detail-section {
        background: #f8fafc;
        padding: 1rem;
        border-radius: 12px;
        margin-bottom: 1rem;
        border: 1px solid #e5e7eb;
        transition: all 0.2s ease;
    }
    .detail-section:hover {
        box-shadow: 0 4px 12px rgba(0,0,0,0.05);
        transform: translateY(-2px);
    }
    .detail-section h5 {
        color: #2563eb;
        margin-bottom: 1rem;
        font-weight: 600;
    }
    .detail-label {
        font-weight: 600;
        color: #4b5563;
        margin-bottom: 0.5rem;
    }
    .detail-value {
        color: #1f2937;
    }
    .selected-row {
        background: #f0f6ff !important;
    }
    .star-header {
        pointer-events: none;
        opacity: 0.7;
    }
    .star-outline {
        color: #ffc107;
        cursor: pointer;
        transition: color 0.2s;
    }
    .star-outline.text-warning {
        color: #ffc107 !important;
    }
    .header-star {
        cursor: pointer;
        font-size: 1.1em;
        transition: transform 0.2s;
    }
    .header-star:hover {
        transform: scale(1.2);
    }
    .product-images {
        display: grid;
        grid-template-columns: repeat(2, 1fr);
        gap: 1rem;
        margin-bottom: 1rem;
    }
    .product-image-item {
        position: relative;
        aspect-ratio: 1;
        border-radius: 8px;
        overflow: hidden;
        border: 2px solid #e5e7eb;
    }
    .product-image-item img {
        width: 100%;
        height: 100%;
        object-fit: cover;
    }
    .product-image-item .remove-image {
        position: absolute;
        top: 0.5rem;
        right: 0.5rem;
        background: rgba(239, 68, 68, 0.9);
        color: white;
        border: none;
        border-radius: 50%;
        width: 24px;
        height: 24px;
        font-size: 14px;
        cursor: pointer;
        display: flex;
        align-items: center;
        justify-content: center;
    }
    .image-upload-placeholder {
        border: 2px dashed #e5e7eb;
        border-radius: 8px;
        display: flex;
        align-items: center;
        justify-content: center;
        cursor: pointer;
        background: #f9fafb;
        aspect-ratio: 1;
        transition: all 0.2s;
    }
    .image-upload-placeholder:hover {
        border-color: #2563eb;
        background: #f0f6ff;
    }
    .business-status-switch {
        position: relative;
        display: inline-block;
        width: 60px;
        height: 30px;
    }
    .business-status-switch input {
        opacity: 0;
        width: 0;
        height: 0;
    }
    .business-status-slider {
        position: absolute;
        cursor: pointer;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        background-color: #ef4444;
        transition: .4s;
        border-radius: 34px;
    }
    .business-status-slider:before {
        position: absolute;
        content: "";
        height: 22px;
        width: 22px;
        left: 4px;
        bottom: 4px;
        background-color: white;
        transition: .4s;
        border-radius: 50%;
    }
    input:checked + .business-status-slider {
        background-color: #22c55e;
    }
    input:checked + .business-status-slider:before {
        transform: translateX(30px);
    }
    .date-range-inputs {
        display: flex;
        gap: 10px;
        margin-left: 10px;
        flex: 1;
    }
    .date-input-group {
        display: flex;
        align-items: center;
        gap: 8px;
        background: #fff;
        padding: 0 10px;
        border: 1px solid #dee2e6;
        border-radius: 6px;
        flex: 1;
    }
    .date-input-group label {
        color: #6c757d;
        font-size: 0.9rem;
        margin-bottom: 0;
        white-space: nowrap;
    }
    .date-input-group input[type="date"] {
        border: none;
        padding: 6px 0;
        flex: 1;
        min-width: 120px;
    }
    .date-input-group input[type="date"]:focus {
        outline: none;
        box-shadow: none;
    }
    .dropdown-toggle {
        border-radius: 6px;
        padding: 8px 12px;
        display: flex;
        align-items: center;
        gap: 6px;
        white-space: nowrap;
    }
    .dropdown-toggle i {
        font-size: 1.1rem;
    }
    .dropdown-menu {
        padding: 8px 0;
        border-radius: 8px;
        box-shadow: 0 2px 12px rgba(0,0,0,0.1);
    }
    .dropdown-item {
        padding: 8px 16px;
    }
    .dropdown-item:hover {
        background-color: #f0f6ff;
    }
    .dropdown-divider {
        margin: 4px 0;
    }
    .badge {
        font-size: 0.875rem;
        padding: 0.35em 0.65em;
        font-weight: 500;
    }
    .table td {
        vertical-align: middle;
    }
</style>
<!-- ======= Footer ======= -->
<footer id="footer" class="footer">
    <div class="copyright">
        &copy; 2025 <strong><span>Aishiba</span></strong>. All Rights Reserved.
    </div>
    <div class="credits">
        Designed by <a href="#">Team Seven</a>
    </div>
</footer><!-- End Footer -->
<a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>
<!-- Vendor JS Files -->
<script src="assets/vendor/apexcharts/apexcharts.min.js" defer></script>
<script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js" defer></script>
<script src="assets/vendor/chart.js/chart.umd.js" defer></script>
<script src="assets/vendor/echarts/echarts.min.js" defer></script>
<script src="assets/vendor/quill/quill.js" defer></script>
<script src="assets/vendor/simple-datatables/simple-datatables.js" defer></script>
<script src="assets/vendor/tinymce/tinymce.min.js" defer></script>
<script src="assets/vendor/php-email-form/validate.js" defer></script>
<!-- Template Main JS File -->
<script src="assets/js/main.js"></script>

</body>
</html>