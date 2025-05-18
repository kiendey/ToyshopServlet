<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>

<!-- Product Detail Start -->
    <div class="container-fluid py-5">
        <div class="row px-xl-5">
            <!-- Hình ảnh sản phẩm -->
            <div class="col-lg-5">
                <img class="img-fluid w-100 border" src="img/product-1.jpg" alt="Sản phẩm">
            </div>

            <!-- Thông tin sản phẩm -->
            <div class="col-lg-7">
                <h3 class="font-weight-semi-bold">Đồ Chơi Lắp Ráp Thùng Gạch Sáng Tạo: Xe Hơi Và Xe Tải LEGO DUPLO 10439 (80 Chi Tiết)</h3>
                <p class="mb-2"><strong>Thương hiệu:</strong> <a href="#" class="text-primary">LEGO DUPLO</a></p>
                <p class="mb-2"><strong>SKU:</strong> 10439</p>
                <h4 class="text-primary mb-3">977.000đ <small class="text-muted"><del>1.629.000đ</del></small> <span class="badge badge-danger">-40%</span></h4>
                <ul class="list-unstyled mb-4">
                    <li><i class="fa fa-check text-primary mr-2"></i> Hàng chính hãng</li>
                    <li><i class="fa fa-check text-primary mr-2"></i> Miễn phí giao hàng toàn quốc đơn trên 500k</li>
                    <li><i class="fa fa-check text-primary mr-2"></i> Giao hàng hỏa tốc 4 tiếng</li>
                </ul>
                <div class="d-flex align-items-center mb-4">
                    <label class="mr-3">Số lượng:</label>
                    <div class="input-group quantity mr-3" style="width: 130px;">
                        <div class="input-group-btn">
                            <button class="btn btn-primary btn-minus">
                                <i class="fa fa-minus"></i>
                            </button>
                        </div>
                        <input type="text" class="form-control bg-secondary text-center" value="1">
                        <div class="input-group-btn">
                            <button class="btn btn-primary btn-plus">
                                <i class="fa fa-plus"></i>
                            </button>
                        </div>
                    </div>
                    <button class="btn btn-primary px-3"><i class="fa fa-shopping-cart mr-1"></i> Thêm vào giỏ hàng</button>
                </div>
                <p class="mb-4"><strong>Dự kiến các cửa hàng đang còn sản phẩm:</strong></p>
                <div class="border p-3 mb-3">
                    <p class="mb-1"><strong>[CHA093] MYKINGDOM TRƯỜNG CHINH Q12</strong></p>
                    <p class="mb-1">70 Trường Chinh, Phường Tân Hưng Thuận, Quận 12, Thành phố Hồ Chí Minh</p>
                    <p class="mb-0"><i class="fa fa-phone text-primary mr-2"></i>+842836200987</p>
                    <p class="text-success mt-2">Còn: <strong>10</strong> sản phẩm</p>
                </div>
            </div>
        </div>

        <!-- Tab thông tin sản phẩm -->
        <div class="row px-xl-5 mt-5">
            <div class="col">
                <div class="nav nav-tabs border-secondary mb-4">
                    <a class="nav-item nav-link text-dark active" data-toggle="tab" href="#tab-description">Mô tả</a>
                    <a class="nav-item nav-link text-dark" data-toggle="tab" href="#tab-information">Thông tin kỹ thuật</a>
                    <a class="nav-item nav-link text-dark" data-toggle="tab" href="#tab-reviews">Đánh giá (3)</a>
                </div>
                <div class="tab-content">
                    <!-- Mô tả sản phẩm -->
                    <div class="tab-pane fade show active" id="tab-description">
                        <h4 class="mb-3">Mô tả sản phẩm</h4>
                        <p>Đồ chơi lắp ráp thùng gạch sáng tạo giúp trẻ phát triển tư duy sáng tạo, kỹ năng vận động và khả năng giải quyết vấn đề. Sản phẩm phù hợp cho trẻ từ 1 tuổi trở lên.</p>
                    </div>

                    <!-- Thông tin kỹ thuật -->
                    <div class="tab-pane fade" id="tab-information">
                        <h4 class="mb-3">Thông tin kỹ thuật</h4>
                        <ul class="list-unstyled">
                            <li><strong>Thương hiệu:</strong> LEGO DUPLO</li>
                            <li><strong>SKU:</strong> 10439</li>
                            <li><strong>Chất liệu:</strong> Nhựa ABS an toàn</li>
                            <li><strong>Số lượng chi tiết:</strong> 80</li>
                            <li><strong>Độ tuổi phù hợp:</strong> 1+ tuổi</li>
                        </ul>
                    </div>

                    <!-- Đánh giá sản phẩm -->
                    <div class="tab-pane fade" id="tab-reviews">
                        <h4 class="mb-3">Đánh giá từ khách hàng</h4>
                        <div class="media mb-4">
                            <img src="img/user-1.jpg" alt="User" class="img-fluid mr-3 mt-1" style="width: 45px;">
                            <div class="media-body">
                                <h6>Nguyễn Văn A<small> - <i>01/05/2025</i></small></h6>
                                <div class="text-primary mb-2">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star-half-alt"></i>
                                </div>
                                <p>Sản phẩm rất tốt, bé nhà mình rất thích!</p>
                            </div>
                        </div>
                        <div class="media mb-4">
                            <img src="img/user-2.jpg" alt="User" class="img-fluid mr-3 mt-1" style="width: 45px;">
                            <div class="media-body">
                                <h6>Trần Thị B<small> - <i>28/04/2025</i></small></h6>
                                <div class="text-primary mb-2">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <p>Chất lượng tuyệt vời, giao hàng nhanh chóng.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Product Detail End -->

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
    <script>
        // Lấy ID sản phẩm từ URL
        const urlParams = new URLSearchParams(window.location.search);
        const productId = urlParams.get('id');

        // Hiển thị ID sản phẩm (hoặc tải thông tin sản phẩm từ server)
        console.log("ID sản phẩm:", productId);
        
    document.addEventListener('DOMContentLoaded', function() {
    // Đổi màu các thành phần header cho đồng bộ
    document.querySelectorAll('.bg-primary').forEach(e => e.style.background = '#D19C97');
    document.querySelectorAll('.text-primary').forEach(e => e.style.color = '#D19C97');
    document.querySelectorAll('.badge-primary').forEach(e => e.style.background = '#D19C97');
    document.querySelectorAll('.nav-link.active').forEach(e => e.style.color = '#D19C97');

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


    // Liên kết danh mục sang shop.html và lọc theo danh mục
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

    // Hàm lấy giỏ hàng từ localStorage
    function getCart() {
        return JSON.parse(localStorage.getItem('cart') || '[]');
    }

    // Hàm lưu giỏ hàng vào localStorage
    function setCart(cart) {
        localStorage.setItem('cart', JSON.stringify(cart));
    }

    // Hàm cập nhật số lượng sản phẩm trên icon giỏ hàng
    function updateCartCount() {
        const cart = getCart();
        const total = cart.reduce((sum, item) => sum + (item.quantity || 1), 0);
        const cartCount = document.getElementById('cartCount');
        if (cartCount) cartCount.textContent = total;
    }

    // Hàm thêm sản phẩm vào giỏ hàng (lưu cả id, tên, giá)
    function addToCart(productId, productName, price, quantity) {
        let cart = getCart();
        let found = false;
        cart = cart.map(item => {
            if (item.id === productId) {
                found = true;
                return { ...item, quantity: (item.quantity || 1) + quantity };
            }
            return item;
        });
        if (!found) {
            cart.push({ id: productId, name: productName, price: price, quantity: quantity });
        }
        setCart(cart);
        updateCartCount();
    }

    // Hàm hiển thị modal thông báo thành công
    function showSuccessModal(productName, price) {
        let oldModal = document.getElementById('successModal');
        if (oldModal) oldModal.remove();

        let modal = document.createElement('div');
        modal.id = 'successModal';
        modal.style.position = 'fixed';
        modal.style.top = '0';
        modal.style.left = '0';
        modal.style.width = '100vw';
        modal.style.height = '100vh';
        modal.style.background = 'rgba(0,0,0,0.35)';
        modal.style.display = 'flex';
        modal.style.alignItems = 'center';
        modal.style.justifyContent = 'center';
        modal.style.zIndex = 10000;

        modal.innerHTML = `
            <div style="background:#fff; border-radius:12px; max-width:480px; width:90%; padding:36px 32px 28px 32px; box-shadow:0 8px 32px rgba(0,0,0,0.18); text-align:center; position:relative;">
                <div style="margin-bottom:18px;">
                    <svg width="80" height="80" viewBox="0 0 80 80">
                        <circle cx="40" cy="40" r="38" fill="none" stroke="#d4f5dd" stroke-width="4"/>
                        <polyline points="25,43 37,55 56,30" fill="none" stroke="#6fcf97" stroke-width="5" stroke-linecap="round" stroke-linejoin="round"/>
                    </svg>
                </div>
                <h2 style="font-weight:700; color:#444; margin-bottom:12px;">Thành công!</h2>
                <div style="color:#555; font-size:1.1rem; margin-bottom:24px;">
                    Sản phẩm <b>"${productName}"</b> đã được thêm vào giỏ hàng với giá <b>${price.toLocaleString()}₫</b>.
                </div>
                <a href="cart.html" id="successModalOk" style="display:inline-block;padding:8px 32px; font-size:1.1rem; border:none; border-radius:8px; background:#7b7be6; color:#fff; font-weight:600; box-shadow:0 2px 8px rgba(123,123,230,0.08); cursor:pointer; text-decoration:none;">Xem giỏ hàng</a>
            </div>
        `;
        document.body.appendChild(modal);

        modal.addEventListener('click', function(e) {
            if (e.target === modal) modal.remove();
        });
    }

    // Gắn sự kiện cho nút "Thêm vào giỏ hàng" và tăng/giảm số lượng
    document.addEventListener('DOMContentLoaded', function() {
        updateCartCount();

        // Lấy productId từ URL hoặc mặc định
        const urlParams = new URLSearchParams(window.location.search);
        const productId = urlParams.get('id') || '10439';

        // Lấy tên và giá sản phẩm từ DOM
        const productName = document.querySelector('h3.font-weight-semi-bold')?.textContent.trim() || 'Sản phẩm';
        const priceText = document.querySelector('h4.text-primary')?.childNodes[0]?.textContent || '';
        // Chuyển giá về số
        const price = parseInt(priceText.replace(/[^\d]/g, ''));

        // Xử lý tăng/giảm số lượng
        let quantityInput = document.querySelector('.quantity input');
        let btnPlus = document.querySelector('.btn-plus');
        let btnMinus = document.querySelector('.btn-minus');
        if (btnPlus && quantityInput) {
            btnPlus.addEventListener('click', function() {
                let val = parseInt(quantityInput.value) || 1;
                quantityInput.value = val + 1;
            });
        }
        if (btnMinus && quantityInput) {
            btnMinus.addEventListener('click', function() {
                let val = parseInt(quantityInput.value) || 1;
                if (val > 1) quantityInput.value = val - 1;
            });
        }

        // Sự kiện thêm vào giỏ hàng
        const addBtn = document.querySelector('.btn-primary.px-3');
        if (addBtn && quantityInput) {
            addBtn.addEventListener('click', function() {
                const quantity = parseInt(quantityInput.value) || 1;
                addToCart(productId, productName, price, quantity);
                showSuccessModal(productName, price);
            });
        }
    });
    </script>