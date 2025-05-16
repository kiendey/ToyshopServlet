<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Shop Aishiba</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/font-awesome.min.css">
</head>
<body>
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
                                <img class="img-fluid w-100" src="img/product-1.jpg" alt="">
                            </div>
                            <div class="card-body border-left border-right text-center p-0 pt-4 pb-3">
                                <h6 class="text-truncate mb-3">Đồ chơi trẻ em</h6>
                                <div class="d-flex justify-content-center">
                                    <h6>100.000đ</h6>
                                </div>
                            </div>
                            <div class="card-footer d-flex justify-content-between bg-light border">
                                <a href="detail.html?id=1" class="btn btn-sm text-dark p-0">
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
                                <img class="img-fluid w-100" src="img/product-2.jpg" alt="">
                            </div>
                            <div class="card-body border-left border-right text-center p-0 pt-4 pb-3">
                                <h6 class="text-truncate mb-3">Đồ chơi giáo dục</h6>
                                <div class="d-flex justify-content-center">
                                    <h6>150.000đ</h6>
                                </div>
                            </div>
                            <div class="card-footer d-flex justify-content-between bg-light border">
                                <a href="detail.html?id=2" class="btn btn-sm text-dark p-0">
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
                                <img class="img-fluid w-100" src="img/product-3.jpg" alt="">
                            </div>
                            <div class="card-body border-left border-right text-center p-0 pt-4 pb-3">
                                <h6 class="text-truncate mb-3">Đồ chơi mô hình</h6>
                                <div class="d-flex justify-content-center">
                                    <h6>200.000đ</h6>
                                </div>
                            </div>
                            <div class="card-footer d-flex justify-content-between bg-light border">
                                <a href="detail.html?id=3" class="btn btn-sm text-dark p-0">
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
                                <img class="img-fluid w-100" src="img/product-4.jpg" alt="">
                            </div>
                            <div class="card-body border-left border-right text-center p-0 pt-4 pb-3">
                                <h6 class="text-truncate mb-3">Đồ chơi vận động</h6>
                                <div class="d-flex justify-content-center">
                                    <h6>250.000đ</h6>
                                </div>
                            </div>
                            <div class="card-footer d-flex justify-content-between bg-light border">
                                <a href="detail.html?id=4" class="btn btn-sm text-dark p-0">
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
                                <img class="img-fluid w-100" src="img/product-5.jpg" alt="">
                            </div>
                            <div class="card-body border-left border-right text-center p-0 pt-4 pb-3">
                                <h6 class="text-truncate mb-3">Đồ chơi trẻ em</h6>
                                <div class="d-flex justify-content-center">
                                    <h6>100.000đ</h6>
                                </div>
                            </div>
                            <div class="card-footer d-flex justify-content-between bg-light border">
                                <a href="detail.html?id=5" class="btn btn-sm text-dark p-0">
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
                                <img class="img-fluid w-100" src="img/product-6.jpg" alt="">
                            </div>
                            <div class="card-body border-left border-right text-center p-0 pt-4 pb-3">
                                <h6 class="text-truncate mb-3">Đồ chơi giáo dục</h6>
                                <div class="d-flex justify-content-center">
                                    <h6>150.000đ</h6>
                                </div>
                            </div>
                            <div class="card-footer d-flex justify-content-between bg-light border">
                                <a href="detail.html?id=6" class="btn btn-sm text-dark p-0">
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
                                <img class="img-fluid w-100" src="img/product-7.jpg" alt="">
                            </div>
                            <div class="card-body border-left border-right text-center p-0 pt-4 pb-3">
                                <h6 class="text-truncate mb-3">Đồ chơi mô hình</h6>
                                <div class="d-flex justify-content-center">
                                    <h6>200.000đ</h6>
                                </div>
                            </div>
                            <div class="card-footer d-flex justify-content-between bg-light border">
                                <a href="detail.html?id=7" class="btn btn-sm text-dark p-0">
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
                                <img class="img-fluid w-100" src="img/product-8.jpg" alt="">
                            </div>
                            <div class="card-body border-left border-right text-center p-0 pt-4 pb-3">
                                <h6 class="text-truncate mb-3">Đồ chơi vận động</h6>
                                <div class="d-flex justify-content-center">
                                    <h6>250.000đ</h6>
                                </div>
                            </div>
                            <div class="card-footer d-flex justify-content-between bg-light border">
                                <a href="detail.html?id=8" class="btn btn-sm text-dark p-0">
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
                                <img class="img-fluid w-100" src="img/product-1.jpg" alt="">
                            </div>
                            <div class="card-body border-left border-right text-center p-0 pt-4 pb-3">
                                <h6 class="text-truncate mb-3">Đồ chơi LEGO</h6>
                                <div class="d-flex justify-content-center">
                                    <h6>150.000đ</h6>
                                </div>
                            </div>
                            <div class="card-footer d-flex justify-content-between bg-light border">
                                <a href="detail.html?id=1" class="btn btn-sm text-dark p-0">
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

    <!-- Footer Start -->
    <div class="container-fluid bg-secondary text-dark mt-5 pt-5">
        <div class="row px-xl-5 pt-5">
            <div class="col-lg-4 col-md-12 mb-5 pr-3 pr-xl-5">
                <a href="${pageContext.request.contextPath}/index.jsp" class="text-decoration-none">
                    <h1 class="mb-4 display-5 font-weight-semi-bold">
                        <img src="${pageContext.request.contextPath}/img/logo.png" height="42" alt="Aishiba">
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

    <!-- Template Javascript -->
    <script src="${pageContext.request.contextPath}/js/main.js"></script>
    <script>
        document.addEventListener("DOMContentLoaded", function () {
            const categoryFilters = document.querySelectorAll(".category-filter");
            categoryFilters.forEach(filter => {
                filter.addEventListener("click", function (e) {
                    e.preventDefault();
                    const category = this.getAttribute("data-category");
                    filterProductsByCategory(category);
                });
            });

            const priceFilters = document.querySelectorAll(".price-filter");
            priceFilters.forEach(filter => {
                filter.addEventListener("change", function () {
                    const selectedPrices = Array.from(priceFilters)
                        .filter(input => input.checked)
                        .map(input => input.getAttribute("data-price"));
                    filterProductsByPrice(selectedPrices);
                });
            });

            function filterProductsByCategory(category) {
                const products = document.querySelectorAll(".product-item");
                products.forEach(product => {
                    const productCategory = product.getAttribute("data-category");
                    product.style.display = (category === "all" || productCategory === category) ? "block" : "none";
                });
            }

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
    </script>
</body>
</html>
