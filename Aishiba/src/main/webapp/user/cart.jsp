<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <!-- Cart Start -->
    <div class="container-fluid pt-5">
        <div class="row px-xl-5">
            <div class="col-lg-8 table-responsive mb-5">
                <table class="table table-bordered text-center mb-0">
                    <thead class="bg-secondary text-dark">
                        <tr>
                            <th>Sản phẩm</th>
                            <th>Giá</th>
                            <th>Số lượng</th>
                            <th>Tổng</th>
                            <th>Xóa</th>
                        </tr>
                    </thead>
                    <tbody class="align-middle" id="cartItems">
                        <tr data-id="1">
                            <td class="align-middle"><img src="img/product-1.jpg" alt="" style="width: 50px;"> Đồ chơi trẻ em
                            </td>
                            <td class="align-middle price">150000</td>
                            <td class="align-middle">
                                <div class="input-group quantity mx-auto" style="width: 100px;">
                                    <div class="input-group-btn">
                                        <button class="btn btn-sm btn-primary btn-minus">
                                            <i class="fa fa-minus"></i>
                                        </button>
                                    </div>
                                    <input type="text" class="form-control form-control-sm bg-secondary text-center quantity-input"
                                        value="1">
                                    <div class="input-group-btn">
                                        <button class="btn btn-sm btn-primary btn-plus">
                                            <i class="fa fa-plus"></i>
                                        </button>
                                    </div>
                                </div>
                            </td>
                            <td class="align-middle total">150000</td>
                            <td class="align-middle"><button class="btn btn-sm btn-primary btn-remove"><i class="fa fa-times"></i>
                                </button></td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="col-lg-4">
                <div class="card border-secondary mb-5">
                    <div class="card-header bg-secondary border-0">
                        <h4 class="font-weight-semi-bold m-0">Tóm tắt giỏ hàng</h4>
                    </div>
                    <div class="card-body">
                        <div class="d-flex justify-content-between mb-3 pt-1">
                            <h6 class="font-weight-medium">Tạm tính</h6>
                            <h6 class="font-weight-medium">150.000₫</h6>
                        </div>
                        <div class="d-flex justify-content-between">
                            <h6 class="font-weight-medium">Phí vận chuyển</h6>
                            <h6 class="font-weight-medium">30.000₫</h6>
                        </div>
                    </div>
                    <div class="card-footer border-secondary bg-transparent">
                        <div class="d-flex justify-content-between mt-2">
                            <h5 class="font-weight-bold">Tổng cộng</h5>
                            <h5 class="font-weight-bold">180.000₫</h5>
                        </div>
                        <button class="btn btn-block btn-primary my-3 py-3" onclick="window.location.href='checkout'">Tiến hành thanh toán</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Cart End -->
    <!-- Template Javascript -->
    <script src="js/main.js"></script>
    <script>
        document.addEventListener("DOMContentLoaded", function () {
            // --- Hiển thị sản phẩm từ localStorage ---
            const cartItems = document.getElementById("cartItems");
            const totalElement = document.querySelector(".card-footer .font-weight-bold:last-child");
            const cartCount = document.getElementById("cartCount");

            // Lấy giỏ hàng từ localStorage
            function getCart() {
                return JSON.parse(localStorage.getItem('cart') || '[]');
            }

            // Lưu giỏ hàng vào localStorage
            function setCart(cart) {
                localStorage.setItem('cart', JSON.stringify(cart));
            }

            // Cập nhật số lượng trên icon
            function updateCartCount() {
                const cart = getCart();
                const total = cart.reduce((sum, item) => sum + (item.quantity || 1), 0);
                if (cartCount) cartCount.textContent = total;
            }

            // Hiển thị sản phẩm trong bảng
            function renderCart() {
                const cart = getCart();
                cartItems.innerHTML = '';
                let subtotal = 0;
                if (cart.length === 0) {
                    cartItems.innerHTML = `<tr><td colspan="5">Giỏ hàng trống.</td></tr>`;
                } else {
                    cart.forEach((item, idx) => {
                        const itemTotal = item.price * item.quantity;
                        subtotal += itemTotal;
                        cartItems.innerHTML += `
                            <tr data-id="${idx}">
                                <td class="align-middle">${item.name}</td>
                                <td class="align-middle price">${item.price.toLocaleString()}₫</td>
                                <td class="align-middle">
                                    <div class="input-group quantity mx-auto" style="width: 100px;">
                                        <div class="input-group-btn">
                                            <button class="btn btn-sm btn-primary btn-minus">
                                                <i class="fa fa-minus"></i>
                                            </button>
                                        </div>
                                        <input type="text" class="form-control form-control-sm bg-secondary text-center quantity-input"
                                            value="${item.quantity}">
                                        <div class="input-group-btn">
                                            <button class="btn btn-sm btn-primary btn-plus">
                                                <i class="fa fa-plus"></i>
                                            </button>
                                        </div>
                                    </div>
                                </td>
                                <td class="align-middle total">${itemTotal.toLocaleString()}₫</td>
                                <td class="align-middle"><button class="btn btn-sm btn-primary btn-remove"><i class="fa fa-times"></i>
                                    </button></td>
                            </tr>
                        `;
                    });
                }
                updateSummary(subtotal);
                updateCartCount();
            }

            // Cập nhật tổng tiền và tóm tắt giỏ hàng
            function updateSummary(subtotal) {
                // Phí vận chuyển cố định 30.000₫ nếu có hàng, 0 nếu trống
                let shipping = subtotal > 0 ? 30000 : 0;
                let total = subtotal + shipping;

                // Cập nhật tóm tắt giỏ hàng
                document.querySelector(".card-body .d-flex.mb-3.pt-1 h6:last-child").textContent = subtotal.toLocaleString() + "₫";
                document.querySelector(".card-body .d-flex:last-child h6:last-child").textContent = shipping.toLocaleString() + "₫";
                document.querySelector(".card-footer .font-weight-bold:last-child").textContent = total.toLocaleString() + "₫";
            }

            // Xử lý tăng/giảm/xóa sản phẩm
            cartItems.addEventListener("click", function (e) {
                const cart = getCart();
                const row = e.target.closest("tr");
                if (!row) return;
                const idx = parseInt(row.getAttribute("data-id"));
                if (e.target.closest(".btn-plus")) {
                    cart[idx].quantity++;
                    setCart(cart);
                    renderCart();
                }
                if (e.target.closest(".btn-minus")) {
                    if (cart[idx].quantity > 1) {
                        cart[idx].quantity--;
                        setCart(cart);
                        renderCart();
                    }
                }
                if (e.target.closest(".btn-remove")) {
                    cart.splice(idx, 1);
                    setCart(cart);
                    renderCart();
                }
            });

            // Xử lý nhập số lượng trực tiếp
            cartItems.addEventListener("change", function (e) {
                if (e.target.classList.contains("quantity-input")) {
                    const row = e.target.closest("tr");
                    const idx = parseInt(row.getAttribute("data-id"));
                    let val = parseInt(e.target.value) || 1;
                    if (val < 1) val = 1;
                    const cart = getCart();
                    cart[idx].quantity = val;
                    setCart(cart);
                    renderCart();
                }
            });

            // Khởi tạo giỏ hàng khi tải trang
            renderCart();

            // --- Đổi màu header cho đồng bộ và userNav ---
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
        });

        // Thêm chức năng liên kết danh mục tới shop và lọc theo danh mục
        document.addEventListener('DOMContentLoaded', function() {
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