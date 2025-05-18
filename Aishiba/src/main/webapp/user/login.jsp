<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 5/18/2025
  Time: 2:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <title>Aishiba - Đăng nhập</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="Đăng nhập vào cửa hàng đồ chơi Aishiba" name="keywords">
  <meta content="Trang đăng nhập vào cửa hàng đồ chơi Aishiba" name="description">

  <!-- Favicon -->
  <link href="img/favicon.ico" rel="icon">

  <!-- Google Web Fonts -->
  <link rel="preconnect" href="https://fonts.gstatic.com">
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

  <!-- Font Awesome -->
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
  <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">

  <!-- Customized Bootstrap Stylesheet -->
  <link href="css/style.css" rel="stylesheet">

  <style>
    body {
      font-family: 'Poppins', sans-serif;
      background-color: #f8f9fa;
    }

    .login-container {
      max-width: 400px;
      margin: 50px auto;
      background: #fff;
      padding: 30px;
      border-radius: 8px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }

    .login-container h3 {
      font-size: 24px;
      font-weight: bold;
      color: #003399;
      text-align: center;
      margin-bottom: 20px;
    }

    .form-control {
      border: 1px solid #ddd;
      border-radius: 5px;
      padding: 10px;
    }

    .form-control:focus {
      border-color: #003399;
      box-shadow: none;
    }

    .btn-login {
      background-color: #cc0000;
      color: #fff;
      border: none;
      border-radius: 5px;
      padding: 10px 20px;
      font-size: 16px;
      font-weight: bold;
      width: 100%;
    }

    .btn-login:hover {
      background-color: #ff0000;
    }

    .text-link {
      color: #003399;
      font-size: 14px;
      text-decoration: none;
    }

    .text-link:hover {
      text-decoration: underline;
    }

    .text-center a {
      color: #cc0000;
      font-weight: bold;
    }

    .text-center a:hover {
      text-decoration: underline;
    }

    /* Căn chỉnh biểu tượng hiển thị mật khẩu */
    .password-toggle {
      position: absolute;
      right: 10px;
      top: 75%;
      transform: translateY(-50%);
      cursor: pointer;
      color: #aaa;
      font-size: 18px;
      z-index: 10;
    }

    .password-toggle:hover {
      color: #003399;
    }

    /* Đảm bảo form-group có position: relative */
    .form-group {
      position: relative;
    }

    /* Căn chỉnh biểu tượng giỏ hàng */
    .text-right {
      text-align: right !important;
    }

    .btn.border {
      padding: 8px 12px;
      border-radius: 5px;
      transition: all 0.3s ease;
    }

    .btn.border:hover {
      background-color: #f8f9fa;
      border-color: #ddd;
    }

    /* Nút gửi yêu cầu trong modal */
    .btn-reset {
      background-color: #cc0000;
      /* Màu đỏ */
      color: #fff;
      border: none;
      border-radius: 5px;
      padding: 10px 20px;
      font-size: 16px;
      font-weight: bold;
      width: 100%;
    }

    .btn-reset:hover {
      background-color: #ff0000;
      /* Màu đỏ sáng hơn khi hover */
    }

    /* Thông báo trong modal */
    #forgot-alert {
      display: none;
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
      <a class="btn shadow-none d-flex align-items-center justify-content-between bg-primary text-white w-100"
         data-toggle="collapse" href="#navbar-vertical"
         style="height: 65px; margin-top: -1px; padding: 0 30px;">
        <h6 class="m-0">Danh mục</h6>
        <i class="fa fa-angle-down text-dark"></i>
      </a>
      <nav class="collapse navbar navbar-vertical navbar-light align-items-start p-0 border border-top-0 border-bottom-0"
           id="navbar-vertical">
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

<!-- Login Form Start -->
<div class="container-fluid pt-5">
  <div class="row justify-content-center">
    <div class="col-lg-6">
      <div class="login-container">
        <h3>Đăng Nhập</h3>
        <form onsubmit="handleLogin(event)">
          <div class="form-group">
            <label for="email">Email <span class="text-danger">*</span></label>
            <input type="email" class="form-control" id="email" placeholder="Nhập email của bạn" required>
          </div>
          <div class="form-group">
            <label for="password">Mật khẩu <span class="text-danger">*</span></label>
            <input type="password" class="form-control" id="password" placeholder="Nhập mật khẩu" required>
            <i class="fa fa-eye password-toggle" onclick="togglePassword()"></i>
          </div>
          <!-- Thêm thông báo -->
          <div id="login-alert" class="alert alert-danger d-none" role="alert">
            Email hoặc mật khẩu không đúng. Vui lòng thử lại!
          </div>
          <!-- Thêm vào trước nút Đăng Nhập -->
          <div class="form-group form-check">
            <input type="checkbox" class="form-check-input" id="rememberMe">
            <label class="form-check-label" for="rememberMe">Ghi nhớ đăng nhập</label>
          </div>
          <button type="submit" class="btn-login">Đăng Nhập</button>
          <div class="text-center mt-3">
            <a href="#" class="text-link" data-toggle="modal" data-target="#forgotPasswordModal">Quên mật khẩu?</a>
          </div>
          <p class="text-center mt-3">Chưa có tài khoản? <a href="register.html">Đăng ký tài khoản</a></p>
        </form>
      </div>
    </div>
  </div>
</div>
<!-- Login Form End -->

<!-- Modal Quên Mật Khẩu -->
<div class="modal fade" id="forgotPasswordModal" tabindex="-1" role="dialog" aria-labelledby="forgotPasswordModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="forgotPasswordModalLabel">Quên Mật Khẩu</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form id="forgotPasswordForm" onsubmit="handleForgotPassword(event)">
          <div class="form-group">
            <label for="forgot-email">Email <span class="text-danger">*</span></label>
            <input type="email" class="form-control" id="forgot-email" placeholder="Nhập email của bạn" required>
          </div>
          <div id="forgot-alert" class="alert d-none mt-3" role="alert"></div>
          <button type="submit" class="btn-reset mt-3">Gửi yêu cầu</button>
        </form>
      </div>
    </div>
  </div>
</div>
<!-- Modal Quên Mật Khẩu End -->

<!-- Footer Start -->
<div class="container-fluid bg-secondary text-dark mt-5 pt-5">
  <div class="row px-xl-5 pt-5">
    <div class="col-lg-4 col-md-12 mb-5 pr-3 pr-xl-5">
      <a href="index.html" class="text-decoration-none">
        <h1 class="mb-4 display-5 font-weight-semi-bold"><img src="img/logo.png" height="42" alt="Aishiba"> <span class="text-primary">Aishiba</span></h1>
      </a>
      <p>Chúng tôi cung cấp các sản phẩm đồ chơi chất lượng cao, an toàn và sáng tạo cho trẻ em.</p>
      <p class="mb-2"><i class="fa fa-map-marker-alt text-primary mr-3"></i>123 Đường ABC, TP. Hồ Chí Minh</p>
      <p class="mb-2"><i class="fa fa-envelope text-primary mr-3"></i>support@aishiba.com</p>
      <p class="mb-0"><i class="fa fa-phone-alt text-primary mr-3"></i>+84 123 456 789</p>
    </div>

  </div>
  <div class="row border-top border-light mx-xl-5 py-4">
    <div class="col-md-6 px-xl-0">
      <p class="mb-md-0 text-center text-md-left text-dark">
        &copy; <a class="text-dark font-weight-semi-bold" href="#">Aishiba</a>. All Rights Reserved.
      </p>
    </div>
  </div>
</div>
<!-- Footer End -->

<!-- Back to Top -->
<a href="#" class="btn btn-primary back-to-top"><i class="fa fa-angle-double-up"></i></a>

<!-- JavaScript Libraries -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
<script src="js/main.js"></script>

<script>
  function togglePassword() {
    const passwordField = document.getElementById('password');
    const toggleIcon = document.querySelector('.password-toggle');
    if (passwordField.type === 'password') {
      passwordField.type = 'text';
      toggleIcon.classList.remove('fa-eye');
      toggleIcon.classList.add('fa-eye-slash');
    } else {
      passwordField.type = 'password';
      toggleIcon.classList.remove('fa-eye-slash');
      toggleIcon.classList.add('fa-eye');
    }
  }

  // Tự động điền nếu đã ghi nhớ
  window.addEventListener('DOMContentLoaded', () => {
    const saved = JSON.parse(localStorage.getItem('rememberLogin') || '{}');
    if (saved.email && saved.password) {
      document.getElementById('email').value = saved.email;
      document.getElementById('password').value = saved.password;
      document.getElementById('rememberMe').checked = true;
    }
  });

  function handleLogin(event) {
    event.preventDefault();

    const email = document.getElementById('email').value.trim();
    const password = document.getElementById('password').value.trim();
    const remember = document.getElementById('rememberMe')?.checked;
    const alertBox = document.getElementById('login-alert');

    // Lấy tài khoản đã đăng ký
    const user = JSON.parse(localStorage.getItem('aishibaUser') || '{}');

    // Tài khoản mặc định
    const defaultUser = {
      email: 'user1@example.com',
      password: '12345678'
    };

    if (
            (email === user.email && password === user.password) ||
            (email === defaultUser.email && password === defaultUser.password) ||
            (email === 'admin' && password === '123456')
    ) {
      // Lưu thông tin nếu chọn ghi nhớ
      if (remember) {
        localStorage.setItem('rememberLogin', JSON.stringify({ email, password }));
      } else {
        localStorage.removeItem('rememberLogin');
      }
      alertBox.classList.remove('d-none', 'alert-danger');
      alertBox.classList.add('alert-success');
      alertBox.textContent = 'Đăng nhập thành công! Đang chuyển hướng...';
      setTimeout(() => {
        window.location.href = 'index.html';
      }, 1200);
    } else {
      alertBox.classList.remove('d-none', 'alert-success');
      alertBox.classList.add('alert-danger');
      alertBox.textContent = 'Email hoặc mật khẩu không đúng. Vui lòng thử lại!';
    }
  }

  function handleForgotPassword(event) {
    event.preventDefault();

    const email = document.getElementById('forgot-email').value.trim();
    const alertBox = document.getElementById('forgot-alert');

    if (email === '') {
      alertBox.textContent = 'Vui lòng nhập email!';
      alertBox.classList.remove('d-none', 'alert-success');
      alertBox.classList.add('alert-danger');
    } else {
      alertBox.textContent = 'Yêu cầu đặt lại mật khẩu đã được gửi!';
      alertBox.classList.remove('d-none', 'alert-danger');
      alertBox.classList.add('alert-success');
    }
  }

  // Reset modal alert mỗi khi mở lại modal
  $('#forgotPasswordModal').on('show.bs.modal', function () {
    const alertBox = document.getElementById('forgot-alert');
    alertBox.classList.add('d-none');
    alertBox.classList.remove('alert-danger', 'alert-success');
    alertBox.textContent = '';
    document.getElementById('forgot-email').value = '';
  });
</script>

</body>

</html>