<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Aishiba - Thanh toán</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Thanh toán tại cửa hàng đồ chơi Aishiba" name="keywords">
    <meta content="Trang thanh toán tại cửa hàng đồ chơi Aishiba" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
</head>

<body>
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
                <a href="index.html" class="text-decoration-none">
                    <h1 class="m-0 display-5 font-weight-semi-bold"><img src="img/logo.png" height="42" alt="Aishiba"> <span class="text-primary">Aishiba</span></h1>
                </a>
            </div>
            <div class="col-lg-6 col-6 text-left">
                <form id="searchForm" action="shop.html" method="get">
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
                <a href="cart.html" class="btn border">
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
                        <div class="navbar-nav ml-auto py-0" id="userNav">
                            <a href="login.html" class="nav-item nav-link" id="loginNav">
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

<!-- Page Header Start -->
<div class="container-fluid bg-secondary mb-5">
    <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 300px">
        <h1 class="font-weight-semi-bold text-uppercase mb-3">Thanh toán</h1>
        <div class="d-inline-flex">
            <p class="m-0"><a href="index.html">Trang chủ</a></p>
            <p class="m-0 px-2">-</p>
            <p class="m-0">Thanh toán</p>
        </div>
    </div>
</div>
<!-- Page Header End -->

<!-- Checkout Start -->
<div class="container-fluid pt-5">
    <div class="row px-xl-5">
        <div class="col-lg-8">
            <h4 class="font-weight-semi-bold mb-4">Thông tin thanh toán</h4>
            <form>
                <div class="row">
                    <div class="col-md-6 form-group">
                        <label>Họ</label>
                        <input class="form-control" type="text" placeholder="Nguyễn">
                    </div>
                    <div class="col-md-6 form-group">
                        <label>Tên</label>
                        <input class="form-control" type="text" placeholder="Văn A">
                    </div>
                    <div class="col-md-6 form-group">
                        <label>Email</label>
                        <input class="form-control" type="email" placeholder="example@email.com">
                    </div>
                    <div class="col-md-6 form-group">
                        <label>Số điện thoại</label>
                        <input class="form-control" type="text" placeholder="+84 123 456 789">
                    </div>
                    <div class="col-md-6 form-group">
                        <label>Địa chỉ</label>
                        <input class="form-control" type="text" placeholder="123 Đường ABC">
                    </div>
                    <div class="col-md-6 form-group">
                        <label>Thành phố</label>
                        <input class="form-control" type="text" placeholder="Hồ Chí Minh">
                    </div>
                    <div class="col-md-6 form-group">
                        <label>Quốc gia</label>
                        <select class="custom-select">
                            <option selected>Việt Nam</option>
                            <option>Hoa Kỳ</option>
                            <option>Nhật Bản</option>
                            <option>Hàn Quốc</option>
                        </select>
                    </div>
                    <div class="col-md-6 form-group">
                        <label>Mã bưu điện</label>
                        <input class="form-control" type="text" placeholder="700000">
                    </div>
                </div>
            </form>
        </div>
        <div class="col-lg-4">
            <h4 class="font-weight-semi-bold mb-4">Tổng đơn hàng</h4>
            <div id="orderSummary">
                <!-- Các sản phẩm sẽ được thêm tự động bằng JavaScript -->
            </div>
            <hr>
            <div class="d-flex justify-content-between">
                <h6>Tổng cộng</h6>
                <h6 id="totalAmount">0₫</h6>
            </div>
            <button class="btn btn-primary btn-block mt-3" id="placeOrderBtn">Đặt hàng</button>
        </div>
    </div>
</div>
<!-- Checkout End -->

<!-- Footer Start -->
<div class="container-fluid bg-secondary text-dark mt-5 pt-5">
    <div class="row px-xl-5 pt-5">
        <div class="col-lg-4 col-md-12 mb-5 pr-3 pr-xl-5">
            <a href="index.html" class="text-decoration-none">
                <h1 class="mb-4 display-5 font-weight-semi-bold">
                    <img src="img/logo.png" height="42" alt="Aishiba">
                    <span class="text-primary">Aishiba</span>
                </h1>
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
<script src="lib/easing/easing.min.js"></script>
<script src="lib/owlcarousel/owl.carousel.min.js"></script>

<!-- Template Javascript -->
<script src="js/main.js"></script>
<script>
    document.addEventListener("DOMContentLoaded", function () {
        const orderSummary = document.getElementById("orderSummary");
        const totalAmount = document.getElementById("totalAmount");
        const placeOrderBtn = document.getElementById("placeOrderBtn");

        // Lấy giỏ hàng từ localStorage
        function getCart() {
            return JSON.parse(localStorage.getItem('cart') || '[]');
        }

        // Hiển thị giỏ hàng trong phần tóm tắt đơn hàng và tính tổng cộng (có phí ship)
        function displayCartItems() {
            orderSummary.innerHTML = '';
            let subtotal = 0;
            const cartItems = getCart();
            if (cartItems.length === 0) {
                orderSummary.innerHTML = '<div class="text-center text-muted">Giỏ hàng trống.</div>';
                totalAmount.textContent = "0₫";
            } else {
                cartItems.forEach(item => {
                    const itemTotal = item.price * item.quantity;
                    subtotal += itemTotal;
                    const itemRow = document.createElement("div");
                    itemRow.classList.add("d-flex", "justify-content-between");
                    itemRow.innerHTML = `
                            <p>${item.name} (x${item.quantity})</p>
                            <p>${itemTotal.toLocaleString()}₫</p>
                        `;
                    orderSummary.appendChild(itemRow);
                });
                // Thêm dòng tạm tính
                const subRow = document.createElement("div");
                subRow.classList.add("d-flex", "justify-content-between", "border-top", "pt-2");
                subRow.innerHTML = `<strong>Tạm tính</strong><strong>${subtotal.toLocaleString()}₫</strong>`;
                orderSummary.appendChild(subRow);

                // Phí vận chuyển cố định 30.000₫ nếu có hàng
                const shipping = subtotal > 0 ? 30000 : 0;
                const shipRow = document.createElement("div");
                shipRow.classList.add("d-flex", "justify-content-between");
                shipRow.innerHTML = `<span>Phí vận chuyển</span><span>${shipping.toLocaleString()}₫</span>`;
                orderSummary.appendChild(shipRow);

                // Tổng cộng
                const total = subtotal + shipping;
                totalAmount.textContent = total.toLocaleString() + "₫";
            }
            // Nếu giỏ hàng trống, tổng cộng là 0
            if (cartItems.length === 0) totalAmount.textContent = "0₫";
        }

        // Tự động điền thông tin nếu đã đăng nhập
        function autofillUserInfo() {
            const loginData = JSON.parse(localStorage.getItem('rememberLogin') || '{}');
            const userData = JSON.parse(localStorage.getItem('aishibaUser') || '{}');
            // Chỉ autofill nếu có dữ liệu
            if (userData && userData.name) {
                const nameParts = (userData.name || '').trim().split(' ');
                const firstName = nameParts.length > 1 ? nameParts.slice(0, -1).join(' ') : '';
                const lastName = nameParts.length > 0 ? nameParts[nameParts.length - 1] : '';
                document.querySelector("input[placeholder='Nguyễn']").value = firstName;
                document.querySelector("input[placeholder='Văn A']").value = lastName;
            }
            if (userData && userData.email) {
                document.querySelector("input[placeholder='example@email.com']").value = userData.email;
            } else if (loginData && loginData.email) {
                document.querySelector("input[placeholder='example@email.com']").value = loginData.email;
            }
            if (userData && userData.phone) {
                document.querySelector("input[placeholder='+84 123 456 789']").value = userData.phone;
            }
            if (userData && userData.address) {
                document.querySelector("input[placeholder='123 Đường ABC']").value = userData.address;
            }
            if (userData && userData.city) {
                document.querySelector("input[placeholder='Hồ Chí Minh']").value = userData.city;
            }
            if (userData && userData.postalCode) {
                document.querySelector("input[placeholder='700000']").value = userData.postalCode;
            }
        }

        // Khi click vào trường địa chỉ, nếu đã đăng nhập thì chuyển sang trang user_info để chỉnh sửa
        document.addEventListener('DOMContentLoaded', function() {
            const loginData = JSON.parse(localStorage.getItem('rememberLogin') || '{}');
            const userData = JSON.parse(localStorage.getItem('aishibaUser') || '{}');
            const isLoggedIn = (
                (loginData.email === 'user1@example.com' && loginData.password === '12345678') ||
                (loginData.email === 'admin' && loginData.password === '123456') ||
                (userData.email && loginData.email === userData.email && loginData.password === userData.password)
            );
            if (isLoggedIn) {
                const addressInput = document.querySelector("input[placeholder='123 Đường ABC']");
                if (addressInput) {
                    addressInput.style.cursor = "pointer";
                    addressInput.title = "Nhấn để chỉnh sửa địa chỉ trong tài khoản";
                    addressInput.addEventListener("focus", function(e) {
                        window.location.href = "user_info.html";
                    });
                }
            }
        });

        // Kiểm tra thông tin đầu vào
        function validateInputs() {
            const firstName = document.querySelector("input[placeholder='Nguyễn']").value.trim();
            const lastName = document.querySelector("input[placeholder='Văn A']").value.trim();
            const email = document.querySelector("input[placeholder='example@email.com']").value.trim();
            const phone = document.querySelector("input[placeholder='+84 123 456 789']").value.trim();
            const address = document.querySelector("input[placeholder='123 Đường ABC']").value.trim();
            const city = document.querySelector("input[placeholder='Hồ Chí Minh']").value.trim();
            const postalCode = document.querySelector("input[placeholder='700000']").value.trim();

            if (!firstName || !lastName || !email || !phone || !address || !city || !postalCode) {
                showError("Vui lòng nhập đầy đủ thông tin trước khi đặt hàng.");
                return false;
            }

            // Kiểm tra định dạng email
            const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
            if (!emailRegex.test(email)) {
                showError("Vui lòng nhập địa chỉ email hợp lệ.");
                return false;
            }

            // Kiểm tra định dạng số điện thoại
            const phoneRegex = /^\+?[0-9]{10,15}$/;
            if (!phoneRegex.test(phone)) {
                showError("Vui lòng nhập số điện thoại hợp lệ.");
                return false;
            }

            return true;
        }

        // Hiển thị thông báo lỗi đẹp
        function showError(message) {
            let oldModal = document.getElementById('errorModal');
            if (oldModal) oldModal.remove();
            let modal = document.createElement('div');
            modal.id = 'errorModal';
            modal.style.position = 'fixed';
            modal.style.top = '0';
            modal.style.left = '0';
            modal.style.width = '100vw';
            modal.style.height = '100vh';
            modal.style.background = 'rgba(0,0,0,0.25)';
            modal.style.display = 'flex';
            modal.style.alignItems = 'center';
            modal.style.justifyContent = 'center';
            modal.style.zIndex = 10000;
            modal.innerHTML = `
                    <div style="background:#fff; border-radius:12px; max-width:400px; width:90%; padding:28px 24px 20px 24px; box-shadow:0 8px 32px rgba(0,0,0,0.18); text-align:center; position:relative;">
                        <div style="margin-bottom:14px;">
                            <svg width="48" height="48" viewBox="0 0 48 48">
                                <circle cx="24" cy="24" r="22" fill="none" stroke="#ffe0e0" stroke-width="3"/>
                                <line x1="16" y1="16" x2="32" y2="32" stroke="#e57373" stroke-width="4" stroke-linecap="round"/>
                                <line x1="32" y1="16" x2="16" y2="32" stroke="#e57373" stroke-width="4" stroke-linecap="round"/>
                            </svg>
                        </div>
                        <h4 style="font-weight:600; color:#e57373; margin-bottom:10px;">Lỗi!</h4>
                        <div style="color:#555; font-size:1rem; margin-bottom:18px;">
                            ${message}
                        </div>
                        <button id="errorModalOk" style="padding:6px 28px; font-size:1rem; border:none; border-radius:8px; background:#e57373; color:#fff; font-weight:600; box-shadow:0 2px 8px rgba(230,115,115,0.08); cursor:pointer;">OK</button>
                    </div>
                `;
            document.body.appendChild(modal);
            document.getElementById('errorModalOk').onclick = function() {
                modal.remove();
            };
        }

        // Xử lý khi nhấn nút "Đặt hàng"
        if (placeOrderBtn) {
            placeOrderBtn.addEventListener("click", function (e) {
                e.preventDefault();
                if (validateInputs()) {
                    localStorage.removeItem('cart');
                    // Hiển thị modal thành công
                    let modal = document.createElement('div');
                    modal.id = 'successModal';
                    modal.style.position = 'fixed';
                    modal.style.top = '0';
                    modal.style.left = '0';
                    modal.style.width = '100vw';
                    modal.style.height = '100vh';
                    modal.style.background = 'rgba(0,0,0,0.25)';
                    modal.style.display = 'flex';
                    modal.style.alignItems = 'center';
                    modal.style.justifyContent = 'center';
                    modal.style.zIndex = 10000;
                    modal.innerHTML = `
                            <div style="background:#fff; border-radius:12px; max-width:400px; width:90%; padding:32px 24px 24px 24px; box-shadow:0 8px 32px rgba(0,0,0,0.18); text-align:center; position:relative;">
                                <div style="margin-bottom:16px;">
                                    <svg width="56" height="56" viewBox="0 0 80 80">
                                        <circle cx="40" cy="40" r="38" fill="none" stroke="#d4f5dd" stroke-width="4"/>
                                        <polyline points="25,43 37,55 56,30" fill="none" stroke="#6fcf97" stroke-width="5" stroke-linecap="round" stroke-linejoin="round"/>
                                    </svg>
                                </div>
                                <h3 style="font-weight:700; color:#444; margin-bottom:12px;">Đặt hàng thành công!</h3>
                                <div style="color:#555; font-size:1.05rem; margin-bottom:22px;">
                                    Cảm ơn bạn đã mua sắm tại Aishiba.<br>Chúng tôi sẽ liên hệ xác nhận đơn hàng sớm nhất.
                                </div>
                                <button id="successModalOk" style="padding:8px 32px; font-size:1.1rem; border:none; border-radius:8px; background:#7b7be6; color:#fff; font-weight:600; box-shadow:0 2px 8px rgba(123,123,230,0.08); cursor:pointer;">Về trang chủ</button>
                            </div>
                        `;
                    document.body.appendChild(modal);
                    document.getElementById('successModalOk').onclick = function() {
                        window.location.href = "index.html";
                    };
                }
            });
        }

        // Hiển thị giỏ hàng khi tải trang và tự động điền thông tin nếu có
        displayCartItems();
        autofillUserInfo();
    });

    // Đổi màu các thành phần header cho đồng bộ & cập nhật userNav và số lượng giỏ hàng
    document.addEventListener('DOMContentLoaded', function() {
        document.querySelectorAll('.bg-primary').forEach(e => e.style.background = '#D19C97');
        document.querySelectorAll('.text-primary').forEach(e => e.style.color = '#D19C97');
        document.querySelectorAll('.badge-primary').forEach(e => e.style.background = '#D19C97');
        document.querySelectorAll('.nav-link.active').forEach(e => e.style.color = '#D19C97');

        // Cập nhật số lượng sản phẩm trên icon giỏ hàng nếu có
        const cartCount = document.getElementById('cartCount');
        if (cartCount) {
            const cart = JSON.parse(localStorage.getItem('cart') || '[]');
            const total = cart.reduce((sum, item) => sum + (item.quantity || 1), 0);
            cartCount.textContent = total;
        }

        // Hiển thị liên kết user_info nếu đã đăng nhập
        const userNav = document.getElementById('userNav');
        const loginData = JSON.parse(localStorage.getItem('rememberLogin') || '{}');
        const userData = JSON.parse(localStorage.getItem('aishibaUser') || '{}');
        let isLoggedIn = false;
        let userName = '';

        if (
            (loginData.email === 'user1@example.com' && loginData.password === '12345678') ||
            (loginData.email === 'admin' && loginData.password === '123456') ||
            (userData.email && loginData.email === userData.email && loginData.password === userData.password)
        ) {
            isLoggedIn = true;
            userName = userData.name || loginData.email;
        }

        if (isLoggedIn && userNav) {
            userNav.innerHTML = `
                    <a href="user_info.html" class="nav-item nav-link" style="color:#D19C97;">
                        <i class="fa fa-user text-primary mr-2"></i>${userName ? userName : 'Tài khoản của tôi'}
                    </a>
                    <a href="#" class="nav-item nav-link" id="logoutNav" style="color:#D19C97;">
                        <i class="fa fa-sign-out-alt text-primary mr-2"></i>Đăng xuất
                    </a>
                `;
            document.getElementById('logoutNav').addEventListener('click', function(e) {
                e.preventDefault();
                localStorage.removeItem('rememberLogin');
                window.location.reload();
            });
        }
    });

    // Thêm chức năng liên kết danh mục tới shop.html và lọc theo danh mục
    document.addEventListener('DOMContentLoaded', function() {
        document.querySelectorAll('#navbar-vertical .nav-item.nav-link').forEach(function(link) {
            link.style.cursor = 'pointer';
            link.addEventListener('click', function(e) {
                e.preventDefault();
                const category = this.textContent.trim();
                window.location.href = 'shop.html?category=' + encodeURIComponent(category);
            });
        });
    });
</script>
</body>

</html>