<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
        body {
            font-family: 'Poppins', sans-serif;
            background-color: #f8f9fa;
        }

        /* Container đăng ký */
        .register-container {
            max-width: 400px;
            margin: 30px auto;
            background: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        /* Tiêu đề */
        .register-container h3 {
            font-size: 20px;
            font-weight: bold;
            color: #003399;
            text-align: center;
            margin-bottom: 15px;
        }

        /* Input */
        .form-control {
            border: 1px solid #ddd;
            border-radius: 5px;
            padding: 10px;
            font-size: 14px;
        }

        .form-control:focus {
            border-color: #003399;
            box-shadow: none;
        }

        /* Nút đăng ký */
        .btn-register {
            background-color: #cc0000;
            color: #fff;
            border: none;
            border-radius: 5px;
            padding: 10px 15px;
            font-size: 14px;
            font-weight: bold;
            width: 100%;
        }

        .btn-register:hover {
            background-color: #ff0000;
        }

        /* Liên kết */
        .text-link {
            color: #003399;
            font-size: 12px;
            text-decoration: none;
        }

        .text-link:hover {
            text-decoration: underline;
        }

        /* Liên kết trong text-center */
        .text-center a {
            color: #cc0000;
            font-weight: bold;
            font-size: 12px;
        }

        .text-center a:hover {
            text-decoration: underline;
        }
    </style>
</head>

<body>
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
                <a href="index.html" class="text-decoration-none">
                    <h1 class="m-0 display-5 font-weight-semi-bold">
                        <img src="img/logo.png" height="42" alt="Aishiba"> 
                        <span class="text-primary">Aishiba</span>
                    </h1>
                </a>
            </div>
            <div class="col-lg-6 col-6 text-center">
               
            </div>
            <div class="col-lg-3 col-6 text-right">
                <a href="cart.html" class="btn border">
                    <i class="fas fa-shopping-cart text-primary"></i>
                    <span class="badge">0</span>
                </a>
            </div>
        </div>
    </div>
    <!-- Topbar End -->

    <!-- Navbar Start -->
    <div class="container-fluid mb-5">
        <div class="row border-top px-xl-5">
            <div class="col-lg-3 d-none d-lg-block">
                <a class="btn shadow-none d-flex align-items-center justify-content-between bg-primary text-white w-100" data-toggle="collapse" href="#navbar-vertical" style="height: 65px; margin-top: -1px; padding: 0 30px;">
                    <h6 class="m-0">Danh mục</h6>
                    <i class="fa fa-angle-down text-dark"></i>
                </a>
                <nav class="collapse navbar navbar-vertical navbar-light align-items-start p-0 border border-top-0 border-bottom-0" id="navbar-vertical">
                    <div class="navbar-nav w-100 overflow-hidden" style="height: 410px">
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
                    <a href="index.html" class="text-decoration-none d-block d-lg-none">
                        <h1 class="m-0 display-5 font-weight-semi-bold"><span class="text-primary">Aishiba</span></h1>
                    </a>
                    <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                        <div class="navbar-nav mr-auto py-0">
                            <a href="index.html" class="nav-item nav-link active">Trang chủ</a>
                            <a href="shop.html" class="nav-item nav-link">Cửa hàng</a>
                            <a href="contact.html" class="nav-item nav-link">Liên hệ</a>
                        </div>

                    </div>
                </nav>
            </div>
        </div>
    </div>
    <!-- Navbar End -->

    <!-- Register Start -->
    <div class="container-fluid pt-5">
        <div class="row justify-content-center">
            <div class="col-lg-6">
                <div class="register-container bg-light">
                    <h3 class="text-center mb-4">Đăng ký tài khoản</h3>
                    <form onsubmit="handleRegister(event)">
                        <div class="form-group">
                            <label for="name">Họ và tên <span class="text-danger">*</span></label>
                            <input type="text" class="form-control" id="name" name="name" placeholder="Nhập họ và tên" required>
                        </div>
                        <div class="form-group">
                            <label for="email">Email <span class="text-danger">*</span></label>
                            <input type="email" class="form-control" id="email" name="email" placeholder="Nhập email của bạn" required>
                        </div>
                        <div class="form-group">
                            <label for="password">Mật khẩu <span class="text-danger">*</span></label>
                            <input type="password" class="form-control" id="password" name="password" placeholder="Nhập mật khẩu" required>
                        </div>
                        <div class="form-group">
                            <label for="confirm-password">Xác nhận mật khẩu <span class="text-danger">*</span></label>
                            <input type="password" class="form-control" id="confirm-password" name="confirm_password" placeholder="Nhập lại mật khẩu" required>
                        </div>
                        <div id="register-alert" class="alert alert-danger d-none" role="alert">
                            Vui lòng kiểm tra lại thông tin đăng ký!
                        </div>
                        <button type="submit" class="btn-register">Đăng Ký</button>
                        <p class="text-center mt-3">Đã có tài khoản? <a href="login.html">Đăng nhập</a></p>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- Register End -->

    <script>
        function handleRegister(event) {
            event.preventDefault();

            const name = document.getElementById('name').value.trim();
            const email = document.getElementById('email').value.trim();
            const password = document.getElementById('password').value;
            const confirmPassword = document.getElementById('confirm-password').value;
            const alertBox = document.getElementById('register-alert');

            // Kiểm tra thông tin đăng ký
            if (!name || !email || !password || !confirmPassword) {
                alertBox.textContent = 'Vui lòng điền đầy đủ thông tin!';
                alertBox.classList.remove('d-none', 'alert-success');
                alertBox.classList.add('alert-danger');
                return;
            }
            if (password !== confirmPassword) {
                alertBox.textContent = 'Mật khẩu và xác nhận mật khẩu không khớp!';
                alertBox.classList.remove('d-none', 'alert-success');
                alertBox.classList.add('alert-danger');
                return;
            }

            // Lưu tài khoản vào localStorage
            const user = { name, email, password };
            localStorage.setItem('aishibaUser', JSON.stringify(user));

            alertBox.textContent = 'Đăng ký thành công! Bạn sẽ được chuyển sang trang đăng nhập.';
            alertBox.classList.remove('d-none', 'alert-danger');
            alertBox.classList.add('alert-success');

            setTimeout(() => {
                window.location.href = 'login.html';
            }, 1200);
        }
    </script>