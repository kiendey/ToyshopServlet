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
                    <button class="btn btn-block btn-primary my-3 py-3" onclick="window.location.href='checkout.html'">Tiến hành thanh toán</button>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Cart End -->

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
        const cartItems = document.getElementById("cartItems");
        const totalElement = document.querySelector(".card-footer .font-weight-bold:last-child");

        // Hàm cập nhật tổng tiền
        function updateTotal() {
            let total = 0;
            cartItems.querySelectorAll("tr").forEach(row => {
                const totalCell = row.querySelector(".total");
                total += parseInt(totalCell.textContent);
            });
            totalElement.textContent = total.toLocaleString() + "₫";
        }

        // Xử lý tăng số lượng
        cartItems.addEventListener("click", function (e) {
            if (e.target.closest(".btn-plus")) {
                const row = e.target.closest("tr");
                const quantityInput = row.querySelector(".quantity-input");
                const price = parseInt(row.querySelector(".price").textContent);
                let quantity = parseInt(quantityInput.value);
                quantity++;
                quantityInput.value = quantity;
                row.querySelector(".total").textContent = (quantity * price).toLocaleString();
                updateTotal();
            }
        });

        // Xử lý giảm số lượng
        cartItems.addEventListener("click", function (e) {
            if (e.target.closest(".btn-minus")) {
                const row = e.target.closest("tr");
                const quantityInput = row.querySelector(".quantity-input");
                const price = parseInt(row.querySelector(".price").textContent);
                let quantity = parseInt(quantityInput.value);
                if (quantity > 1) {
                    quantity--;
                    quantityInput.value = quantity;
                    row.querySelector(".total").textContent = (quantity * price).toLocaleString();
                    updateTotal();
                }
            }
        });

        // Xử lý xóa sản phẩm
        cartItems.addEventListener("click", function (e) {
            if (e.target.closest(".btn-remove")) {
                const row = e.target.closest("tr");
                row.remove();
                updateTotal();
            }
        });

        // Cập nhật tổng tiền ban đầu
        updateTotal();
    });
</script>
