<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Aishiba - Cửa hàng đồ chơi</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Cửa hàng đồ chơi chất lượng cao" name="keywords">
    <meta content="Cửa hàng đồ chơi Aishiba - Đồ chơi trẻ em, đồ chơi giáo dục, đồ chơi mô hình" name="description">

    <!-- Favicon -->
    <link href="${pageContext.request.contextPath}/user/img/logo.png" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="${pageContext.request.contextPath}/user/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="${pageContext.request.contextPath}/user/css/style.css" rel="stylesheet">
</head>
<body>
<style>
        .sticky-top {
        position: sticky;
        top: 0;
        z-index: 1020;
        background-color: white;
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    }

    /* Đảm bảo danh mục hiển thị phía trên */
    #navbar-vertical {
        position: absolute;
        top: 65px; /* Đặt vị trí ngay dưới thanh navbar */
        left: 0;
        z-index: 1050; /* Đảm bảo nó hiển thị trên các phần tử khác */
        width: 100%;
        background-color: white;
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    }

    /* Khi danh mục được mở */
    #navbar-vertical.show {
        display: block;
    }

    /* Đảm bảo các phần tử khác không bị che */
    .container-fluid {
        position: relative;
    }
    </style>
    <div class="sticky-top">
        <!-- Topbar Start -->
    <div class="container-fluid bg-light">
        <div class="row py-2 px-xl-5">
            <div class="col-lg-6 d-none d-lg-block">
                <div class="d-inline-flex align-items-center">
                    <a class="text-dark" href="">FAQs</a>
                    <span class="text-muted px-2">|</span>
                    <a class="text-dark" href="">Trợ giúp</a>
                    <span class="text-muted px-2">|</span>
                    <a class="text-dark" href="">Hỗ trợ</a>
                </div>
            </div>
        </div>
        <div class="row align-items-center py-3 px-xl-5">
            <div class="col-lg-3 d-none d-lg-block">
                <a href="homepage" class="text-decoration-none">
                    <h1 class="m-0 display-5 font-weight-semi-bold"><img src="${pageContext.request.contextPath}/user/img/logo.png" height="42" alt="Aishiba"> <span class="text-primary">Aishiba</span></h1>
                </a>
            </div>
            <div class="col-lg-6 col-6 text-left">
                <form id="searchForm" action="shop" method="get">
                    <div class="input-group">
                        <input type="text" class="form-control" id="searchInput" name="q" placeholder="Tìm kiếm sản phẩm...">
                        <div class="input-group-append">
                            <button type="submit" class="input-group-text bg-transparent text-primary" id="searchBtn">
                                <i class="fa fa-search"></i>
                            </button>
                        </div>
                    </div>
                </form>
            </div>
            <div class="col-lg-3 col-6 text-right">
                <a href="cart" class="btn border">
                    <i class="fas fa-shopping-cart text-primary"></i>
                    <span id="cartCount" class="badge">0</span>
                </a>
            </div>
        </div>
    </div>
    <!-- Topbar End -->

    <!-- Navbar Start -->
    <div class="container-fluid mb-5">
        <div class="row border-top px-xl-5">
            <div class="col-lg-3 d-none d-lg-block">
                <a class="btn shadow-none d-flex align-items-center justify-content-between bg-primary text-white w-100" 
                   data-toggle="collapse" href="#navbar-vertical" 
                   style="height: 65px; margin-top: -1px; padding: 0 30px;">
                    <h6 class="m-0">Danh mục</h6>
                    <i class="fa fa-angle-down text-dark"></i>
                </a>
                <nav class="collapse navbar navbar-vertical navbar-light align-items-start p-0 border border-top-0 border-bottom-0" 
                     id="navbar-vertical">
                    <div class="navbar-nav w-100 overflow-hidden" style="height: auto;">
                        <a href="" class="nav-item nav-link">Đồ chơi trẻ em</a>
                        <a href="" class="nav-item nav-link">Đồ chơi giáo dục</a>
                        <a href="" class="nav-item nav-link">Đồ chơi mô hình</a>
                        <a href="" class="nav-item nav-link">Đồ chơi vận động</a>
                        <a href="" class="nav-item nav-link">Đồ chơi xếp hình</a>
                        <a href="" class="nav-item nav-link">Thú bông</a>
                        <a href="" class="nav-item nav-link">Robot</a>
                    </div>
                </nav>
            </div>
            <div class="col-lg-9">
                <nav class="navbar navbar-expand-lg bg-light navbar-light py-3 py-lg-0 px-0">
                    <a href="homepage" class="text-decoration-none d-block d-lg-none">
                        <h1 class="m-0 display-5 font-weight-semi-bold"><span class="text-primary">Aishiba</span></h1>
                    </a>
                    <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                        <div class="navbar-nav mr-auto py-0">
                            <a href="homepage" class="nav-item nav-link active">Trang chủ</a>
                            <a href="shop" class="nav-item nav-link">Cửa hàng</a>
                            <a href="contact" class="nav-item nav-link">Liên hệ</a>
                        </div>
                        <div class="navbar-nav ml-auto py-0" id="userNav">
                            <a href="login" class="nav-item nav-link" id="loginNav">
                                <i class="fa fa-user text-primary mr-2"></i>Đăng nhập
                            </a>
                        </div>
                    </div>
                </nav>
            </div>
        </div>
    </div>
    <!-- Navbar End -->
    </div>