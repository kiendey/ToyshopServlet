<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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

<body>

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
                        <p class="text-center mt-3">Chưa có tài khoản? <a href="register">Đăng ký tài khoản</a></p>
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
    <script src="${pageContext.request.contextPath}/user/js/main.js"></script>

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
            window.location.href = 'homepage';
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