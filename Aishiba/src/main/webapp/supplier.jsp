<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 5/8/2025
  Time: 12:49 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    .product-detail-card {
        max-width: 1000px;
        margin: 0 auto;
        background: #fff;
        border-radius: 16px;
        box-shadow: 0 2px 16px rgba(0,0,0,0.06);
    }
    .product-detail-card h2 {
        font-size: 2rem;
    }
    .product-detail-card .btn {
        min-width: 120px;
    }
    .star-outline {
        color: #ffc107;
        cursor: pointer;
    }
    .btn-sm {
        padding: 2px 6px;
        font-size: 0.9em;
        margin-right: 2px;
    }
    .btn, .dropdown .btn {
        border-radius: 8px !important;
        min-width: 100px;
        height: 34px;
        display: flex;
        align-items: center;
        justify-content: center;
        font-size: 0.95rem;
        font-weight: 500;
        gap: 4px;
        padding: 0 10px;
        box-shadow: 0 0 0 2px #e0e7ef;
        margin-right: 4px;
        transition: box-shadow 0.2s;
    }
    .btn-sm, .dropdown .btn-sm {
        min-width: 90px;
        height: 32px;
        font-size: 0.92rem;
        padding: 0 8px;
    }
    .d-flex.flex-row.align-items-center > .btn:last-child,
    .d-flex.flex-row.align-items-center > .dropdown:last-child {
        margin-right: 0;
    }
    .dropdown-toggle::after {
        margin-left: 8px;
    }
    .btn:focus, .btn:active {
        box-shadow: 0 0 0 3px #2563eb55;
    }
    .btn-group-header > * {
        margin-right: 4px;
    }
    .btn-group-header > *:last-child {
        margin-right: 0;
    }
    .btn, .dropdown .btn {
        border-radius: 8px !important;
        min-width: 90px;
        height: 32px;
        display: flex;
        align-items: center;
        justify-content: center;
        font-size: 0.92rem;
        font-weight: 500;
        gap: 4px;
        padding: 0 8px;
        box-shadow: 0 0 0 2px #e0e7ef;
        transition: box-shadow 0.2s;
    }
</style>
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
            <a class="nav-link" data-bs-target="#components-nav" data-bs-toggle="collapse" href="#">
                <i class="bi bi-box-seam fs-5"></i><span>Sản phẩm</span><i class="bi bi-chevron-down ms-auto"></i>
            </a>
            <ul id="components-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
                <li>
                    <a href="product.html">
                        <i class="bi bi-list-ul fs-5"></i><span>Danh sách sản phẩm</span>
                    </a>
                </li>
                <li>
                    <a href="supplier.html">
                        <i class="bi bi-truck fs-5"></i><span>Nhà cung cấp</span>
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
                <i class="bi bi-cart-check fs-5"></i><span>Đơn hàng</span><i class="bi bi-chevron-down ms-auto"></i>
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
        <h1>Danh sách nhà cung cấp</h1>
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="#">Trang chủ</a></li>
                <li class="breadcrumb-item"><a href="#">Sản phẩm</a></li>
                <li class="breadcrumb-item active">Danh sách nhà cung cấp</li>
            </ol>
        </nav>
    </div>
    <section class="section">
        <div class="container-fluid px-0">
            <div class="card shadow-sm rounded-4 p-4" style="border: none;">
                <div class="d-flex justify-content-between align-items-center mb-3 flex-wrap flex-row-reverse">
                    <div class="d-flex flex-row align-items-center btn-group-header">
                        <button class="btn btn-primary btn-sm" data-bs-toggle="modal" data-bs-target="#addSupplierModal">
                            <i class="bi bi-plus-lg me-1"></i> Thêm mới
                        </button>
                        <div class="dropdown">
                            <button class="btn btn-success btn-sm dropdown-toggle" type="button" data-bs-toggle="dropdown">
                                <i class="bi bi-file-earmark me-1"></i> Xuất/Nhập
                            </button>
                            <ul class="dropdown-menu">
                                <li>
                                    <a class="dropdown-item" href="#" onclick="exportSuppliers()">
                                        <i class="bi bi-file-earmark-excel me-2"></i>Xuất Excel
                                    </a>
                                </li>
                                <li>
                                    <a class="dropdown-item" href="#" onclick="importSuppliers()">
                                        <i class="bi bi-file-earmark-arrow-up me-2"></i>Nhập Excel
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <button class="btn btn-danger btn-sm" onclick="deleteSelectedSuppliers()" title="Xóa" id="deleteSelectedBtn">
                            <i class="bi bi-trash me-1"></i> Xóa
                        </button>
                        <div class="dropdown">
                            <button class="btn btn-outline-secondary btn-sm dropdown-toggle" type="button" data-bs-toggle="dropdown">
                                <i class="bi bi-arrow-repeat me-1"></i> Trạng thái hợp tác
                            </button>
                            <ul class="dropdown-menu">
                                <li>
                                    <a class="dropdown-item text-warning" href="#" onclick="bulkChangeSupplierStatus('Ngừng hợp tác')">
                                        <i class="bi bi-x-octagon me-1"></i> Hủy hợp tác
                                    </a>
                                </li>
                                <li>
                                    <a class="dropdown-item text-success" href="#" onclick="bulkChangeSupplierStatus('Đang hợp tác')">
                                        <i class="bi bi-check2-circle me-1"></i> Hợp tác lại
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <h2 class="fw-bold text-primary mb-0 ms-2">Danh sách nhà cung cấp</h2>
                </div>
                <div class="row g-2 mb-3">
                    <div class="col-md-4">
                        <div class="input-group">
                            <span class="input-group-text bg-white"><i class="bi bi-search"></i></span>
                            <input type="text" class="form-control" id="searchSupplierInput" placeholder="Tìm kiếm theo mã, tên, SĐT..." oninput="filterSuppliers()">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <select class="form-select" id="filterStatus" title="Lọc theo trạng thái" onchange="filterSuppliers()">
                            <option value="">Tất cả trạng thái</option>
                            <option value="Đang hợp tác">Đang hợp tác</option>
                            <option value="Ngừng hợp tác">Ngừng hợp tác</option>
                        </select>
                    </div>
                </div>
                <div class="table-responsive">
                    <table class="table table-hover align-middle rounded-4 overflow-hidden">
                        <thead class="table-light">
                        <tr>
                            <th style="width:40px">
                                <input type="checkbox" class="form-check-input" id="selectAllSupplier" title="Chọn tất cả" onclick="toggleSelectAllSupplier(this)">
                            </th>
                            <th style="width:40px">
                                <i class="bi bi-star header-star text-warning" id="selectAllSupplierStars" title="Chọn/Bỏ chọn tất cả nổi bật" onclick="toggleSelectAllSupplierStars()"></i>
                            </th>
                            <th>Mã NCC</th>
                            <th>Tên nhà cung cấp</th>
                            <th>Số điện thoại</th>
                            <th>Email</th>
                            <th>Địa chỉ</th>
                            <th class="text-center">Trạng thái</th>
                            <th>Ghi chú</th>
                        </tr>
                        </thead>
                        <tbody id="supplierTableBody">
                        <tr>
                            <td><input type="checkbox" class="form-check-input supplier-checkbox" title="Chọn nhà cung cấp này" onclick="event.stopPropagation();"></td>
                            <td><i class="bi bi-star star-outline" onclick="toggleSupplierStar(this, event)"></i></td>
                            <td>NCC001</td>
                            <td>Công ty ABC</td>
                            <td>0901234567</td>
                            <td>abc@company.com</td>
                            <td>123 Đường A, Quận B</td>
                            <td class="text-center"><span class="badge bg-success">Đang hợp tác</span></td>
                            <td>Chuyên đồ chơi trẻ em</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" class="form-check-input supplier-checkbox" title="Chọn nhà cung cấp này" onclick="event.stopPropagation();"></td>
                            <td><i class="bi bi-star star-outline" onclick="toggleSupplierStar(this, event)"></i></td>
                            <td>NCC002</td>
                            <td>Công ty XYZ</td>
                            <td>0912345678</td>
                            <td>xyz@company.com</td>
                            <td>456 Đường C, Quận D</td>
                            <td class="text-center"><span class="badge bg-success">Đang hợp tác</span></td>
                            <td>Nhà cung cấp xe trẻ em</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" class="form-check-input supplier-checkbox" title="Chọn nhà cung cấp này" onclick="event.stopPropagation();"></td>
                            <td><i class="bi bi-star star-outline" onclick="toggleSupplierStar(this, event)"></i></td>
                            <td>NCC003</td>
                            <td>Thiên Long</td>
                            <td>0987654321</td>
                            <td>thienlong@company.com</td>
                            <td>789 Đường E, Quận F</td>
                            <td class="text-center"><span class="badge bg-danger">Ngừng hợp tác</span></td>
                            <td>Chuyên văn phòng phẩm</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" class="form-check-input supplier-checkbox" title="Chọn nhà cung cấp này" onclick="event.stopPropagation();"></td>
                            <td><i class="bi bi-star star-outline" onclick="toggleSupplierStar(this, event)"></i></td>
                            <td>NCC004</td>
                            <td>Đại Dương Xanh</td>
                            <td>0977123456</td>
                            <td>daiduong@company.com</td>
                            <td>321 Đường G, Quận H</td>
                            <td class="text-center"><span class="badge bg-success">Đang hợp tác</span></td>
                            <td>Đồ chơi biển</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" class="form-check-input supplier-checkbox" title="Chọn nhà cung cấp này" onclick="event.stopPropagation();"></td>
                            <td><i class="bi bi-star star-outline" onclick="toggleSupplierStar(this, event)"></i></td>
                            <td>NCC005</td>
                            <td>Phương Nam</td>
                            <td>0933123456</td>
                            <td>phuongnam@company.com</td>
                            <td>654 Đường I, Quận J</td>
                            <td class="text-center"><span class="badge bg-success">Đang hợp tác</span></td>
                            <td>Đối tác lâu năm</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <div id="supplierDetail" class="product-detail-card p-4 mt-4" style="display:none;">
                <div class="d-flex justify-content-between align-items-center mb-3">
                    <h2 class="fw-bold text-primary mb-0" id="detailSupplierName">Tên nhà cung cấp</h2>
                    <button class="btn btn-outline-secondary" onclick="closeSupplierDetail()"><i class="bi bi-x-lg"></i> Đóng</button>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="mb-2"><strong>Mã NCC:</strong> <span id="detailSupplierCode"></span></div>
                        <div class="mb-2"><strong>Số điện thoại:</strong> <span id="detailSupplierPhone"></span></div>
                        <div class="mb-2"><strong>Email:</strong> <span id="detailSupplierEmail"></span></div>
                    </div>
                    <div class="col-md-6">
                        <div class="mb-2"><strong>Địa chỉ:</strong> <span id="detailSupplierAddress"></span></div>
                        <div class="mb-2"><strong>Trạng thái:</strong> <span id="detailSupplierStatus"></span></div>
                        <div class="mb-2"><strong>Ghi chú:</strong> <span id="detailSupplierNote"></span></div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Modal Thêm/Sửa Nhà Cung Cấp -->
    <div class="modal fade" id="addSupplierModal" tabindex="-1" aria-labelledby="addSupplierModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header bg-primary text-white">
                    <h5 class="modal-title" id="addSupplierModalLabel">Thêm / Sửa Nhà Cung Cấp</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form id="supplierForm">
                        <div class="mb-3">
                            <label for="supplierCode" class="form-label">Mã NCC</label>
                            <input type="text" class="form-control" id="supplierCode" required>
                        </div>
                        <div class="mb-3">
                            <label for="supplierName" class="form-label">Tên nhà cung cấp</label>
                            <input type="text" class="form-control" id="supplierName" required>
                        </div>
                        <div class="mb-3">
                            <label for="supplierPhone" class="form-label">Số điện thoại</label>
                            <input type="text" class="form-control" id="supplierPhone" required>
                        </div>
                        <div class="mb-3">
                            <label for="supplierEmail" class="form-label">Email</label>
                            <input type="email" class="form-control" id="supplierEmail">
                        </div>
                        <div class="mb-3">
                            <label for="supplierAddress" class="form-label">Địa chỉ</label>
                            <input type="text" class="form-control" id="supplierAddress">
                        </div>
                        <div class="mb-3">
                            <label for="supplierStatus" class="form-label">Trạng thái</label>
                            <select class="form-select" id="supplierStatus">
                                <option value="Đang hợp tác">Đang hợp tác</option>
                                <option value="Ngừng hợp tác">Ngừng hợp tác</option>
                            </select>
                        </div>
                        <div class="mb-3">
                            <label for="supplierNote" class="form-label">Ghi chú</label>
                            <textarea class="form-control" id="supplierNote"></textarea>
                        </div>
                        <button type="submit" class="btn btn-success">Lưu</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</main><!-- End #main -->
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
<script>
    function toggleSelectAll(checkbox) {
        document.querySelectorAll('.product-checkbox').forEach(cb => cb.checked = checkbox.checked);
    }
    function toggleSelectAllStars() {
        const stars = document.querySelectorAll('tbody .star-outline');
        const selectAll = Array.from(stars).some(star => !star.classList.contains('text-warning'));
        stars.forEach(star => {
            if (selectAll) {
                star.classList.add('text-warning', 'bi-star-fill');
                star.classList.remove('bi-star');
            } else {
                star.classList.remove('text-warning', 'bi-star-fill');
                star.classList.add('bi-star');
            }
        });
    }
    function toggleStar(star, event) {
        event.stopPropagation();
        star.classList.toggle('text-warning');
        star.classList.toggle('bi-star-fill');
        star.classList.toggle('bi-star');
    }
    let currentProduct = null;

    function showProductDetailByRow(row) {
        // Lấy dữ liệu từ các cột
        const tds = row.querySelectorAll('td');
        const data = {
            code: tds[2].innerText,
            name: tds[3].innerText,
            price: tds[4].innerText,
            cost: tds[5].innerText,
            stock: tds[6].innerText,
            status: tds[7].innerText.trim(),
            business: tds[8].innerText.trim(),
            created: tds[9].innerText,
            // Thêm các trường mô tả, barcode, orderNote, supplier nếu có
            barcode: tds[2].innerText + "BAR", // demo
            category: "Đồ chơi", // demo
            description: "Mô tả sản phẩm " + tds[3].innerText,
            orderNote: "Giao hàng nhanh",
            supplier: "Nhà cung cấp A",
            image: "https://via.placeholder.com/200x200?text=" + encodeURIComponent(tds[3].innerText)
        };
        currentProduct = data;
        showProductDetail(data);
    }

    function showProductDetail(data) {
        document.getElementById('productDetail').style.display = 'block';
        document.getElementById('detailTitle').textContent = data.name;
        document.getElementById('detailCategory').textContent = data.category;
        document.getElementById('detailImage').src = data.image || '';
        document.getElementById('detailCode').textContent = data.code;
        document.getElementById('detailBarcode').textContent = data.barcode;
        document.getElementById('detailCategory2').textContent = data.category;
        document.getElementById('detailStock').textContent = data.stock;
        document.getElementById('detailPrice').textContent = data.price;
        document.getElementById('detailCost').textContent = data.cost;
        document.getElementById('detailDescription').textContent = data.description;
        document.getElementById('detailOrderNote').textContent = data.orderNote;
        document.getElementById('detailSupplier').textContent = data.supplier;
    }

    function closeProductDetail() {
        document.getElementById('productDetail').style.display = 'none';
        currentProduct = null;
    }

    function editProductDetail() {
        if (!currentProduct) return;
        // Mở modal sửa và điền dữ liệu
        document.getElementById('editProductModal').querySelector('#productName').value = currentProduct.name;
        document.getElementById('editProductModal').querySelector('#productPrice').value = currentProduct.price.replace(/[^0-9]/g, '');
        document.getElementById('editProductModal').querySelector('#productCost').value = currentProduct.cost.replace(/[^0-9]/g, '');
        document.getElementById('editProductModal').querySelector('#productStock').value = currentProduct.stock;
        var modal = new bootstrap.Modal(document.getElementById('editProductModal'));
        modal.show();
    }

    function saveProductChanges() {
        if (!currentProduct) return;
        // Lấy dữ liệu mới từ form
        const name = document.getElementById('productName').value;
        const price = document.getElementById('productPrice').value;
        const cost = document.getElementById('productCost').value;
        const stock = document.getElementById('productStock').value;
        // Cập nhật lại chi tiết
        currentProduct.name = name;
        currentProduct.price = price;
        currentProduct.cost = cost;
        currentProduct.stock = stock;
        showProductDetail(currentProduct);
        // Đóng modal
        var modal = bootstrap.Modal.getInstance(document.getElementById('editProductModal'));
        modal.hide();
        // Cập nhật lại bảng (nếu muốn)
        // (Bạn có thể thêm code để cập nhật lại dòng trong bảng nếu cần)
    }

    function printProductLabel() {
        if (!currentProduct) return;
        alert('In tem mã cho: ' + currentProduct.name + '\nMã: ' + currentProduct.code);
    }

    function copyProductDetail() {
        if (!currentProduct) return;
        const text = `
Tên: ${currentProduct.name}
Mã: ${currentProduct.code}
Giá bán: ${currentProduct.price}
Tồn kho: ${currentProduct.stock}
Mô tả: ${currentProduct.description}
      `;
        navigator.clipboard.writeText(text.trim());
        alert('Đã sao chép thông tin sản phẩm!');
    }

    function toggleBusinessStatus() {
        if (!currentProduct) return;
        if (currentProduct.status === "Ngừng kinh doanh") {
            currentProduct.status = "Còn hàng";
            alert("Đã mở lại kinh doanh cho sản phẩm!");
        } else {
            currentProduct.status = "Ngừng kinh doanh";
            alert("Đã ngừng kinh doanh sản phẩm!");
        }
        showProductDetail(currentProduct);
    }

    function deleteProductDetail() {
        if (!currentProduct) return;
        if (confirm('Xóa sản phẩm này?')) {
            // Ẩn chi tiết
            closeProductDetail();
            // Xóa dòng trong bảng (demo: xóa theo mã)
            const rows = document.querySelectorAll('tbody tr');
            rows.forEach(row => {
                if (row.children[2] && row.children[2].innerText === currentProduct.code) {
                    row.remove();
                }
            });
            alert('Đã xóa sản phẩm!');
        }
    }

    function getProductDataFromRow(row) {
        const tds = row.querySelectorAll('td');
        return {
            code: tds[2].innerText,
            name: tds[3].innerText,
            price: tds[4].innerText,
            cost: tds[5].innerText,
            stock: tds[6].innerText,
            status: tds[7].innerText.trim(),
            business: tds[8].innerText.trim(),
            created: tds[9].innerText,
            barcode: tds[2].innerText + "BAR",
            category: "Đồ chơi",
            description: "Mô tả sản phẩm " + tds[3].innerText,
            orderNote: "Giao hàng nhanh",
            supplier: "Nhà cung cấp A",
            image: "https://via.placeholder.com/200x200?text=" + encodeURIComponent(tds[3].innerText)
        };
    }

    function editProductFromList(event, btn) {
        event.stopPropagation();
        const row = btn.closest('tr');
        currentProduct = getProductDataFromRow(row);
        editProductDetail();
    }

    function deleteProductFromList(event, btn) {
        event.stopPropagation();
        const row = btn.closest('tr');
        if (confirm('Xóa sản phẩm này?')) {
            row.remove();
            closeProductDetail();
            alert('Đã xóa sản phẩm!');
        }
    }

    function copyProductFromList(event, btn) {
        event.stopPropagation();
        const row = btn.closest('tr');
        const data = getProductDataFromRow(row);
        const text = `
Tên: ${data.name}
Mã: ${data.code}
Giá bán: ${data.price}
Tồn kho: ${data.stock}
Mô tả: ${data.description}
      `;
        navigator.clipboard.writeText(text.trim());
        alert('Đã sao chép thông tin sản phẩm!');
    }

    function toggleBusinessStatusFromList(event, btn) {
        event.stopPropagation();
        const row = btn.closest('tr');
        const td = row.children[8];
        if (td.innerText.trim() === "Kinh doanh") {
            td.innerHTML = '<span class="badge bg-danger">Ngừng KD</span>';
            alert("Đã ngừng kinh doanh sản phẩm!");
        } else {
            td.innerHTML = '<span class="badge bg-success">Kinh doanh</span>';
            alert("Đã mở lại kinh doanh cho sản phẩm!");
        }
    }

    function printProductLabelFromList(event, btn) {
        event.stopPropagation();
        const row = btn.closest('tr');
        const data = getProductDataFromRow(row);
        alert('In tem mã cho: ' + data.name + '\nMã: ' + data.code);
    }

    function addProduct() {
        // Lấy dữ liệu từ form
        const name = document.getElementById('newProductName').value;
        const price = document.getElementById('newProductPrice').value;
        const cost = document.getElementById('newProductCost').value;
        const stock = document.getElementById('newProductStock').value;
        const description = document.getElementById('newProductDescription').value;
        // Tạo mã hàng tự động (demo)
        const code = "SP" + Math.floor(Math.random() * 1000000).toString().padStart(6, '0');
        // Thêm vào bảng
        const tbody = document.querySelector('tbody');
        const now = new Date();
        const created = now.toLocaleDateString('vi-VN') + " " + now.toLocaleTimeString('vi-VN', {hour: '2-digit', minute:'2-digit'});
        const tr = document.createElement('tr');
        tr.setAttribute('onclick', 'showProductDetailByRow(this)');
        tr.innerHTML = `
        <td><input type="checkbox" class="product-checkbox" title="Chọn sản phẩm này" onclick="event.stopPropagation();"></td>
        <td><i class="bi bi-star star-outline" onclick="toggleStar(this, event)"></i></td>
        <td>${code}</td>
        <td>${name}</td>
        <td>${price}</td>
        <td>${cost}</td>
        <td>${stock}</td>
        <td><span class="badge bg-success">Còn hàng</span></td>
        <td><span class="badge bg-success">Kinh doanh</span></td>
        <td>${created}</td>
      `;
        tbody.prepend(tr);
        // Đóng modal
        var modal = bootstrap.Modal.getInstance(document.getElementById('addProductModal'));
        modal.hide();
        // Reset form
        document.getElementById('addProductForm').reset();
        alert('Đã thêm sản phẩm mới!');
    }

    function handleImport(event) {
        const file = event.target.files[0];
        if (!file) return;
        const reader = new FileReader();
        reader.onload = function(e) {
            const lines = e.target.result.split('\n');
            lines.forEach(line => {
                const [code, name, price, cost, stock, status, business, created] = line.split(',');
                if (name && price) {
                    const tbody = document.querySelector('tbody');
                    const tr = document.createElement('tr');
                    tr.setAttribute('onclick', 'showProductDetailByRow(this)');
                    tr.innerHTML = `
              <td><input type="checkbox" class="product-checkbox" title="Chọn sản phẩm này" onclick="event.stopPropagation();"></td>
              <td><i class="bi bi-star star-outline" onclick="toggleStar(this, event)"></i></td>
              <td>${code || ''}</td>
              <td>${name}</td>
              <td>${price}</td>
              <td>${cost || ''}</td>
              <td>${stock || ''}</td>
              <td><span class="badge bg-success">${status || 'Còn hàng'}</span></td>
              <td><span class="badge bg-success">${business || 'Kinh doanh'}</span></td>
              <td>${created || ''}</td>
            `;
                    tbody.appendChild(tr);
                }
            });
            alert('Đã nhập file thành công!');
        };
        reader.readAsText(file);
    }

    function importProducts() {
        document.getElementById('importFile').click();
    }

    function exportProducts() {
        let csv = '';
        document.querySelectorAll('tbody tr').forEach(tr => {
            const tds = tr.querySelectorAll('td');
            const row = [
                tds[2]?.innerText, tds[3]?.innerText, tds[4]?.innerText, tds[5]?.innerText,
                tds[6]?.innerText, tds[7]?.innerText, tds[8]?.innerText, tds[9]?.innerText
            ].join(',');
            csv += row + '\n';
        });
        const blob = new Blob([csv], {type: 'text/csv'});
        const url = URL.createObjectURL(blob);
        const a = document.createElement('a');
        a.href = url;
        a.download = 'products.csv';
        a.click();
        URL.revokeObjectURL(url);
    }

    function filterByDate() {
        const date = document.getElementById('filterDate').value;
        document.querySelectorAll('tbody tr').forEach(tr => {
            const created = tr.children[9]?.innerText || '';
            if (!date || created.startsWith(date.split('-').reverse().join('/'))) {
                tr.style.display = '';
            } else {
                tr.style.display = 'none';
            }
        });
    }

    function filterProducts() {
        const search = document.getElementById('searchInput').value.toLowerCase();
        const category = document.getElementById('filterCategory').value;
        const status = document.getElementById('filterStatus').value;
        document.querySelectorAll('tbody tr').forEach(tr => {
            const code = tr.children[2]?.innerText.toLowerCase() || '';
            const name = tr.children[3]?.innerText.toLowerCase() || '';
            const group = tr.children[3]?.innerText; // Giả sử nhóm hàng lưu ở tên hoặc bạn có thể thêm cột nhóm hàng riêng
            const stat = tr.children[7]?.innerText || '';
            let show = true;
            if (search && !code.includes(search) && !name.includes(search)) show = false;
            if (category && group !== category) show = false;
            if (status && stat !== status) show = false;
            tr.style.display = show ? '' : 'none';
        });
    }

    function filterSuppliers() {
        const search = document.getElementById('searchSupplierInput').value.toLowerCase();
        document.querySelectorAll('#supplierTableBody tr').forEach(tr => {
            const code = tr.children[0]?.innerText.toLowerCase() || '';
            const name = tr.children[1]?.innerText.toLowerCase() || '';
            const phone = tr.children[2]?.innerText.toLowerCase() || '';
            if (search && !code.includes(search) && !name.includes(search) && !phone.includes(search)) {
                tr.style.display = 'none';
            } else {
                tr.style.display = '';
            }
        });
    }

    function editSupplier(btn) {
        const tr = btn.closest('tr');
        document.getElementById('supplierCode').value = tr.children[0].innerText;
        document.getElementById('supplierName').value = tr.children[1].innerText;
        document.getElementById('supplierPhone').value = tr.children[2].innerText;
        document.getElementById('supplierEmail').value = tr.children[3].innerText;
        document.getElementById('supplierAddress').value = tr.children[4].innerText;
        document.getElementById('supplierStatus').value = tr.children[5].innerText.trim();
        document.getElementById('supplierNote').value = tr.children[6].innerText;
        var modal = new bootstrap.Modal(document.getElementById('addSupplierModal'));
        modal.show();
        // Đánh dấu dòng đang sửa
        document.getElementById('supplierForm').setAttribute('data-editing', tr.rowIndex);
    }

    function deleteSupplier(btn) {
        if (confirm('Bạn có chắc muốn xóa nhà cung cấp này?')) {
            btn.closest('tr').remove();
        }
    }

    document.getElementById('supplierForm').onsubmit = function(e) {
        e.preventDefault();
        const code = document.getElementById('supplierCode').value;
        const name = document.getElementById('supplierName').value;
        const phone = document.getElementById('supplierPhone').value;
        const email = document.getElementById('supplierEmail').value;
        const address = document.getElementById('supplierAddress').value;
        const status = document.getElementById('supplierStatus').value;
        const note = document.getElementById('supplierNote').value;
        const tbody = document.getElementById('supplierTableBody');
        const editingCode = this.getAttribute('data-editing');
        if (editingCode) {
            // Sửa dòng
            const tr = tbody.rows[editingCode-1];
            tr.children[0].innerText = code;
            tr.children[1].innerText = name;
            tr.children[2].innerText = phone;
            tr.children[3].innerText = email;
            tr.children[4].innerText = address;
            tr.children[5].innerHTML = status === 'Đang hợp tác' ? '<span class="badge bg-success">Đang hợp tác</span>' : '<span class="badge bg-danger">Ngừng hợp tác</span>';
            tr.children[6].innerText = note;
            this.removeAttribute('data-editing');
        } else {
            // Thêm mới
            const tr = document.createElement('tr');
            tr.setAttribute('onclick', 'showSupplierDetailByRow(this)');
            tr.innerHTML = `
          <td><input type="checkbox" class="form-check-input supplier-checkbox" title="Chọn nhà cung cấp này" onclick="event.stopPropagation();"></td>
          <td><i class="bi bi-star star-outline" onclick="toggleSupplierStar(this, event)"></i></td>
          <td>${code}</td>
          <td>${name}</td>
          <td>${phone}</td>
          <td>${email}</td>
          <td>${address}</td>
          <td>${status == 'Đang hợp tác' ? '<span class="badge bg-success">Đang hợp tác</span>' : '<span class="badge bg-danger">Ngừng hợp tác</span>'}</td>
          <td>${note}</td>
        `;
            // Dòng chi tiết
            const detailTr = document.createElement('tr');
            detailTr.className = 'supplier-detail-row';
            detailTr.style.display = 'none';
            detailTr.innerHTML = `
          <td colspan="10">
            <div class="supplier-detail-content p-4 bg-light rounded-4 border">
              <div class="row">
                <div class="col-md-6">
                  <div class="mb-2"><strong>Mã NCC:</strong> <span id="detailSupplierCode"></span></div>
                  <div class="mb-2"><strong>Tên nhà cung cấp:</strong> <span id="detailSupplierName"></span></div>
                  <div class="mb-2"><strong>Số điện thoại:</strong> <span id="detailSupplierPhone"></span></div>
                  <div class="mb-2"><strong>Email:</strong> <span id="detailSupplierEmail"></span></div>
                  <div class="mb-2"><strong>Địa chỉ:</strong> <span id="detailSupplierAddress"></span></div>
                </div>
                <div class="col-md-6">
                  <div class="mb-2"><strong>Trạng thái:</strong> <span id="detailSupplierStatus"></span></div>
                  <div class="mb-2"><strong>Ghi chú:</strong> <span id="detailSupplierNote"></span></div>
                  <div class="d-flex gap-2 mt-3">
                    <button class="btn btn-success" onclick="editSupplierDetail()"><i class="bi bi-pencil"></i> Cập nhật</button>
                    <button class="btn btn-warning" onclick="toggleSupplierStatus()"><i class="bi bi-arrow-repeat"></i> Đổi trạng thái</button>
                    <button class="btn btn-danger" onclick="deleteSupplierDetail()"><i class="bi bi-trash"></i> Xóa</button>
                    <button class="btn btn-secondary" onclick="closeSupplierDetail()"><i class="bi bi-x-lg"></i> Đóng</button>
                  </div>
                </div>
              </div>
            </div>
          </td>
        `;
            tbody.appendChild(tr);
            tbody.appendChild(detailTr);
        }
        var modal = bootstrap.Modal.getInstance(document.getElementById('addSupplierModal'));
        modal.hide();
        this.reset();
    };

    function toggleSelectAllSupplier(checkbox) {
        document.querySelectorAll('.supplier-checkbox').forEach(cb => cb.checked = checkbox.checked);
    }
    function toggleSelectAllSupplierStars() {
        const stars = document.querySelectorAll('#supplierTableBody .star-outline');
        const selectAll = Array.from(stars).some(star => !star.classList.contains('text-warning'));
        stars.forEach(star => {
            if (selectAll) {
                star.classList.add('text-warning', 'bi-star-fill');
                star.classList.remove('bi-star');
            } else {
                star.classList.remove('text-warning', 'bi-star-fill');
                star.classList.add('bi-star');
            }
        });
    }
    function toggleSupplierStar(star, event) {
        event.stopPropagation();
        star.classList.toggle('text-warning');
        star.classList.toggle('bi-star-fill');
        star.classList.toggle('bi-star');
    }
    function deleteSelectedSuppliers() {
        if (confirm('Bạn có chắc muốn xóa các nhà cung cấp đã chọn?')) {
            document.querySelectorAll('.supplier-checkbox:checked').forEach(cb => {
                cb.closest('tr').remove();
            });
        }
    }
    function exportSuppliers() {
        let csv = '';
        document.querySelectorAll('#supplierTableBody tr').forEach(tr => {
            const tds = tr.querySelectorAll('td');
            const row = [
                tds[2]?.innerText, tds[3]?.innerText, tds[4]?.innerText, tds[5]?.innerText,
                tds[6]?.innerText, tds[7]?.innerText, tds[8]?.innerText, tds[9]?.innerText
            ].join(',');
            csv += row + '\n';
        });
        const blob = new Blob([csv], {type: 'text/csv'});
        const url = URL.createObjectURL(blob);
        const a = document.createElement('a');
        a.href = url;
        a.download = 'suppliers.csv';
        a.click();
        URL.revokeObjectURL(url);
    }
    function importSuppliers() {
        if (!window.supplierImportInput) {
            window.supplierImportInput = document.createElement('input');
            window.supplierImportInput.type = 'file';
            window.supplierImportInput.accept = '.csv';
            window.supplierImportInput.style.display = 'none';
            window.supplierImportInput.onchange = function(event) {
                const file = event.target.files[0];
                if (!file) return;
                const reader = new FileReader();
                reader.onload = function(e) {
                    const lines = e.target.result.split('\n');
                    lines.forEach(line => {
                        const [code, name, phone, email, address, status, note] = line.split(',');
                        if (name && code) {
                            const tbody = document.getElementById('supplierTableBody');
                            const tr = document.createElement('tr');
                            tr.innerHTML = `
                  <td><input type="checkbox" class="form-check-input supplier-checkbox" title="Chọn nhà cung cấp này" onclick="event.stopPropagation();"></td>
                  <td><i class="bi bi-star star-outline" onclick="toggleSupplierStar(this, event)"></i></td>
                  <td>${code}</td>
                  <td>${name}</td>
                  <td>${phone || ''}</td>
                  <td>${email || ''}</td>
                  <td>${address || ''}</td>
                  <td>${status == 'Ngừng hợp tác' ? '<span class=\"badge bg-danger\">Ngừng hợp tác</span>' : '<span class=\"badge bg-success\">Đang hợp tác</span>'}</td>
                  <td>${note || ''}</td>
                `;
                            tbody.appendChild(tr);
                        }
                    });
                    alert('Đã nhập file thành công!');
                };
                reader.readAsText(file);
            };
            document.body.appendChild(window.supplierImportInput);
        }
        window.supplierImportInput.value = '';
        window.supplierImportInput.click();
    }
    // Hiển thị chi tiết khi click vào dòng (trượt mở ngay dưới dòng được chọn)
    (function() {
        const supplierTable = document.getElementById('supplierTableBody');
        let currentDetailRow = null;
        let currentRow = null;
        if (supplierTable) {
            supplierTable.querySelectorAll('tr').forEach(row => {
                row.onclick = function() {
                    // Nếu đã mở chi tiết ở dòng này thì ẩn đi
                    if (currentRow === this && currentDetailRow) {
                        currentDetailRow.remove();
                        currentDetailRow = null;
                        currentRow = null;
                        return;
                    }
                    // Nếu đang mở chi tiết ở dòng khác thì ẩn đi
                    if (currentDetailRow) {
                        currentDetailRow.remove();
                    }
                    // Lấy dữ liệu
                    const tds = this.querySelectorAll('td');
                    // Tạo dòng chi tiết
                    const detailTr = document.createElement('tr');
                    detailTr.className = 'supplier-detail-row';
                    detailTr.innerHTML = `<td colspan="9">
              <div class="product-detail-card p-4 mt-0" style="animation: slideDown .3s;">
                <div class="d-flex justify-content-between align-items-center mb-3">
                  <h2 class="fw-bold text-primary mb-0" id="detailSupplierName">${tds[3].textContent}</h2>
                  <button class="btn btn-outline-secondary btn-sm" onclick="this.closest('tr').remove();window.currentDetailRow=null;window.currentRow=null;event.stopPropagation();"><i class="bi bi-x-lg"></i> Đóng</button>
                </div>
                <div class="row">
                  <div class="col-md-6">
                    <div class="mb-2"><strong>Mã NCC:</strong> <span>${tds[2].textContent}</span></div>
                    <div class="mb-2"><strong>Số điện thoại:</strong> <span>${tds[4].textContent}</span></div>
                    <div class="mb-2"><strong>Email:</strong> <span>${tds[5].textContent}</span></div>
                  </div>
                  <div class="col-md-6">
                    <div class="mb-2"><strong>Địa chỉ:</strong> <span>${tds[6].textContent}</span></div>
                    <div class="mb-2"><strong>Trạng thái:</strong> <span>${tds[7].innerHTML}</span></div>
                    <div class="mb-2"><strong>Ghi chú:</strong> <span>${tds[8].textContent}</span></div>
                  </div>
                </div>
              </div>
            </td>`;
                    // Chèn sau dòng hiện tại
                    this.parentNode.insertBefore(detailTr, this.nextSibling);
                    currentDetailRow = detailTr;
                    currentRow = this;
                    window.currentDetailRow = detailTr;
                    window.currentRow = this;
                }
            });
        }
    })();
    // CSS hiệu ứng trượt
    const style = document.createElement('style');
    style.innerHTML = `
    @keyframes slideDown {
      from { opacity: 0; transform: translateY(-20px); }
      to { opacity: 1; transform: translateY(0); }
    }
    .supplier-detail-row td { padding: 0 !important; background: #f8fafc; }
    `;
    document.head.appendChild(style);

    function bulkChangeSupplierStatus(status) {
        const checked = document.querySelectorAll('.supplier-checkbox:checked');
        if (checked.length === 0) {
            alert('Vui lòng chọn nhà cung cấp!');
            return;
        }
        checked.forEach(cb => {
            const row = cb.closest('tr');
            const statusTd = row.querySelectorAll('td')[7];
            if (status === 'Ngừng hợp tác') {
                statusTd.innerHTML = '<span class="badge bg-danger">Ngừng hợp tác</span>';
            } else {
                statusTd.innerHTML = '<span class="badge bg-success">Đang hợp tác</span>';
            }
        });
    }
</script>
