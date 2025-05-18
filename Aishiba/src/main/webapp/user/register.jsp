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

<body>


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
                        <p class="text-center mt-3">Đã có tài khoản? <a href="login">Đăng nhập</a></p>
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
                window.location.href = 'login';
            }, 1200);
        }
    </script>