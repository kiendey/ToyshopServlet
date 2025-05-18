<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- Contact Start -->
    <div class="container-fluid pt-5">
        <div class="text-center mb-4">
            <h2 class="section-title px-5"><span class="px-2">Liên hệ với chúng tôi</span></h2>
        </div>
        <div class="row px-xl-5">
            <div class="col-lg-7 mb-5">
                <div class="contact-form">
                    <form>
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="Tên của bạn" required>
                        </div>
                        <div class="form-group">
                            <input type="email" class="form-control" placeholder="Email của bạn" required>
                        </div>
                        <div class="form-group">
                            <textarea class="form-control" rows="5" placeholder="Tin nhắn của bạn" required></textarea>
                        </div>
                        <button class="btn btn-primary py-2 px-4" type="submit">Gửi tin nhắn</button>
                    </form>
                </div>
            </div>
            <div class="col-lg-5 mb-5">
                <h5 class="font-weight-semi-bold mb-3">Thông tin liên hệ</h5>
                <p>Liên hệ với chúng tôi để được hỗ trợ nhanh chóng và giải đáp mọi thắc mắc.</p>
                <p><i class="fa fa-map-marker-alt text-primary mr-3"></i>123 Đường ABC, TP. Hồ Chí Minh</p>
                <p><i class="fa fa-envelope text-primary mr-3"></i>support@aishiba.com</p>
                <p><i class="fa fa-phone-alt text-primary mr-3"></i>+84 123 456 789</p>
            </div>
        </div>
    </div>
    <!-- Contact End -->

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
    <script>
// --- Giỏ hàng: cập nhật số lượng trên icon ---
    function getCart() {
        return JSON.parse(localStorage.getItem('cart') || '[]');
    }
    function updateCartCount() {
        const cart = getCart();
        const total = cart.reduce((sum, item) => sum + (item.quantity || 1), 0);
        const cartCount = document.getElementById('cartCount');
        if (cartCount) cartCount.textContent = total;
    }

    document.addEventListener('DOMContentLoaded', function() {
        // Đổi màu các thành phần header cho đồng bộ
        document.querySelectorAll('.bg-primary').forEach(e => e.style.background = '#D19C97');
        document.querySelectorAll('.text-primary').forEach(e => e.style.color = '#D19C97');
        document.querySelectorAll('.badge-primary').forEach(e => e.style.background = '#D19C97');
        document.querySelectorAll('.nav-link.active').forEach(e => e.style.color = '#D19C97');

        // Cập nhật số lượng giỏ hàng khi tải trang
        updateCartCount();

        // Hiển thị liên kết user_info nếu đã đăng nhập
        const userNav = document.getElementById('userNav');
        const loginData = JSON.parse(localStorage.getItem('rememberLogin') || '{}');
        const userData = JSON.parse(localStorage.getItem('aishibaUser') || '{}');
        let isLoggedIn = false;
        let userName = '';

        // Kiểm tra đăng nhập với tài khoản mặc định hoặc tài khoản đã đăng ký
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
                <a href="user_info" class="nav-item nav-link" style="color:#D19C97;">
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

        // Thêm chức năng liên kết danh mục tới shop và lọc theo danh mục
        document.querySelectorAll('#navbar-vertical .nav-item.nav-link').forEach(function(link) {
            link.style.cursor = 'pointer';
            link.addEventListener('click', function(e) {
                e.preventDefault();
                const category = this.textContent.trim();
                window.location.href = 'shop?category=' + encodeURIComponent(category);
            });
        });
    });
    </script>