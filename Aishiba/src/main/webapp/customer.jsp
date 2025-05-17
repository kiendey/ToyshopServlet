<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Danh sách khách hàng</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="${pageContext.request.contextPath}/assets/img/logo.png" rel="icon">
  <link href="${pageContext.request.contextPath}/assets/img/logo.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.gstatic.com" rel="preconnect">
  <link
          href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i"
          rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="${pageContext.request.contextPath}/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/assets/vendor/bootstrap-icons/bootstrap-icons.css"
        rel="stylesheet">
  <link href="${pageContext.request.contextPath}/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/assets/vendor/quill/quill.snow.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/assets/vendor/quill/quill.bubble.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/assets/vendor/simple-datatables/style.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="${pageContext.request.contextPath}/assets/css/style.css" rel="stylesheet">

  <!-- Custom CSS -->
  <style>
    /* Tùy chỉnh bảng */
    .table-hover tbody tr:hover {
      background-color: #f8f9fa;
    }

    .table th,
    .table td {
      vertical-align: middle;
      text-align: center;
    }

    /* Thêm style cho header của bảng */
    .table thead tr:first-child {
      background-color: #fff3cd;
      /* Màu vàng nhạt giống ảnh */
      font-weight: bold;
    }

    /* Tùy chỉnh nút */
    .btn-success,
    .btn-primary,
    .btn-secondary {
      margin-left: 5px;
    }

    .form-check-input:checked+.form-check-label::before {
      background-color: #198754;
      /* Bootstrap success green */
      border-color: #198754;
    }



    #company:checked+.form-check-label::before {
      background-color: #0d6efd;
      /* Bootstrap primary blue */
      border-color: #0d6efd;
    }

    /* Add specific icon for 'Cá nhân' when checked */
    #individual:checked+.form-check-label::after {
      content: '\\f26e';
      /* Bootstrap Icons check */
      font-family: bootstrap-icons !important;
      position: absolute;
      left: 4px;
      /* Adjust position */
      top: 1px;
      /* Adjust position */
      color: white;
      font-size: 0.8em;
    }

    /* Add specific icon for 'Công ty' when checked */
    #company:checked+.form-check-label::after {
      content: '\\f283';
      /* Bootstrap Icons circle-fill */
      font-family: bootstrap-icons !important;
      position: absolute;
      left: 4px;
      /* Adjust position */
      top: 1px;
      /* Adjust position */
      color: white;
      font-size: 0.8em;
    }

    /* Style cho phần chi tiết khách hàng */
    .customer-detail-container {
      background-color: #f8f9fc;
      /* Màu nền nhạt */
      border-top: 1px solid #dee2e6;
    }

    .customer-detail-row td {
      border-top: none !important;
      /* Bỏ border top của ô chứa chi tiết */
    }

    #customer-table-body tr:not(.total-row):not(.customer-detail-row):hover {
      cursor: pointer;
      background-color: #e9ecef;
      /* Màu nền khi hover vào hàng */
    }

    #customer-table-body tr.table-active {
      background-color: #cfe2ff !important;
      /* Màu nền khi hàng được chọn */
    }

    .nav-tabs .nav-link {
      color: #6c757d;
      border-bottom-width: 2px;
    }

    .nav-tabs .nav-link.active {
      color: #0d6efd;
      border-color: #dee2e6 #dee2e6 #0d6efd;
    }
  </style>

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
      <img src="${pageContext.request.contextPath}/assets/img/logo.png" alt="">
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
              <img src="${pageContext.request.contextPath}/assets/img/messages-1.jpg" alt=""
                   class="rounded-circle">
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
              <img src="${pageContext.request.contextPath}/assets/img/messages-2.jpg" alt=""
                   class="rounded-circle">
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
              <img src="${pageContext.request.contextPath}/assets/img/messages-3.jpg" alt=""
                   class="rounded-circle">
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

        <a class="nav-link nav-profile d-flex align-items-center pe-0" href="#"
           data-bs-toggle="dropdown">
          <img src="${pageContext.request.contextPath}/assets/img/profile-img.jpg" alt="Profile"
               class="rounded-circle">
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
      <a class="nav-link " href="index.jsp">
        <i class="bi bi-grid fs-5"></i>
        <span>Dashboard</span>
      </a>
    </li><!-- End Dashboard Nav -->

    <li class="nav-item">
      <a class="nav-link collapsed" data-bs-target="#components-nav" data-bs-toggle="collapse" href="#">
        <i class="bi bi-box-seam fs-5"></i><span>Sản phẩm</span><i
              class="bi bi-chevron-down ms-auto"></i>
      </a>
      <ul id="components-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
        <li>
          <a href="product">
            <i class="bi bi-list-ul fs-5"></i><span>Danh sách sản phẩm</span>
          </a>
        </li>
        <li>
          <a href="supplier">
            <i class="bi bi-truck fs-5"></i><span>Nhà cung cấp</span>
          </a>
        </li>
      </ul>
    </li><!-- End Components Nav -->

    <li class="nav-item">
      <a class="nav-link collapsed" data-bs-target="#charts-nav" data-bs-toggle="collapse" href="#">
        <i class="bi bi-people-fill fs-5"></i><span>Khách hàng</span><i
              class="bi bi-chevron-down ms-auto"></i>
      </a>
      <ul id="charts-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
        <li>
          <a href="customer">
            <i class="bi bi-person-lines-fill fs-5"></i><span>Danh sách khách hàng</span>
          </a>
        </li>
        <li>
          <a href="account">
            <i class="bi bi-person-x fs-5"></i><span>Khóa/Mở tài khoản khách hàng</span>
          </a>
        </li>
      </ul>
    </li><!-- End Charts Nav -->

    <li class="nav-item">
      <a class="nav-link collapsed" data-bs-target="#tables-nav" data-bs-toggle="collapse" href="#">
        <i class="bi bi-cart-check fs-5"></i><span>Giao dịch</span><i
              class="bi bi-chevron-down ms-auto"></i>
      </a>
      <ul id="tables-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
        <li>
          <a href="order">
            <i class="bi bi-receipt fs-5"></i><span>Đơn hàng</span>
          </a>
        </li>
        <li>
          <a href="stock">
            <i class="bi bi-box-arrow-in-down fs-5"></i><span>Nhập hàng</span>
          </a>
        </li>
      </ul>
    </li><!-- End Tables Nav -->



    <li class="nav-item">
      <a class="nav-link collapsed" data-bs-target="#icons-nav" data-bs-toggle="collapse" href="#">
        <i class="bi bi-bar-chart-line fs-5"></i><span>Thống kê</span><i
              class="bi bi-chevron-down ms-auto"></i>
      </a>
      <ul id="icons-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
        <li>
          <a href="report-day">
            <i class="bi bi-calendar-check fs-5"></i><span>Cuối ngày</span>
          </a>
        </li>
        <li>
          <a href="report-product">
            <i class="bi bi-box fs-5"></i><span>Hàng hoá</span>
          </a>
        </li>
        <li>
          <a href="report-customer">
            <i class="bi bi-people fs-5"></i><span>Khách hàng</span>
          </a>
        </li>
        <li>
          <a href="report-finance">
            <i class="bi bi-cash-coin fs-5"></i><span>Tài chính</span>
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
    <h1>Danh sách khách hàng</h1>
    <nav>
      <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="homepage">Trang chủ</a></li>
        <li class="breadcrumb-item">Khách hàng</li>
        <li class="breadcrumb-item active">Danh sách khách hàng</li>
      </ol>
    </nav>
  </div><!-- End Page Title -->

  <section class="section mt-4">
    <div class="row">
      <div class="col-lg-12">

        <!-- Controls Bar (Search and Actions) - Made Sticky -->
        <div id="customer-controls" class="bg-light p-3 mb-3 sticky-top shadow-sm"
             style="z-index: 990;">
          <!-- Added z-index -->
          <div class="d-flex justify-content-between align-items-center flex-wrap">
            <!-- Removed mb-3, Added flex-wrap -->
            <!-- Left side: Search and new inline filters -->
            <div class="d-flex align-items-center gap-2 flex-grow-1 me-sm-2 me-md-3 mb-2 mb-sm-0">
              <!-- flex-grow-1 and margin for spacing, mb for wrap -->
              <!-- Search Bar -->
              <div class="input-group input-group-sm" style="flex: 1; min-width: 110px;">
                <span class="input-group-text"><i class="bi bi-search"></i></span>
                <input type="text" class="form-control" placeholder="Mã, tên, SĐT"
                       id="customerSearchInput">
              </div>

              <!-- Filter: Nhóm khách hàng -->
              <div class="input-group input-group-sm" style="flex: 1; min-width: 110px;">
                <select class="form-select form-select-sm" id="customerGroupFilterInline"
                        aria-label="Nhóm khách hàng">
                  <option selected value="">Tất cả nhóm</option>
                  <option value="vip">VIP</option>
                  <option value="regular">Thường</option>
                  <option value="new">Mới</option>
                  <!-- Các nhóm khác có thể được thêm bằng JS -->
                </select>
              </div>

              <!-- Filter: Ngày tạo -->
              <div class="input-group input-group-sm" style="flex: 1; min-width: 110px;">
                <select class="form-select form-select-sm" id="creationDateFilterInline"
                        aria-label="Ngày tạo">
                  <option selected value="">Toàn thời gian</option>
                  <option value="today">Hôm nay</option>
                  <option value="this_week">Tuần này</option>
                  <option value="this_month">Tháng này</option>
                  <option value="custom">Tùy chọn...</option>
                  <!-- JS có thể hiển thị datepicker nếu "Tùy chọn..." được chọn -->
                </select>
              </div>
            </div>
            <!-- Right side: Action buttons -->
            <div> <!-- mb-2 mb-sm-0 to align if wrapped -->
              <div class="d-flex align-items-stretch"> <!-- Flex container for buttons -->
                <button class="btn btn-success action-btn me-1" data-bs-toggle="modal"
                        data-bs-target="#addCustomerModal"> <!-- Added margin -->
                  <i class="bi bi-plus"></i> Khách hàng
                </button>
                <div class="btn-group me-1"> <!-- Use btn-group for dropdown -->
                  <button class="btn btn-primary action-btn dropdown-toggle" type="button"
                          data-bs-toggle="dropdown" aria-expanded="false">
                    <i class="bi bi-file-earmark"></i> File
                  </button>
                  <ul class="dropdown-menu">
                    <li><a class="dropdown-item" href="#" id="exportCustomerCsvBtn">Xuất
                      CSV</a>
                    </li>
                    <li><a class="dropdown-item" href="#" id="importCustomerCsvBtn">Nhập
                      CSV</a>
                    </li>
                  </ul>
                </div>
                <!-- Column Selection Dropdown -->
                <div class="btn-group">
                  <button class="btn btn-secondary action-btn dropdown-toggle" type="button"
                          id="columnToggler" data-bs-toggle="dropdown"
                          data-bs-auto-close="outside" aria-expanded="false">
                    <i class="bi bi-list"></i>
                  </button>
                  <ul class="dropdown-menu dropdown-menu-end p-2"
                      aria-labelledby="columnToggler" id="columnSelectionDropdown"
                      style="min-width: 250px; max-height: 300px; overflow-y: auto;">
                    <!-- Checkboxes will be populated by JavaScript -->
                  </ul>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- End Controls Bar -->

        <div class="card">
          <div class="card-body">
            <!-- Table -->
            <table class="table table-hover" id="customerTable">
              <thead>
              <!-- Headers will be populated by JavaScript -->
              </thead>
              <tbody id="customer-table-body">
              <!-- Dữ liệu mẫu giống ảnh, bổ sung data attributes -->
              <tr data-code="KH000005" data-name="Anh Giang - Kim Mã" data-phone=""
                  data-email="" data-address="Kim Mã" data-creator="admin"
                  data-created="01/05/2025" data-group="VIP" data-birthday=""
                  data-gender="Nam" data-note="Khách hàng thân thiết" data-type="Cá nhân"
                  data-debt="0" data-total-sale="140,738,600" data-net-sale="140,738,600"
                  data-facebook="">
                <td><input type="checkbox"></td>
                <td>KH000005</td>
                <td>Anh Giang - Kim Mã</td>
                <td></td> <!-- Điện thoại trống -->
                <td>0</td>
                <td>140,738,600</td>
                <td>140,738,600</td>
              </tr>
              <tr data-code="KH000004" data-name="Anh Hoàng - Sài Gòn" data-phone=""
                  data-email="hoang.sg@example.com" data-address="Sài Gòn"
                  data-creator="admin" data-created="05/05/2025" data-group="VIP"
                  data-birthday="" data-gender="Nam" data-note="Khách hàng tiềm năng"
                  data-facebook="facebook.com/hoangsg" data-type="Cá nhân" data-debt="0"
                  data-total-sale="194,193,800" data-net-sale="194,193,800">
                <td><input type="checkbox"></td>
                <td>KH000004</td>
                <td>Anh Hoàng - Sài Gòn</td>
                <td></td> <!-- Điện thoại trống -->
                <td>0</td>
                <td>194,193,800</td>
                <td>194,193,800</td>
              </tr>
              <tr data-code="KH000003" data-name="Tuấn - Hà Nội" data-phone="0987654321"
                  data-email="tuan.hn@example.com" data-address="Hà Nội"
                  data-creator="nhanvien1" data-created="04/05/2025" data-group="Thân thiết"
                  data-birthday="10/10/1990" data-gender="Nam" data-note="" data-facebook=""
                  data-type="Cá nhân" data-debt="0" data-total-sale="86,564,200"
                  data-net-sale="86,564,200">
                <td><input type="checkbox"></td>
                <td>KH000003</td>
                <td>Tuấn - Hà Nội</td>
                <td>0987654321</td>
                <td>0</td>
                <td>86,564,200</td>
                <td>86,564,200</td>
              </tr>
              <tr data-code="KH000002" data-name="Phạm Thu Hương" data-phone="0123456789"
                  data-email="huong.pt@example.com" data-address="Đà Nẵng"
                  data-creator="admin" data-created="03/05/2025" data-group=""
                  data-birthday="15/05/1988" data-gender="Nữ"
                  data-note="Thường xuyên mua hàng online" data-facebook=""
                  data-type="Cá nhân" data-debt="0" data-total-sale="157,097,400"
                  data-net-sale="157,097,400">
                <td><input type="checkbox"></td>
                <td>KH000002</td>
                <td>Phạm Thu Hương</td>
                <td>0123456789</td>
                <td>0</td>
                <td>157,097,400</td>
                <td>157,097,400</td>
              </tr>
              <tr data-code="KH000001" data-name="Nguyễn Văn Hải" data-phone="0912345678"
                  data-email="hai.nv@example.com" data-address="Hải Phòng"
                  data-creator="manager" data-created="02/05/2025" data-group=""
                  data-birthday="20/11/1985" data-gender="Nam" data-note=""
                  data-facebook="facebook.com/hainv" data-type="Công ty" data-debt="0"
                  data-total-sale="190,866,000" data-net-sale="190,866,000">
                <td><input type="checkbox"></td>
                <td>KH000001</td>
                <td>Nguyễn Văn Hải</td>
                <td>0912345678</td>
                <td>0</td>
                <td>190,866,000</td>
                <td>190,866,000</td>
              </tr>
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
  </section>

</main><!-- End #main -->

<!-- Modal Thêm Khách Hàng -->
<div class="modal fade" id="addCustomerModal" tabindex="-1" aria-labelledby="addCustomerModalLabel"
     aria-hidden="true">
  <div class="modal-dialog modal-xl"> <!-- Tăng kích thước modal -->
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="addCustomerModalLabel">Thêm khách hàng <span
                class="text-muted small">|
                                Chi nhánh tạo: Chi nhánh trung tâm</span></h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form>
          <div class="row">
            <!-- Cột trái -->
            <div class="col-md-3"> <!-- Cột cho ảnh -->
              <div class="mb-3 text-center">
                <div id="imagePreviewArea"
                     class="border rounded d-flex align-items-center justify-content-center mb-2"
                     style="height: 150px; width: 150px; border-style: dashed!important; margin:auto; overflow: hidden;">
                  <!-- Thêm ID và overflow -->
                  <!-- Placeholder cho ảnh -->
                  <span class="text-muted">Ảnh</span>
                </div>
                <label for="customerImage" class="btn btn-success btn-sm">Chọn ảnh</label>
                <input type="file" class="form-control d-none" id="customerImage">
              </div>
            </div>
            <div class="col-md-4"> <!-- Cột cho thông tin cơ bản -->
              <div class="mb-3">
                <label for="customerCode" class="form-label small">Mã khách hàng</label>
                <input type="text" class="form-control form-control-sm" id="customerCode"
                       placeholder="Mã mặc định">
              </div>
              <div class="mb-3">
                <label for="customerName" class="form-label small">Tên khách hàng</label>
                <input type="text" class="form-control form-control-sm" id="customerName">
              </div>
              <div class="mb-3">
                <label for="customerPhone" class="form-label small">Điện thoại</label>
                <input type="text" class="form-control form-control-sm" id="customerPhone">
              </div>
              <div class="mb-3">
                <label for="customerBirthdate" class="form-label small d-block">Ngày
                  sinh</label>
                <!-- d-block để label chiếm full width -->
                <div class="input-group input-group-sm">
                  <input type="text" class="form-control form-control-sm datepicker"
                         id="customerBirthdate" placeholder="dd/mm/yyyy">
                  <span class="input-group-text"><i class="bi bi-calendar-event"></i></span>
                  <div class="ms-3 d-inline-flex align-items-center"> <!-- Giới tính -->
                    <div class="form-check form-check-inline">
                      <input class="form-check-input" type="radio" name="gender" id="male"
                             value="Nam">
                      <label class="form-check-label small" for="male">Nam</label>
                    </div>
                    <div class="form-check form-check-inline">
                      <input class="form-check-input" type="radio" name="gender"
                             id="female" value="Nữ">
                      <label class="form-check-label small" for="female">Nữ</label>
                    </div>
                  </div>
                </div>
              </div>
              <div class="mb-3">
                <label for="customerAddress" class="form-label small">Địa chỉ</label>
                <input type="text" class="form-control form-control-sm" id="customerAddress">
              </div>
              <div class="mb-3">
                <label for="customerRegion" class="form-label small">Khu vực</label>
                <div class="input-group input-group-sm">
                  <span class="input-group-text"><i class="bi bi-search"></i></span>
                  <input type="text" class="form-control form-control-sm" id="customerRegion"
                         placeholder="Chọn Tỉnh/TP - Quận/Huyện">
                </div>
              </div>
              <div class="mb-3">
                <label for="customerWard" class="form-label small">Phường xã</label>
                <div class="input-group input-group-sm">
                  <span class="input-group-text"><i class="bi bi-search"></i></span>
                  <input type="text" class="form-control form-control-sm" id="customerWard"
                         placeholder="Chọn Phường/Xã">
                </div>
              </div>
            </div>
            <!-- Cột phải -->
            <div class="col-md-5">
              <div class="mb-3">
                <label class="form-label small d-block">Loại khách</label>
                <div class="form-check form-check-inline custom-radio">
                  <input class="form-check-input" type="radio" name="customerType"
                         id="individual" value="Cá nhân" checked>
                  <label class="form-check-label small" for="individual">Cá nhân</label>
                </div>
                <div class="form-check form-check-inline custom-radio">
                  <input class="form-check-input" type="radio" name="customerType"
                         id="company" value="Công ty">
                  <label class="form-check-label small" for="company">Công ty</label>
                </div>
              </div>
              <div class="mb-3">
                <label for="taxCode" class="form-label small">Mã số thuế</label>
                <input type="text" class="form-control form-control-sm" id="taxCode">
              </div>
              <div class="mb-3">
                <label for="idCard" class="form-label small">Số CMND/CCCD</label>
                <input type="text" class="form-control form-control-sm" id="idCard">
              </div>
              <div class="mb-3">
                <label for="email" class="form-label small">Email</label>
                <input type="email" class="form-control form-control-sm" id="email">
              </div>
              <div class="mb-3">
                <label for="facebook" class="form-label small">Facebook</label>
                <input type="text" class="form-control form-control-sm" id="facebook">
              </div>
              <div class="mb-3">
                <label for="group" class="form-label small">Nhóm</label>
                <input type="text" class="form-control form-control-sm" id="group">
              </div>
              <div class="mb-3">
                <label for="note" class="form-label small">Ghi chú</label>
                <div class="input-group input-group-sm">
                                            <textarea class="form-control form-control-sm" id="note"
                                                      rows="2"></textarea>
                  <span class="input-group-text"><i class="bi bi-pencil"></i></span>
                </div>
              </div>
            </div>
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-success btn-sm" id="saveCustomerBtn"><i
                class="bi bi-save me-1"></i> Lưu (F9)</button>
        <button type="button" class="btn btn-secondary btn-sm" data-bs-dismiss="modal"><i
                class="bi bi-x-circle me-1"></i> Bỏ qua</button>
      </div>
    </div>
  </div>
</div>

<!-- Modal Thêm Địa Chỉ Nhận Hàng -->
<div class="modal fade" id="addAddressModal" tabindex="-1" aria-labelledby="addAddressModalLabel"
     aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="addAddressModalLabel">Thêm địa chỉ nhận mới</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form id="addAddressForm">
          <div class="row">
            <div class="col-md-6">
              <div class="mb-3">
                <label for="addressName" class="form-label form-label-sm">Tên địa chỉ</label>
                <input type="text" class="form-control form-control-sm" id="addressName">
              </div>
              <div class="mb-3">
                <label for="recipientName" class="form-label form-label-sm">Tên người
                  nhận</label>
                <input type="text" class="form-control form-control-sm" id="recipientName">
              </div>
              <div class="mb-3">
                <label for="recipientPhone" class="form-label form-label-sm">Số điện
                  thoại</label>
                <input type="text" class="form-control form-control-sm" id="recipientPhone">
              </div>
            </div>
            <div class="col-md-6">
              <div class="mb-3">
                <label for="shippingAddress" class="form-label form-label-sm">Địa chỉ
                  nhận</label>
                <input type="text" class="form-control form-control-sm" id="shippingAddress">
              </div>
              <div class="mb-3">
                <label for="shippingRegion" class="form-label form-label-sm">Khu vực:</label>
                <div class="input-group input-group-sm">
                  <span class="input-group-text"><i class="bi bi-search"></i></span>
                  <input type="text" class="form-control" id="shippingRegion"
                         placeholder="Tìm Tỉnh/Thành phố - Quận/Huyện">
                </div>
              </div>
              <div class="mb-3">
                <label for="shippingWard" class="form-label form-label-sm">Phường/Xã:</label>
                <div class="input-group input-group-sm">
                  <span class="input-group-text"><i class="bi bi-search"></i></span>
                  <input type="text" class="form-control" id="shippingWard"
                         placeholder="Tìm Phường/Xã">
                </div>
              </div>
            </div>
          </div>
          <!-- Input ẩn để lưu mã khách hàng -->
          <input type="hidden" id="addAddressCustomerCode">
        </form>
      </div>
      <div class="modal-footer justify-content-end">
        <button type="button" class="btn btn-outline-secondary btn-sm" data-bs-dismiss="modal">Bỏ
          qua</button> <!-- Đổi sang outline -->
        <button type="button" class="btn btn-primary btn-sm" id="saveAddressBtn">Xong</button>
      </div>
    </div>
  </div>
</div>

<a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i
        class="bi bi-arrow-up-short"></i></a>

<!-- Vendor JS Files -->
<script src="${pageContext.request.contextPath}/assets/vendor/apexcharts/apexcharts.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/vendor/chart.js/chart.umd.js"></script>
<script src="${pageContext.request.contextPath}/assets/vendor/echarts/echarts.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/vendor/quill/quill.js"></script>
<script src="${pageContext.request.contextPath}/assets/vendor/simple-datatables/simple-datatables.js"></script>
<script src="${pageContext.request.contextPath}/assets/vendor/tinymce/tinymce.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/vendor/php-email-form/validate.js"></script>

<!-- Template Main JS File -->
<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>

<script>
  document.addEventListener('DOMContentLoaded', () => {
    const tableBody = document.getElementById('customer-table-body');
    let activeDetailRow = null; // Lưu trữ hàng chi tiết đang mở
    let activeClickedRow = null; // Lưu trữ hàng được click để mở chi tiết

    const addCustomerModalElement = document.getElementById('addCustomerModal');
    const addCustomerModal = bootstrap.Modal.getOrCreateInstance(addCustomerModalElement);
    const saveCustomerBtn = document.getElementById('saveCustomerBtn');
    const addCustomerForm = addCustomerModalElement.querySelector('form'); // Lấy form trong modal
    const modalTitle = document.getElementById('addCustomerModalLabel');
    let editMode = false; // Trạng thái modal: false = Thêm mới, true = Chỉnh sửa
    let customerCodeToEdit = null; // Lưu mã KH khi chỉnh sửa

    // --- "Chọn tất cả" cho bảng khách hàng ---
    const mainTable = document.querySelector('.card .table'); // Tìm bảng chính
    const headerCheckbox = mainTable ? mainTable.querySelector('thead input[type="checkbox"]') : null;
    const tableBodyForSelectAll = document.getElementById('customer-table-body');

    if (headerCheckbox && tableBodyForSelectAll) {
      headerCheckbox.addEventListener('change', () => {
        const bodyCheckboxes = tableBodyForSelectAll.querySelectorAll('tbody input[type="checkbox"]');
        bodyCheckboxes.forEach(checkbox => {
          checkbox.checked = headerCheckbox.checked;
        });
      });

      // Optional: Cập nhật trạng thái header checkbox khi các checkbox con thay đổi
      tableBodyForSelectAll.addEventListener('change', (event) => {
        if (event.target.type === 'checkbox') {
          const bodyCheckboxes = tableBodyForSelectAll.querySelectorAll('tbody input[type="checkbox"]');
          const allChecked = Array.from(bodyCheckboxes).every(cb => cb.checked);
          const someChecked = Array.from(bodyCheckboxes).some(cb => cb.checked);

          if (bodyCheckboxes.length > 0) { // Chỉ cập nhật nếu có checkbox
            headerCheckbox.checked = allChecked;
            // Có thể thêm indeterminate state nếu muốn
            // headerCheckbox.indeterminate = !allChecked && someChecked;
          }
        }
      });
    }
    // --- End "Chọn tất cả" ---

    // --- Modal Thêm địa chỉ ---
    const addAddressModalElement = document.getElementById('addAddressModal');
    const addAddressModal = addAddressModalElement ? bootstrap.Modal.getOrCreateInstance(addAddressModalElement) : null;
    const saveAddressBtn = document.getElementById('saveAddressBtn');
    const addAddressForm = document.getElementById('addAddressForm');
    const addAddressCustomerCodeInput = document.getElementById('addAddressCustomerCode');

    // --- START: Column Toggling Logic ---
    const columnConfiguration = {
      colCode: { label: 'Mã khách hàng', dataAttr: 'code', defaultChecked: true },
      colName: { label: 'Tên khách hàng', dataAttr: 'name', defaultChecked: true },
      colType: { label: 'Loại khách', dataAttr: 'type', defaultChecked: false },
      colPhone: { label: 'Điện thoại', dataAttr: 'phone', defaultChecked: true },
      colGroup: { label: 'Nhóm khách hàng', dataAttr: 'group', defaultChecked: false },
      colGender: { label: 'Giới tính', dataAttr: 'gender', defaultChecked: false },
      colAddress: { label: 'Địa chỉ', dataAttr: 'address', defaultChecked: false },
      colCreator: { label: 'Người tạo', dataAttr: 'creator', defaultChecked: false },
      colCreatedDate: { label: 'Ngày tạo', dataAttr: 'created', defaultChecked: false },
      colNote: { label: 'Ghi chú', dataAttr: 'note', defaultChecked: false },
      colDebt: { label: 'Nợ hiện tại', dataAttr: 'debt', defaultChecked: true },
      colTotalSale: { label: 'Tổng bán', dataAttr: 'totalSale', defaultChecked: true },
      colNetSale: { label: 'Tổng bán trừ trả hàng', dataAttr: 'netSale', defaultChecked: true }
      // Đã loại bỏ colBirthday, colEmail, colFacebook
    };

    const columnSelectionDropdown = document.getElementById('columnSelectionDropdown');
    const customerTable = document.getElementById('customerTable');
    const customerTableHead = customerTable ? customerTable.querySelector('thead') : null;
    // customerTableBody is already defined for filtering

    function renderColumnSelectionCheckboxes() {
      if (!columnSelectionDropdown) return;
      columnSelectionDropdown.innerHTML = ''; // Clear existing
      Object.keys(columnConfiguration).forEach(key => {
        const colConfig = columnConfiguration[key];
        const li = document.createElement('li');
        li.classList.add('dropdown-item'); // Use dropdown-item for styling consistency

        let inputHtml = '<div class="form-check">' +
                '<input class="form-check-input column-toggle-checkbox" type="checkbox" value="' + key + '" id="checkbox-' + key + '"';
        if (colConfig.defaultChecked) {
          inputHtml += ' checked';
        }
        inputHtml += '>' +
                '<label class="form-check-label" for="checkbox-' + key + '">' +
                colConfig.label +
                '</label>' +
                '</div>';
        li.innerHTML = inputHtml;

        // Prevent dropdown from closing when clicking on the checkbox or label
        li.addEventListener('click', (e) => e.stopPropagation());
        columnSelectionDropdown.appendChild(li);
      });

      const checkboxes = columnSelectionDropdown.querySelectorAll('.column-toggle-checkbox');
      checkboxes.forEach(checkbox => {
        checkbox.addEventListener('change', renderTable);
      });
    }

    function getVisibleColumns() {
      const visibleCols = [];
      const checkboxes = columnSelectionDropdown.querySelectorAll('.column-toggle-checkbox:checked');
      checkboxes.forEach(cb => visibleCols.push(cb.value));
      return visibleCols;
    }

    function renderTable() {
      if (!customerTableHead || !customerTableBody) return;

      const visibleColumnKeys = getVisibleColumns();

      // 1. Render Headers
      customerTableHead.innerHTML = ''; // Clear existing headers
      const headerRow = customerTableHead.insertRow();

      // Always add the main checkbox header
      const thCheckbox = document.createElement('th');
      thCheckbox.scope = 'col';
      const mainCheckbox = document.createElement('input');
      mainCheckbox.type = 'checkbox';
      mainCheckbox.id = 'selectAllCustomersCheckbox'; // Add ID for select all functionality
      thCheckbox.appendChild(mainCheckbox);
      headerRow.appendChild(thCheckbox);

      visibleColumnKeys.forEach(key => {
        const colConfig = columnConfiguration[key];
        if (colConfig) {
          const th = document.createElement('th');
          th.scope = 'col';
          th.textContent = colConfig.label;
          headerRow.appendChild(th);
        }
      });

      // Re-attach select all event listener if header checkbox is re-created
      const newHeaderCheckbox = document.getElementById('selectAllCustomersCheckbox');
      if (newHeaderCheckbox && tableBodyForSelectAll) { // tableBodyForSelectAll from previous select-all logic
        newHeaderCheckbox.addEventListener('change', () => {
          const bodyCheckboxes = tableBodyForSelectAll.querySelectorAll('tbody tr:not(.customer-detail-row) input[type="checkbox"]');
          bodyCheckboxes.forEach(checkbox => {
            checkbox.checked = newHeaderCheckbox.checked;
          });
        });
      }


      // 2. Render Body Rows
      const dataRows = customerTableBody.querySelectorAll('tr:not(.customer-detail-row)');
      dataRows.forEach(row => {
        const cells = Array.from(row.cells);
        // Keep the first cell (checkbox), remove others
        for (let i = cells.length - 1; i > 0; i--) {
          row.deleteCell(i);
        }

        visibleColumnKeys.forEach(key => {
          const colConfig = columnConfiguration[key];
          if (colConfig) {
            const cell = row.insertCell();
            let cellValue = row.dataset[colConfig.dataAttr] || '';
            // Special formatting for money-like values
            if (['colDebt', 'colTotalSale', 'colNetSale'].includes(key) && cellValue) {
              // Attempt to format as currency - this is a simple version
              const num = parseFloat(String(cellValue).replace(/,/g, '')); // Ensure cellValue is a string
              if (!isNaN(num)) {
                cellValue = num.toLocaleString('vi-VN');
              }
            }
            if (['colTotalSale', 'colNetSale'].includes(key) && cellValue) {
              cell.innerHTML = '<strong>' + cellValue + '</strong>';
            } else {
              cell.textContent = cellValue;
            }
          }
        });
      });

      // 3. Adjust colspan for any open detail row
      if (activeDetailRow) {
        const newColspan = headerRow.cells.length;
        const detailCell = activeDetailRow.querySelector('td');
        if (detailCell) {
          detailCell.colSpan = newColspan;
        }
      }
      // Apply filtering after re-rendering
      filterCustomerRows();
    }
    // --- END: Column Toggling Logic ---

    // --- START: Customer Table Filtering Logic ---
    const searchInput = document.getElementById('customerSearchInput');
    const groupFilterSelect = document.getElementById('customerGroupFilterInline');
    const dateFilterSelect = document.getElementById('creationDateFilterInline');
    const customerTableBody = document.getElementById('customer-table-body');

    function parseDateDDMMYYYY(dateString) {
      if (!dateString) return null;
      const parts = dateString.split('/');
      if (parts.length === 3) {
        const day = parseInt(parts[0], 10);
        const month = parseInt(parts[1], 10) - 1; // JS months are 0-indexed
        const year = parseInt(parts[2], 10);
        if (!isNaN(day) && !isNaN(month) && !isNaN(year)) {
          return new Date(year, month, day);
        }
      }
      return null;
    }

    function filterCustomerRows() {
      if (!customerTableBody) return;

      const searchTerm = searchInput.value.toLowerCase().trim();
      const selectedGroup = groupFilterSelect.value;
      const selectedDateOption = dateFilterSelect.value;

      const rows = customerTableBody.getElementsByTagName('tr');

      for (const row of rows) {
        if (row.classList.contains('total-row') || row.classList.contains('customer-detail-row')) {
          continue; // Skip total row and detail rows
        }

        const code = (row.getAttribute('data-code') || '').toLowerCase();
        const name = (row.getAttribute('data-name') || '').toLowerCase();
        const phone = (row.getAttribute('data-phone') || '').toLowerCase();
        const group = (row.getAttribute('data-group') || '').toLowerCase(); // Chuyển sang chữ thường
        const createdDateStr = row.getAttribute('data-created');

        let matchesSearch = true;
        if (searchTerm) {
          matchesSearch = code.includes(searchTerm) ||
                  name.includes(searchTerm) ||
                  phone.includes(searchTerm);
        }

        let matchesGroup = true;
        if (selectedGroup) {
          matchesGroup = group === selectedGroup; // So sánh group đã được chuyển sang chữ thường
        }

        let matchesDate = true;
        if (selectedDateOption && createdDateStr) {
          const rowDate = parseDateDDMMYYYY(createdDateStr);
          if (rowDate) {
            const today = new Date();
            today.setHours(0, 0, 0, 0);

            if (selectedDateOption === 'today') {
              matchesDate = rowDate.toDateString() === today.toDateString();
            } else if (selectedDateOption === 'this_week') {
              const currentDay = today.getDay();
              const firstDayOfWeek = new Date(today);
              // Set to Monday of the current week
              firstDayOfWeek.setDate(today.getDate() - (currentDay === 0 ? 6 : currentDay - 1));
              firstDayOfWeek.setHours(0, 0, 0, 0);

              const lastDayOfWeek = new Date(firstDayOfWeek);
              lastDayOfWeek.setDate(firstDayOfWeek.getDate() + 6);
              lastDayOfWeek.setHours(23, 59, 59, 999);
              matchesDate = rowDate >= firstDayOfWeek && rowDate <= lastDayOfWeek;
            } else if (selectedDateOption === 'this_month') {
              const monthStart = new Date(today.getFullYear(), today.getMonth(), 1);
              const monthEnd = new Date(today.getFullYear(), today.getMonth() + 1, 0);
              monthEnd.setHours(23, 59, 59, 999);
              matchesDate = rowDate >= monthStart && rowDate <= monthEnd;
            }
            // "Toàn thời gian" (empty value) or "custom" (if not handled further) implies matchesDate remains true
          } else {
            matchesDate = false; // Could not parse date, so treat as no match for specific date filters
          }
        }


        if (matchesSearch && matchesGroup && matchesDate) {
          row.style.display = '';
        } else {
          row.style.display = 'none';
        }
      }
    }

    if (searchInput) {
      searchInput.addEventListener('input', filterCustomerRows);
    }
    if (groupFilterSelect) {
      groupFilterSelect.addEventListener('change', filterCustomerRows);
    }
    if (dateFilterSelect) {
      dateFilterSelect.addEventListener('change', filterCustomerRows);
    }
    // --- END: Customer Table Filtering Logic ---

    // --- Hàm reset modal về trạng thái Thêm mới ---
    const resetModalToAddMode = () => {
      modalTitle.innerHTML = 'Thêm khách hàng <span class="text-muted small">| Chi nhánh tạo: Chi nhánh trung tâm</span>';
      saveCustomerBtn.innerHTML = '<i class="bi bi-save me-1"></i> Lưu (F9)';
      if (addCustomerForm) addCustomerForm.reset();
      const customerCodeInput = document.getElementById('customerCode');
      if (customerCodeInput) customerCodeInput.disabled = false;
      editMode = false;
      customerCodeToEdit = null;
    };

    // --- Sự kiện khi modal đóng ---
    if (addCustomerModalElement) {
      addCustomerModalElement.addEventListener('hidden.bs.modal', resetModalToAddMode);
    }

    // --- START: tableBody click listener for detail rows, edit, delete, add address ---
    if (tableBody) {
      tableBody.addEventListener('click', (event) => {
        // --- Xử lý click nút Chỉnh sửa trong phần chi tiết ---
        if (event.target.classList.contains('edit-customer-detail-btn') || event.target.closest('.edit-customer-detail-btn')) {
          if (!activeClickedRow) return;

          const code = activeClickedRow.dataset.code;
          const name = activeClickedRow.dataset.name;
          const phone = activeClickedRow.dataset.phone;
          const birthday = activeClickedRow.dataset.birthday;
          const address = activeClickedRow.dataset.address;
          const gender = activeClickedRow.dataset.gender;
          const type = activeClickedRow.dataset.type || 'Cá nhân';
          const taxCode = activeClickedRow.dataset.taxcode || '';
          const idCard = activeClickedRow.dataset.idcard || '';
          const email = activeClickedRow.dataset.email;
          const facebook = activeClickedRow.dataset.facebook;
          const group = activeClickedRow.dataset.group;
          const note = activeClickedRow.dataset.note;

          if (addCustomerForm) {
            document.getElementById('customerCode').value = code;
            document.getElementById('customerCode').disabled = true;
            document.getElementById('customerName').value = name;
            document.getElementById('customerPhone').value = phone;
            document.getElementById('customerBirthdate').value = birthday;
            document.getElementById('customerAddress').value = address;

            const maleRadio = addCustomerForm.querySelector('#male');
            const femaleRadio = addCustomerForm.querySelector('#female');
            if (maleRadio && femaleRadio) {
              if (gender === 'Nam') maleRadio.checked = true;
              else if (gender === 'Nữ') femaleRadio.checked = true;
              else {
                maleRadio.checked = false;
                femaleRadio.checked = false;
              }
            }

            const individualRadio = addCustomerForm.querySelector('#individual');
            const companyRadio = addCustomerForm.querySelector('#company');
            if (individualRadio && companyRadio) {
              if (type === 'Cá nhân') individualRadio.checked = true;
              else if (type === 'Công ty') companyRadio.checked = true;
            }

            document.getElementById('taxCode').value = taxCode;
            document.getElementById('idCard').value = idCard;
            document.getElementById('email').value = email;
            document.getElementById('facebook').value = facebook;
            document.getElementById('group').value = group;
            document.getElementById('note').value = note;
          }

          if (modalTitle) modalTitle.textContent = 'Cập nhật thông tin khách hàng';
          if (saveCustomerBtn) saveCustomerBtn.innerHTML = '<i class="bi bi-check-circle me-1"></i> Cập nhật (F9)';
          editMode = true;
          customerCodeToEdit = code;
          if (addCustomerModal) addCustomerModal.show();
          return;
        }

        // --- Xử lý click nút Xóa trong phần chi tiết ---
        if (event.target.classList.contains('delete-customer-detail-btn') || event.target.closest('.delete-customer-detail-btn')) {
          if (!activeClickedRow) return;
          const customerCode = activeClickedRow.dataset.code;
          const customerName = activeClickedRow.dataset.name;
          if (confirm(`Bạn có chắc chắn muốn xóa khách hàng "${customerName}" (Mã: ${customerCode}) không?`)) {
            activeClickedRow.remove();
            if (activeDetailRow) {
              activeDetailRow.remove();
              activeDetailRow = null;
            }
            activeClickedRow = null;
            console.log(`Đã xóa khách hàng ${customerCode}`);
          }
          return;
        }

        // --- Xử lý click nút Thêm địa chỉ mới trong phần chi tiết ---
        if (event.target.classList.contains('add-new-address-btn') || event.target.closest('.add-new-address-btn')) {
          if (!activeClickedRow) return;
          const customerCode = activeClickedRow.dataset.code;
          if (addAddressCustomerCodeInput) addAddressCustomerCodeInput.value = customerCode;
          if (addAddressForm) addAddressForm.reset();
          if (addAddressModal) addAddressModal.show();
          return;
        }

        // --- Logic xử lý mở/đóng detail row ---
        let clickedRow = event.target.closest('tr');
        if (!clickedRow || !clickedRow.parentElement || clickedRow.parentElement.tagName !== 'TBODY' || !clickedRow.dataset.code) {
          if (event.target.closest('.customer-detail-row')) return;
          if (activeDetailRow) {
            activeDetailRow.remove();
            activeDetailRow = null;
            if (activeClickedRow) activeClickedRow.classList.remove('table-active');
            activeClickedRow = null;
          }
          return;
        }

        const isClickingActiveRow = activeClickedRow === clickedRow;

        if (activeDetailRow) {
          activeDetailRow.remove();
          activeDetailRow = null;
          if (activeClickedRow) activeClickedRow.classList.remove('table-active');
          activeClickedRow = null;
        }

        if (!isClickingActiveRow) {
          const detailRow = document.createElement('tr');
          detailRow.classList.add('customer-detail-row');
          const detailCell = detailRow.insertCell();
          const currentHeaderCells = customerTableHead && customerTableHead.querySelector('tr') ? customerTableHead.querySelector('tr').cells.length : 7;
          detailCell.colSpan = currentHeaderCells;
          detailCell.style.padding = '0';

          const code = clickedRow.dataset.code || 'Chưa có';
          const name = clickedRow.dataset.name || 'Chưa có';
          const phone = clickedRow.dataset.phone || 'Chưa có';
          const emailAddress = clickedRow.dataset.email || 'Chưa có';
          const addressVal = clickedRow.dataset.address || 'Chưa có';
          const creator = clickedRow.dataset.creator || 'Chưa có';
          const created = clickedRow.dataset.created || 'Chưa có';
          const groupVal = clickedRow.dataset.group || 'Chưa có';
          const birthday = clickedRow.dataset.birthday || 'Chưa có';
          const genderVal = clickedRow.dataset.gender || 'Chưa có';
          const noteVal = clickedRow.dataset.note || 'Chưa có';
          const facebookLink = clickedRow.dataset.facebook || 'Chưa có';

          detailCell.innerHTML =
                  '<div class="customer-detail-container p-3">' +
                  '<ul class="nav nav-tabs mb-3" id="customer-detail-tabs-' + code + '" role="tablist">' +
                  '<li class="nav-item" role="presentation">' +
                  '<button class="nav-link active" id="info-tab-' + code + '" data-bs-toggle="tab" data-bs-target="#info-content-' + code + '" type="button" role="tab" aria-controls="info-content-' + code + '" aria-selected="true">Thông tin</button>' +
                  '</li>' +
                  '<li class="nav-item" role="presentation">' +
                  '<button class="nav-link" id="address-tab-' + code + '" data-bs-toggle="tab" data-bs-target="#address-content-' + code + '" type="button" role="tab" aria-controls="address-content-' + code + '" aria-selected="false">Địa chỉ nhận hàng</button>' +
                  '</li>' +
                  '</ul>' +
                  '<div class="tab-content" id="customer-detail-tab-content-' + code + '">' +
                  '<div class="tab-pane fade show active" id="info-content-' + code + '" role="tabpanel" aria-labelledby="info-tab-' + code + '">' +
                  '<div class="row mb-3">' +
                  '<div class="col-auto">' +
                  '<div class="bg-secondary rounded-circle d-flex align-items-center justify-content-center text-white" style="width: 80px; height: 80px; font-size: 2rem;">' +
                  '<i class="bi bi-person"></i>' +
                  '</div>' +
                  '</div>' +
                  '<div class="col">' +
                  '<h5>' + name + ' <small class="text-muted fw-normal">' + code + '</small></h5>' +
                  '<p class="small mb-1">' +
                  'Người tạo: <span class="text-primary">' + creator + '</span> | Ngày tạo: ' + created + ' | Nhóm khách: <span class="badge bg-secondary">' + (groupVal || 'Chưa có') + '</span>' +
                  '</p>' +
                  '</div>' +
                  '<div class="col-auto text-end">' +
                  '<span class="text-muted small">Chi nhánh trung tâm</span>' +
                  '</div>' +
                  '</div>' +
                  '<div class="row mb-3">' +
                  '<div class="col-md-4"><p class="small mb-1 text-muted">Điện thoại</p><p>' + phone + '</p></div>' +
                  '<div class="col-md-4"><p class="small mb-1 text-muted">Sinh nhật</p><p>' + birthday + '</p></div>' +
                  '<div class="col-md-4"><p class="small mb-1 text-muted">Giới tính</p><p>' + genderVal + '</p></div>' +
                  '</div>' +
                  '<div class="row mb-3">' +
                  '<div class="col-md-4"><p class="small mb-1 text-muted">Email</p><p>' + emailAddress + '</p></div>' +
                  '<div class="col-md-4"><p class="small mb-1 text-muted">Facebook</p><p>' + facebookLink + '</p></div>' +
                  '</div>' +
                  '<div class="row mb-4">' +
                  '<div class="col-md-12"><p class="small mb-1 text-muted">Địa chỉ</p><p>' + addressVal + '</p></div>' +
                  '</div>' +
                  '<a href="#" class="text-primary mb-3 d-block">Thêm thông tin xuất hóa đơn</a>' +
                  '<p class="small"><i class="bi bi-pencil me-1"></i> Ghi chú: ' + noteVal + '</p>' +
                  '<hr>' +
                  '<div class="d-flex justify-content-end align-items-center gap-2">' +
                  '<button type="button" class="btn btn-danger delete-customer-detail-btn" title="Xóa" style="width: 38px; height: 38px; display: flex; align-items: center; justify-content: center; padding: 0;">' +
                  '<i class="bi bi-trash"></i>' +
                  '</button>' +
                  '<button type="button" class="btn btn-primary edit-customer-detail-btn" title="Chỉnh sửa" style="width: 38px; height: 38px; display: flex; align-items: center; justify-content: center; padding: 0;">' +
                  '<i class="bi bi-pencil-square"></i>' +
                  '</button>' +
                  '</div>' +
                  '</div>' +
                  '<div class="tab-pane fade" id="address-content-' + code + '" role="tabpanel" aria-labelledby="address-tab-' + code + '">' +
                  '<table class="table table-sm mb-3">' +
                  '<thead class="table-light">' +
                  '<tr><th>Tên địa chỉ</th><th>Tên người nhận</th><th>Số điện thoại</th><th>Địa chỉ nhận</th><th>Ngày tạo</th></tr>' +
                  '</thead>' +
                  '<tbody></tbody>' +
                  '</table>' +
                  '<div class="text-center text-muted p-5 border rounded no-address-message">' +
                  '<div class="mb-3"><i class="bi bi-inbox fs-1"></i></div>' +
                  'Không tìm thấy kết quả nào phù hợp' +
                  '</div>' +
                  '<div class="text-end mt-3">' +
                  '<button class="btn btn-primary btn-sm add-new-address-btn"><i class="bi bi-plus"></i> Địa chỉ mới</button>' +
                  '</div>' +
                  '</div>' +
                  '</div>' +
                  '</div>';
          clickedRow.after(detailRow);
          activeDetailRow = detailRow;
          activeClickedRow = clickedRow;
          clickedRow.classList.add('table-active');
        }
      });
    }
    // --- END: tableBody click listener ---

    // Initialize column selection and render table on load
    renderColumnSelectionCheckboxes();
    renderTable();

    // --- Event listener cho nút Lưu / Cập nhật khách hàng ---
    if (saveCustomerBtn && tableBody && addCustomerForm) {
      saveCustomerBtn.addEventListener('click', () => {
        // Lấy dữ liệu từ form (tương tự như cũ)
        const customerCode = document.getElementById('customerCode').value.trim(); // Lấy mã (dù bị disabled khi edit)
        const customerName = document.getElementById('customerName').value.trim();
        const customerPhone = document.getElementById('customerPhone').value.trim();
        const customerBirthdate = document.getElementById('customerBirthdate').value.trim();
        const customerAddress = document.getElementById('customerAddress').value.trim();
        const customerRegion = document.getElementById('customerRegion').value.trim();
        const customerWard = document.getElementById('customerWard').value.trim();
        const customerGender = addCustomerForm.querySelector('input[name="gender"]:checked') ? addCustomerForm.querySelector('input[name="gender"]:checked').value : '';
        const customerType = addCustomerForm.querySelector('input[name="customerType"]:checked') ? addCustomerForm.querySelector('input[name="customerType"]:checked').value : '';
        const taxCode = document.getElementById('taxCode').value.trim();
        const idCard = document.getElementById('idCard').value.trim();
        const email = document.getElementById('email').value.trim();
        const facebook = document.getElementById('facebook').value.trim();
        const group = document.getElementById('group').value.trim();
        const note = document.getElementById('note').value.trim();

        // --- Kiểm tra dữ liệu cơ bản ---
        if (!customerName) {
          alert('Vui lòng nhập tên khách hàng.');
          document.getElementById('customerName').focus();
          return;
        }
        // Khi thêm mới, mã là bắt buộc. Khi sửa, mã lấy từ customerCodeToEdit
        if (!editMode && !customerCode) {
          alert('Vui lòng nhập mã khách hàng.');
          document.getElementById('customerCode').focus();
          return;
        }

        if (editMode && customerCodeToEdit) {
          // --- Chế độ Cập nhật ---
          const rowToUpdate = tableBody.querySelector(`tr[data-code="${customerCodeToEdit}"]`);
          if (rowToUpdate) {
            // Cập nhật data attributes
            rowToUpdate.setAttribute('data-name', customerName);
            rowToUpdate.setAttribute('data-phone', customerPhone);
            rowToUpdate.setAttribute('data-email', email);
            rowToUpdate.setAttribute('data-address', customerAddress); // Cần gộp nếu cần
            rowToUpdate.setAttribute('data-group', group);
            rowToUpdate.setAttribute('data-birthday', customerBirthdate);
            rowToUpdate.setAttribute('data-gender', customerGender);
            rowToUpdate.setAttribute('data-note', note);
            rowToUpdate.setAttribute('data-facebook', facebook);
            rowToUpdate.setAttribute('data-type', customerType); // Lưu lại loại khách
            rowToUpdate.setAttribute('data-taxcode', taxCode);
            rowToUpdate.setAttribute('data-idcard', idCard);
            // Cập nhật nội dung hiển thị trong các ô <td>
            const cells = rowToUpdate.getElementsByTagName('td');
            if (cells.length > 3) { // Đảm bảo đủ ô
              cells[2].textContent = customerName;
              cells[3].textContent = customerPhone;
              // Cập nhật các ô khác nếu cần (Nợ, Tổng bán...) - Hiện tại giữ nguyên
            }
            // Đóng detail view nếu đang mở cho hàng này
            if (activeClickedRow === rowToUpdate && activeDetailRow) {
              activeDetailRow.remove();
              activeDetailRow = null;
              activeClickedRow.classList.remove('table-active');
              activeClickedRow = null;
            }
          }
        } else {
          // --- Chế độ Thêm mới (Logic cũ) ---
          const newRow = document.createElement('tr');
          newRow.setAttribute('data-code', customerCode);
          newRow.setAttribute('data-name', customerName);
          newRow.setAttribute('data-phone', customerPhone);
          newRow.setAttribute('data-email', email);
          newRow.setAttribute('data-address', customerAddress);
          newRow.setAttribute('data-creator', 'CurrentUser');
          newRow.setAttribute('data-created', new Date().toLocaleDateString('vi-VN'));
          newRow.setAttribute('data-group', group);
          newRow.setAttribute('data-birthday', customerBirthdate);
          newRow.setAttribute('data-gender', customerGender);
          newRow.setAttribute('data-note', note);
          newRow.setAttribute('data-facebook', facebook);
          newRow.setAttribute('data-type', customerType);
          newRow.setAttribute('data-taxcode', taxCode);
          newRow.setAttribute('data-idcard', idCard);

          newRow.innerHTML =
                  '<td><input type="checkbox"></td>' +
                  '<td>' + customerCode + '</td>' +
                  '<td>' + customerName + '</td>' +
                  '<td>' + customerPhone + '</td>' +
                  '<td>0</td>' +
                  '<td>0</td>' +
                  '<td>0</td>';
          tableBody.appendChild(newRow);
        }

        // Đóng modal (Trạng thái sẽ tự reset bởi sự kiện hidden.bs.modal)
        addCustomerModal.hide();
      });
    }

    // --- Event listener cho nút Xong trong modal Thêm địa chỉ ---
    if (saveAddressBtn && addAddressModalElement) {
      saveAddressBtn.addEventListener('click', () => {
        const customerCode = addAddressCustomerCodeInput ? addAddressCustomerCodeInput.value : null;
        if (!customerCode) return; // Cần mã khách hàng

        const addressName = document.getElementById('addressName').value.trim();
        const recipientName = document.getElementById('recipientName').value.trim();
        const recipientPhone = document.getElementById('recipientPhone').value.trim();
        const shippingAddress = document.getElementById('shippingAddress').value.trim();
        const shippingRegion = document.getElementById('shippingRegion').value.trim();
        const shippingWard = document.getElementById('shippingWard').value.trim();

        console.log("Thêm địa chỉ cho KH:", customerCode);
        // ... (các console.log khác nếu cần) ...

        // --- Cập nhật UI (Tạm thời) ---
        const addressTableBody = document.querySelector(`#address-content-${customerCode} tbody`);
        const noAddressMessage = document.querySelector(`#address-content-${customerCode}.no-address-message`);

        if (addressTableBody) {
          if (noAddressMessage) {
            noAddressMessage.style.display = 'none'; // Ẩn thông báo không tìm thấy
          }
          const newAddressRow = document.createElement('tr');
          const currentDate = new Date().toLocaleDateString('vi-VN');
          newAddressRow.innerHTML =
                  '<td>' + (addressName || '-') + '</td>' +
                  '<td>' + (recipientName || '-') + '</td>' +
                  '<td>' + (recipientPhone || '-') + '</td>' +
                  '<td>' + shippingAddress + ', ' + shippingWard + ', ' + shippingRegion + '</td>' +
                  '<td>' + currentDate + '</td>';
          addressTableBody.appendChild(newAddressRow);
        }

        // TODO: Gửi dữ liệu lên server

        const currentAddressModalInstance = bootstrap.Modal.getInstance(addAddressModalElement);
        if (currentAddressModalInstance) currentAddressModalInstance.hide(); // Đóng modal
      });
    } else {
      if (!saveAddressBtn) console.error("Không tìm thấy nút #saveAddressBtn");
      if (!addAddressModalElement) console.error("Không tìm thấy modal #addAddressModal");
    }
  });
</script>


</body>

</html>