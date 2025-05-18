<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
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
  
    <!-- Carousel Start -->
    <div id="header-carousel" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active" style="height: 410px;">
                <img class="img-fluid" src="${pageContext.request.contextPath}/user/img/carousel-1.jpg" alt="Image">
                <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                    <div class="p-3" style="max-width: 700px;">
                        <h4 class="text-light text-uppercase font-weight-medium mb-3">Giảm giá 10% cho đơn hàng đầu tiên</h4>
                        <h3 class="display-4 text-white font-weight-semi-bold mb-4">Đồ chơi nổi bật</h3>
                        <a href="shop" class="btn btn-light py-2 px-3">Mua ngay</a>
                    </div>
                </div>
            </div>
            <div class="carousel-item" style="height: 410px;">
                <img class="img-fluid" src="${pageContext.request.contextPath}/user/img/carousel-2.jpg" alt="Image">
                <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                    <div class="p-3" style="max-width: 700px;">
                        <h4 class="text-light text-uppercase font-weight-medium mb-3">Ưu đãi đặc biệt</h4>
                        <h3 class="display-4 text-white font-weight-semi-bold mb-4">Đồ chơi giáo dục</h3>
                        <a href="shop" class="btn btn-light py-2 px-3">Khám phá</a>
                    </div>
                </div>
            </div>
        </div>
        <a class="carousel-control-prev" href="#header-carousel" data-slide="prev">
            <div class="btn btn-dark" style="width: 45px; height: 45px;">
                <span class="carousel-control-prev-icon mb-n2"></span>
            </div>
        </a>
        <a class="carousel-control-next" href="#header-carousel" data-slide="next">
            <div class="btn btn-dark" style="width: 45px; height: 45px;">
                <span class="carousel-control-next-icon mb-n2"></span>
            </div>
        </a>
    </div>
    <!-- Carousel End -->

    <!-- Featured Start -->
    <div class="container-fluid pt-5">
        <div class="row px-xl-5 pb-3">
            <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                <div class="d-flex align-items-center border mb-4" style="padding: 30px;">
                    <h1 class="fa fa-check text-primary m-0 mr-3"></h1>
                    <h5 class="font-weight-semi-bold m-0">Sản phẩm chất lượng</h5>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                <div class="d-flex align-items-center border mb-4" style="padding: 30px;">
                    <h1 class="fa fa-shipping-fast text-primary m-0 mr-3"></h1>
                    <h5 class="font-weight-semi-bold m-0">Miễn phí giao hàng</h5>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                <div class="d-flex align-items-center border mb-4" style="padding: 30px;">
                    <h1 class="fas fa-exchange-alt text-primary m-0 mr-3"></h1>
                    <h5 class="font-weight-semi-bold m-0">Đổi trả trong 14 ngày</h5>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                <div class="d-flex align-items-center border mb-4" style="padding: 30px;">
                    <h1 class="fa fa-phone-volume text-primary m-0 mr-3"></h1>
                    <h5 class="font-weight-semi-bold m-0">Hỗ trợ 24/7</h5>
                </div>
            </div>
        </div>
    </div>
    <!-- Featured End -->

    <!-- Products Start -->
    <div class="container-fluid pt-5">
        <div class="text-center mb-4">
            <h2 class="section-title px-5"><span class="px-2">Sản phẩm nổi bật</span></h2>
        </div>
        <div class="row px-xl-5 pb-3">
            <!-- Product Card 1 -->
            <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                <div class="card product-item border-0 mb-4">
                    <div class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
                        <a href="detail">
                            <img class="img-fluid w-100" src="${pageContext.request.contextPath}/user/img/product-1.jpg" alt="Robot đồ chơi">
                        </a>
                    </div>
                    <div class="card-body border-left border-right text-center p-0 pt-4 pb-3">
                        <h6 class="text-truncate mb-3">Robot đồ chơi thông minh</h6>
                        <div class="d-flex justify-content-center">
                            <h6>2,500,000 VNĐ</h6>
                        </div>
                    </div>
                    <div class="card-footer d-flex justify-content-between bg-light border">
                        <a href="detail" class="btn btn-sm text-dark p-0"><i class="fas fa-eye text-primary mr-1"></i>Xem chi tiết</a>
                        <button class="btn btn-sm text-dark p-0" onclick="addToCart('Robot đồ chơi thông minh', 2500000)">
                            <i class="fas fa-shopping-cart text-primary mr-1"></i>Thêm vào giỏ
                        </button>
                    </div>
                </div>
            </div>
            <!-- Product Card 2 -->
            <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                <div class="card product-item border-0 mb-4">
                    <div class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
                        <a href="detail">
                            <img class="img-fluid w-100" src="${pageContext.request.contextPath}/user/img/product-2.jpg" alt="Đồ chơi giáo dục">
                        </a>
                    </div>
                    <div class="card-body border-left border-right text-center p-0 pt-4 pb-3">
                        <h6 class="text-truncate mb-3">Đồ chơi giáo dục sáng tạo</h6>
                        <div class="d-flex justify-content-center">
                            <h6>1,200,000 VNĐ</h6>
                        </div>
                    </div>
                    <div class="card-footer d-flex justify-content-between bg-light border">
                        <a href="detail" class="btn btn-sm text-dark p-0"><i class="fas fa-eye text-primary mr-1"></i>Xem chi tiết</a>
                        <button class="btn btn-sm text-dark p-0" onclick="addToCart('Đồ chơi giáo dục sáng tạo', 1200000)">
                            <i class="fas fa-shopping-cart text-primary mr-1"></i>Thêm vào giỏ
                        </button>
                    </div>
                </div>
            </div>
            <!-- Product Card 3 -->
            <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                <div class="card product-item border-0 mb-4">
                    <div class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
                        <a href="detail">
                            <img class="img-fluid w-100" src="${pageContext.request.contextPath}/user/img/product-3.jpg" alt="Đồ chơi mô hình">
                        </a>
                    </div>
                    <div class="card-body border-left border-right text-center p-0 pt-4 pb-3">
                        <h6 class="text-truncate mb-3">Đồ chơi mô hình xe hơi</h6>
                        <div class="d-flex justify-content-center">
                            <h6>850,000 VNĐ</h6>
                        </div>
                    </div>
                    <div class="card-footer d-flex justify-content-between bg-light border">
                        <a href="detail" class="btn btn-sm text-dark p-0"><i class="fas fa-eye text-primary mr-1"></i>Xem chi tiết</a>
                        <button class="btn btn-sm text-dark p-0" onclick="addToCart('Đồ chơi mô hình xe hơi', 850000)">
                            <i class="fas fa-shopping-cart text-primary mr-1"></i>Thêm vào giỏ
                        </button>
                    </div>
                </div>
            </div>
            <!-- Product Card 4 -->
            <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                <div class="card product-item border-0 mb-4">
                    <div class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
                        <a href="detail">
                            <img class="img-fluid w-100" src="${pageContext.request.contextPath}/user/img/product-9.jpg" alt="Đồ chơi vận động">
                        </a>
                    </div>
                    <div class="card-body border-left border-right text-center p-0 pt-4 pb-3">
                        <h6 class="text-truncate mb-3">Đồ chơi vận động ngoài trời</h6>
                        <div class="d-flex justify-content-center">
                            <h6>1,500,000 VNĐ</h6>
                        </div>
                    </div>
                    <div class="card-footer d-flex justify-content-between bg-light border">
                        <a href="detail" class="btn btn-sm text-dark p-0"><i class="fas fa-eye text-primary mr-1"></i>Xem chi tiết</a>
                        <button class="btn btn-sm text-dark p-0" onclick="addToCart('Đồ chơi vận động ngoài trời', 1500000)">
                            <i class="fas fa-shopping-cart text-primary mr-1"></i>Thêm vào giỏ
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Products End -->
    <script>
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

    // Hàm thêm sản phẩm vào giỏ hàng
    function addToCart(productName, productPrice) {
        // Thêm vào localStorage
        let cart = getCart();
        let found = false;
        cart = cart.map(item => {
            if (item.name === productName) {
                found = true;
                return { ...item, quantity: (item.quantity || 1) + 1 };
            }
            return item;
        });
        if (!found) {
            cart.push({ name: productName, price: productPrice, quantity: 1 });
        }
        setCart(cart);
        updateCartCount();

        // Hiển thị thông báo và liên kết đến cart
        Swal.fire({
            icon: 'success',
            title: 'Thành công!',
            html: `Sản phẩm "<b>${productName}</b>" đã được thêm vào giỏ hàng với giá <b>${productPrice.toLocaleString()} VNĐ</b>.<br><br>
                <a href="cart" class="swal2-confirm btn btn-primary" style="margin-top:12px;">Xem giỏ hàng</a>`,
            showConfirmButton: false,
            timer: 2200
        });
    }

    // Cập nhật số lượng khi tải trang
    document.addEventListener('DOMContentLoaded', function() {
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

        if (isLoggedIn) {
            userNav.innerHTML = `
                <a href="user_info" class="nav-item nav-link" id="userInfoNav">
                    <i class="fa fa-user-circle text-primary mr-2"></i>${userName ? userName : 'Tài khoản của tôi'}
                </a>
                <a href="login" class="nav-item nav-link" id="logoutNav">
                    <i class="fa fa-sign-out-alt text-primary mr-2"></i>Đăng xuất
                </a>
            `;
            // Xử lý đăng xuất
            document.getElementById('logoutNav').addEventListener('click', function(e) {
                e.preventDefault();
                localStorage.removeItem('rememberLogin');
                window.location.reload();
            });
        }
    });

        function filterProducts() {
            const selectedCategory = document.getElementById("filterCategory").value;
            const productCards = document.querySelectorAll(".product-item");

            productCards.forEach(card => {
                const productName = card.querySelector("h6").textContent;
                if (selectedCategory === "" || productName.includes(selectedCategory)) {
                    card.style.display = "block";
                } else {
                    card.style.display = "none";
                }
            });
        }

        document.getElementById('searchForm').addEventListener('submit', function(e) {
            e.preventDefault();
            const keyword = document.getElementById('searchInput').value.trim();
            if (keyword) {
                window.location.href = 'shop?q=' + encodeURIComponent(keyword);
            } else {
                window.location.href = 'shop';
            }
        });

    // Thêm sự kiện cho các liên kết danh mục để chuyển sang shop và lọc theo danh mục
    document.addEventListener('DOMContentLoaded', function() {
        // Gán sự kiện cho các liên kết danh mục
        document.querySelectorAll('#navbar-vertical .nav-item.nav-link').forEach(function(link) {
            link.style.cursor = 'pointer';
            link.addEventListener('click', function(e) {
                e.preventDefault();
                const category = this.textContent.trim();
                // Chuyển sang shop với tham số category
                window.location.href = 'shop?category=' + encodeURIComponent(category);
            });
        });
    });
    </script>
