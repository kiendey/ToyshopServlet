<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- Shop Content Start -->
    <div class="container-fluid pt-5">
        <div class="row px-xl-5">
            <!-- Shop Sidebar Start -->
            <div class="col-lg-3 col-md-12">
                <!-- Bộ lọc sản phẩm -->
                <div class="border-bottom mb-4 pb-4">
                    <h5 class="font-weight-semi-bold mb-4">Lọc theo giá</h5>
                    <form id="priceFilterForm">
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input price-filter" id="price-all" data-price="all" checked>
                            <label class="custom-control-label" for="price-all">Tất cả</label>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input price-filter" id="price-1" data-price="0-100">
                            <label class="custom-control-label" for="price-1">0 - 100k</label>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input price-filter" id="price-2" data-price="100-200">
                            <label class="custom-control-label" for="price-2">100k - 200k</label>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input price-filter" id="price-3" data-price="200-300">
                            <label class="custom-control-label" for="price-3">200k - 300k</label>
                        </div>
                    </form>
                </div>

                <!-- Lọc theo thương hiệu -->
                <div class="border-bottom mb-4 pb-4">
                    <h5 class="font-weight-semi-bold mb-4">Lọc theo thương hiệu</h5>
                    <form>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="brand-1">
                            <label class="custom-control-label" for="brand-1">LEGO</label>
                            <span class="badge border font-weight-normal">120</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="brand-2">
                            <label class="custom-control-label" for="brand-2">Fisher-Price</label>
                            <span class="badge border font-weight-normal">80</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="brand-3">
                            <label class="custom-control-label" for="brand-3">Barbie</label>
                            <span class="badge border font-weight-normal">60</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between">
                            <input type="checkbox" class="custom-control-input" id="brand-4">
                            <label class="custom-control-label" for="brand-4">Hot Wheels</label>
                            <span class="badge border font-weight-normal">90</span>
                        </div>
                    </form>
                </div>

                <!-- Lọc theo độ tuổi -->
                <div class="border-bottom mb-4 pb-4">
                    <h5 class="font-weight-semi-bold mb-4">Lọc theo độ tuổi</h5>
                    <form>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="age-1">
                            <label class="custom-control-label" for="age-1">0 - 2 tuổi</label>
                            <span class="badge border font-weight-normal">50</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="age-2">
                            <label class="custom-control-label" for="age-2">3 - 5 tuổi</label>
                            <span class="badge border font-weight-normal">120</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="age-3">
                            <label class="custom-control-label" for="age-3">6 - 8 tuổi</label>
                            <span class="badge border font-weight-normal">100</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between">
                            <input type="checkbox" class="custom-control-input" id="age-4">
                            <label class="custom-control-label" for="age-4">9+ tuổi</label>
                            <span class="badge border font-weight-normal">80</span>
                        </div>
                    </form>
                </div>
            </div>
            <!-- Shop Sidebar End -->

            <!-- Shop Product Start -->
            <div class="col-lg-9 col-md-12">
                <div class="row pb-3">
                    <!-- Sản phẩm -->
                    <div class="col-lg-4 col-md-6 col-sm-12 pb-1">
                        <div class="card product-item border-0 mb-4" data-category="category1" data-price="100000">
                            <div class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
                                <img class="img-fluid w-100" src="${pageContext.request.contextPath}/user/img/product-1.jpg" alt="">
                            </div>
                            <div class="card-body border-left border-right text-center p-0 pt-4 pb-3">
                                <h6 class="text-truncate mb-3">Đồ chơi trẻ em</h6>
                                <div class="d-flex justify-content-center">
                                    <h6>100.000đ</h6>
                                </div>
                            </div>
                            <div class="card-footer d-flex justify-content-between bg-light border">
                                <a href="detail?id=1" class="btn btn-sm text-dark p-0">
                                    <i class="fas fa-eye text-primary mr-1"></i>Xem chi tiết
                                </a>
                                <button class="btn btn-sm text-dark p-0" onclick="addToCart('Tên sản phẩm', 1500000)">
                                    <i class="fas fa-shopping-cart text-primary mr-1"></i>Thêm vào giỏ
                                </button>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-12 pb-1">
                        <div class="card product-item border-0 mb-4" data-category="category2" data-price="150000">
                            <div class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
                                <img class="img-fluid w-100" src="${pageContext.request.contextPath}/user/img/product-2.jpg" alt="">
                            </div>
                            <div class="card-body border-left border-right text-center p-0 pt-4 pb-3">
                                <h6 class="text-truncate mb-3">Đồ chơi giáo dục</h6>
                                <div class="d-flex justify-content-center">
                                    <h6>150.000đ</h6>
                                </div>
                            </div>
                            <div class="card-footer d-flex justify-content-between bg-light border">
                                <a href="detail?id=2" class="btn btn-sm text-dark p-0">
                                    <i class="fas fa-eye text-primary mr-1"></i>Xem chi tiết
                                </a>
                                <button class="btn btn-sm text-dark p-0" onclick="addToCart('Tên sản phẩm', 1500000)">
                                    <i class="fas fa-shopping-cart text-primary mr-1"></i>Thêm vào giỏ
                                </button>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-12 pb-1">
                        <div class="card product-item border-0 mb-4" data-category="category3" data-price="200000">
                            <div class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
                                <img class="img-fluid w-100" src="${pageContext.request.contextPath}/user/img/product-3.jpg" alt="">
                            </div>
                            <div class="card-body border-left border-right text-center p-0 pt-4 pb-3">
                                <h6 class="text-truncate mb-3">Đồ chơi mô hình</h6>
                                <div class="d-flex justify-content-center">
                                    <h6>200.000đ</h6>
                                </div>
                            </div>
                            <div class="card-footer d-flex justify-content-between bg-light border">
                                <a href="detail?id=3" class="btn btn-sm text-dark p-0">
                                    <i class="fas fa-eye text-primary mr-1"></i>Xem chi tiết
                                </a>
                                <button class="btn btn-sm text-dark p-0" onclick="addToCart('Tên sản phẩm', 1500000)">
                                    <i class="fas fa-shopping-cart text-primary mr-1"></i>Thêm vào giỏ
                                </button>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-12 pb-1">
                        <div class="card product-item border-0 mb-4" data-category="category4" data-price="250000">
                            <div class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
                                <img class="img-fluid w-100" src="${pageContext.request.contextPath}/user/img/product-9.jpg" alt="">
                            </div>
                            <div class="card-body border-left border-right text-center p-0 pt-4 pb-3">
                                <h6 class="text-truncate mb-3">Đồ chơi vận động</h6>
                                <div class="d-flex justify-content-center">
                                    <h6>250.000đ</h6>
                                </div>
                            </div>
                            <div class="card-footer d-flex justify-content-between bg-light border">
                                <a href="detail?id=4" class="btn btn-sm text-dark p-0">
                                    <i class="fas fa-eye text-primary mr-1"></i>Xem chi tiết
                                </a>
                                <button class="btn btn-sm text-dark p-0" onclick="addToCart('Tên sản phẩm', 1500000)">
                                    <i class="fas fa-shopping-cart text-primary mr-1"></i>Thêm vào giỏ
                                </button>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-12 pb-1">
                        <div class="card product-item border-0 mb-4" data-category="category1" data-price="100000">
                            <div class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
                                <img class="img-fluid w-100" src="${pageContext.request.contextPath}/user/img/product-5.jpg" alt="">
                            </div>
                            <div class="card-body border-left border-right text-center p-0 pt-4 pb-3">
                                <h6 class="text-truncate mb-3">Đồ chơi trẻ em</h6>
                                <div class="d-flex justify-content-center">
                                    <h6>100.000đ</h6>
                                </div>
                            </div>
                            <div class="card-footer d-flex justify-content-between bg-light border">
                                <a href="detail?id=5" class="btn btn-sm text-dark p-0">
                                    <i class="fas fa-eye text-primary mr-1"></i>Xem chi tiết
                                </a>
                                <button class="btn btn-sm text-dark p-0" onclick="addToCart('Tên sản phẩm', 1500000)">
                                    <i class="fas fa-shopping-cart text-primary mr-1"></i>Thêm vào giỏ
                                </button>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-12 pb-1">
                        <div class="card product-item border-0 mb-4" data-category="category2" data-price="150000">
                            <div class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
                                <img class="img-fluid w-100" src="${pageContext.request.contextPath}/user/img/product-6.jpg" alt="">
                            </div>
                            <div class="card-body border-left border-right text-center p-0 pt-4 pb-3">
                                <h6 class="text-truncate mb-3">Đồ chơi giáo dục</h6>
                                <div class="d-flex justify-content-center">
                                    <h6>150.000đ</h6>
                                </div>
                            </div>
                            <div class="card-footer d-flex justify-content-between bg-light border">
                                <a href="detail?id=6" class="btn btn-sm text-dark p-0">
                                    <i class="fas fa-eye text-primary mr-1"></i>Xem chi tiết
                                </a>
                                <button class="btn btn-sm text-dark p-0" onclick="addToCart('Tên sản phẩm', 1500000)">
                                    <i class="fas fa-shopping-cart text-primary mr-1"></i>Thêm vào giỏ
                                </button>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-12 pb-1">
                        <div class="card product-item border-0 mb-4" data-category="category3" data-price="200000">
                            <div class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
                                <img class="img-fluid w-100" src="${pageContext.request.contextPath}/user/img/product-7.jpg" alt="">
                            </div>
                            <div class="card-body border-left border-right text-center p-0 pt-4 pb-3">
                                <h6 class="text-truncate mb-3">Đồ chơi mô hình</h6>
                                <div class="d-flex justify-content-center">
                                    <h6>200.000đ</h6>
                                </div>
                            </div>
                            <div class="card-footer d-flex justify-content-between bg-light border">
                                <a href="detail?id=7" class="btn btn-sm text-dark p-0">
                                    <i class="fas fa-eye text-primary mr-1"></i>Xem chi tiết
                                </a>
                                <button class="btn btn-sm text-dark p-0" onclick="addToCart('Tên sản phẩm', 1500000)">
                                    <i class="fas fa-shopping-cart text-primary mr-1"></i>Thêm vào giỏ
                                </button>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-12 pb-1">
                        <div class="card product-item border-0 mb-4" data-category="category4" data-price="250000">
                            <div class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
                                <img class="img-fluid w-100" src="${pageContext.request.contextPath}/user/img/product-8.jpg" alt="">
                            </div>
                            <div class="card-body border-left border-right text-center p-0 pt-4 pb-3">
                                <h6 class="text-truncate mb-3">Đồ chơi vận động</h6>
                                <div class="d-flex justify-content-center">
                                    <h6>250.000đ</h6>
                                </div>
                            </div>
                            <div class="card-footer d-flex justify-content-between bg-light border">
                                <a href="detail?id=8" class="btn btn-sm text-dark p-0">
                                    <i class="fas fa-eye text-primary mr-1"></i>Xem chi tiết
                                </a>
                                <button class="btn btn-sm text-dark p-0" onclick="addToCart('Tên sản phẩm', 1500000)">
                                    <i class="fas fa-shopping-cart text-primary mr-1"></i>Thêm vào giỏ
                                </button>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-12 pb-1">
                        <div class="card product-item border-0 mb-4" data-category="lego" data-price="150">
                            <div class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
                                <img class="img-fluid w-100" src="${pageContext.request.contextPath}/user/img/product-1.jpg" alt="">
                            </div>
                            <div class="card-body border-left border-right text-center p-0 pt-4 pb-3">
                                <h6 class="text-truncate mb-3">Đồ chơi LEGO</h6>
                                <div class="d-flex justify-content-center">
                                    <h6>150.000đ</h6>
                                </div>
                            </div>
                            <div class="card-footer d-flex justify-content-between bg-light border">
                                <a href="detail?id=1" class="btn btn-sm text-dark p-0">
                                    <i class="fas fa-eye text-primary mr-1"></i>Xem chi tiết
                                </a>
                                <button class="btn btn-sm text-dark p-0" onclick="addToCart('Đồ chơi LEGO', 150000)">
                                    <i class="fas fa-shopping-cart text-primary mr-1"></i>Thêm vào giỏ
                                </button>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 pb-1">
                        <nav aria-label="Page navigation">
                          <ul class="pagination justify-content-center mb-3">
                            <li class="page-item disabled">
                              <a class="page-link" href="#" aria-label="Previous">
                                <span aria-hidden="true">&laquo;</span>
                                <span class="sr-only">Previous</span>
                              </a>
                            </li>
                            <li class="page-item active"><a class="page-link" href="#">1</a></li>
                            <li class="page-item"><a class="page-link" href="#">2</a></li>
                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                            <li class="page-item">
                              <a class="page-link" href="#" aria-label="Next">
                                <span aria-hidden="true">&raquo;</span>
                                <span class="sr-only">Next</span>
                              </a>
                            </li>
                          </ul>
                        </nav>
                    </div>
                </div>
            </div>
            <!-- Shop Product End -->
        </div>
    </div>
    <!-- Shop Content End -->

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
    <script>
        document.addEventListener("DOMContentLoaded", function () {
            // Lọc theo danh mục
            const categoryFilters = document.querySelectorAll(".category-filter");
            categoryFilters.forEach(filter => {
                filter.addEventListener("click", function (e) {
                    e.preventDefault();
                    const category = this.getAttribute("data-category");
                    filterProductsByCategory(category);
                });
            });

            // Lọc theo giá
            const priceFilters = document.querySelectorAll(".price-filter");
            priceFilters.forEach(filter => {
                filter.addEventListener("change", function () {
                    const selectedPrices = Array.from(priceFilters)
                        .filter(input => input.checked)
                        .map(input => input.getAttribute("data-price"));
                    filterProductsByPrice(selectedPrices);
                });
            });

            // Hàm lọc sản phẩm theo danh mục
            function filterProductsByCategory(category) {
                const products = document.querySelectorAll(".product-item");
                products.forEach(product => {
                    const productCategory = product.getAttribute("data-category");
                    if (category === "all" || productCategory === category) {
                        product.style.display = "block";
                    } else {
                        product.style.display = "none";
                    }
                });
            }

            // Hàm lọc sản phẩm theo giá
            function filterProductsByPrice(selectedPrices) {
                const products = document.querySelectorAll(".product-item");
                products.forEach(product => {
                    const productPrice = parseInt(product.getAttribute("data-price"));
                    let showProduct = false;

                    selectedPrices.forEach(priceRange => {
                        if (priceRange === "all") {
                            showProduct = true;
                        } else {
                            const [min, max] = priceRange.split("-").map(Number);
                            if (productPrice >= min && productPrice <= max) {
                                showProduct = true;
                            }
                        }
                    });

                    product.style.display = showProduct ? "block" : "none";
                });
            }
        });

        document.addEventListener('DOMContentLoaded', function() {
            // Lấy từ khóa tìm kiếm từ URL (nếu có)
            const params = new URLSearchParams(window.location.search);
            const keyword = (params.get('q') || '').toLowerCase();

            const searchInput = document.getElementById('searchInput');
            const clearBtn = document.getElementById('clearSearch');

            // Hiện nút x khi có từ khóa
            function toggleClearBtn() {
                if (searchInput.value.trim() !== '') {
                    clearBtn.style.display = '';
                } else {
                    clearBtn.style.display = 'none';
                }
            }

            // Hàm hiển thị lại tất cả sản phẩm
            function showAllProducts() {
                document.querySelectorAll('.product-item').forEach(card => {
                    card.style.display = 'block';
                });
            }

            // Sự kiện cho nút x
            clearBtn.addEventListener('click', function() {
                searchInput.value = '';
                toggleClearBtn();
                showAllProducts();
                const info = document.getElementById('searchResultInfo');
                if (info) info.innerHTML = '';
                // Xóa tham số q trên URL nếu có
                if (window.history.replaceState) {
                    const url = new URL(window.location);
                    url.searchParams.delete('q');
                    window.history.replaceState({}, '', url.pathname);
                }
            });

            // Sự kiện input để hiện/tắt nút x
            searchInput.addEventListener('input', toggleClearBtn);

            // Khi vào trang, kiểm tra có từ khóa không để hiện nút x
            toggleClearBtn();

            // Hàm lọc sản phẩm theo tên
            function filterByKeyword(kw) {
                const keyword = removeVietnameseTones(kw.toLowerCase());
                let count = 0;
                const productCards = Array.from(document.querySelectorAll('.product-item'));
                const matched = [];
                const unmatched = [];

                productCards.forEach(card => {
                    const name = card.querySelector('h6').textContent;
                    const nameNormalized = removeVietnameseTones(name.toLowerCase());
                    if (nameNormalized.includes(keyword)) {
                        card.style.display = 'block';
                        matched.push(card);
                        count++;
                    } else {
                        card.style.display = 'none';
                        unmatched.push(card);
                    }
                });

                // Sắp xếp lại DOM: đưa sản phẩm khớp lên đầu
                if (matched.length > 0) {
                    const row = matched[0].closest('.row.pb-3');
                    matched.forEach(card => row.appendChild(card.closest('.col-lg-4, .col-md-6, .col-sm-12, .pb-1')));
                    unmatched.forEach(card => row.appendChild(card.closest('.col-lg-4, .col-md-6, .col-sm-12, .pb-1')));
                }

                // Hiển thị thông báo kết quả
                const info = document.getElementById('searchResultInfo');
                if (kw && info) {
                    if (count > 0) {
                        info.innerHTML = `Tìm thấy <b>${count}</b> sản phẩm cho từ khóa: <b>"${kw}"</b>`;
                    } else {
                        info.innerHTML = `Không tìm thấy sản phẩm nào cho từ khóa: <b>"${kw}"</b>`;
                    }
                } else if (info) {
                    info.innerHTML = '';
                }
            }

            // Nếu có từ khóa trên URL thì lọc ngay khi vào trang
            if (keyword) {
                filterByKeyword(keyword);
            }

            // Bắt sự kiện submit form tìm kiếm
            const searchForm = searchInput?.closest('form');
            if (searchForm) {
                searchForm.addEventListener('submit', function(e) {
                    e.preventDefault();
                    const kw = searchInput.value.trim().toLowerCase();
                    filterByKeyword(kw);
                    // Nếu muốn thay đổi URL khi tìm kiếm mới:
                    // window.history.replaceState({}, '', '?q=' + encodeURIComponent(kw));
                });
            }
        });

        // Hàm loại bỏ dấu tiếng Việt
        function removeVietnameseTones(str) {
            return str.normalize('NFD').replace(/[\u0300-\u036f]/g, '').replace(/đ/g, 'd').replace(/Đ/g, 'D');
        }
    </script>
    <!-- Thêm đoạn script này ngay trước </body> để đổi nút đăng nhập thành tên tài khoản và Đăng xuất khi đã đăng nhập -->
<script>
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
</script>
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

    // Hiển thị modal thông báo thành công
    showSuccessModal(productName, productPrice);
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
                Sản phẩm <b>"${productName}"</b> đã được thêm vào giỏ hàng với giá <b>${price.toLocaleString()} VNĐ</b>.
            </div>
            <a href="cart" id="successModalOk" style="display:inline-block;padding:8px 32px; font-size:1.1rem; border:none; border-radius:8px; background:#7b7be6; color:#fff; font-weight:600; box-shadow:0 2px 8px rgba(123,123,230,0.08); cursor:pointer; text-decoration:none;">Xem giỏ hàng</a>
        </div>
    `;
    document.body.appendChild(modal);

    // Đóng modal khi click ra ngoài
    modal.addEventListener('click', function(e) {
        if (e.target === modal) modal.remove();
    });
}

// Cập nhật số lượng khi tải trang
document.addEventListener('DOMContentLoaded', function() {
    updateCartCount();
});
</script>
<script>
// filepath: d:\Git\ToyshopServlet\Enduser\eshopper-1.0.0\shop
document.addEventListener('DOMContentLoaded', function () {
    // Liên kết danh mục sang shop?category=... và lọc khi vào trang
    document.querySelectorAll('#navbar-vertical .nav-item.nav-link').forEach(function(link) {
        link.style.cursor = 'pointer';
        link.addEventListener('click', function(e) {
            e.preventDefault();
            const category = this.textContent.trim();
            window.location.href = 'shop?category=' + encodeURIComponent(category);
        });
    });

    // Lọc sản phẩm theo danh mục từ URL
    const params = new URLSearchParams(window.location.search);
    const categoryParam = params.get('category');
    if (categoryParam) {
        // Ẩn tất cả sản phẩm, chỉ hiện sản phẩm đúng danh mục
        document.querySelectorAll('.product-item').forEach(function(card) {
            const name = card.querySelector('h6').textContent.trim();
            if (name === categoryParam) {
                card.closest('.col-lg-4, .col-md-6, .col-sm-12, .pb-1').style.display = 'block';
            } else {
                card.closest('.col-lg-4, .col-md-6, .col-sm-12, .pb-1').style.display = 'none';
            }
        });
        // Hiển thị thông báo kết quả lọc
        let info = document.getElementById('searchResultInfo');
        if (!info) {
            info = document.createElement('div');
            info.id = 'searchResultInfo';
            info.className = 'mb-3';
            const row = document.querySelector('.row.pb-3');
            if (row) row.parentNode.insertBefore(info, row);
        }
        // Đếm số sản phẩm hiển thị
        const count = Array.from(document.querySelectorAll('.product-item')).filter(card =>
            card.closest('.col-lg-4, .col-md-6, .col-sm-12, .pb-1').style.display !== 'none'
        ).length;
        info.innerHTML = `Tìm thấy <b>${count}</b> sản phẩm cho danh mục: <b>"${categoryParam}"</b>`;
    }
});
</script>