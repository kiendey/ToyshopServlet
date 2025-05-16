<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!-- Checkout Start -->
<div class="container-fluid pt-5">
    <div class="row px-xl-5">
        <div class="col-lg-8">
            <h4 class="font-weight-semi-bold mb-4">Thông tin thanh toán</h4>
            <form action="processOrder" method="post" id="checkoutForm">
                <div class="row">
                    <div class="col-md-6 form-group">
                        <label>Họ</label>
                        <input class="form-control" type="text" name="firstName" placeholder="Nguyễn" required>
                    </div>
                    <div class="col-md-6 form-group">
                        <label>Tên</label>
                        <input class="form-control" type="text" name="lastName" placeholder="Văn A" required>
                    </div>
                    <div class="col-md-6 form-group">
                        <label>Email</label>
                        <input class="form-control" type="email" name="email" placeholder="example@email.com" required>
                    </div>
                    <div class="col-md-6 form-group">
                        <label>Số điện thoại</label>
                        <input class="form-control" type="text" name="phone" placeholder="+84 123 456 789" required>
                    </div>
                    <div class="col-md-6 form-group">
                        <label>Địa chỉ</label>
                        <input class="form-control" type="text" name="address" placeholder="123 Đường ABC" required>
                    </div>
                    <div class="col-md-6 form-group">
                        <label>Thành phố</label>
                        <input class="form-control" type="text" name="city" placeholder="Hồ Chí Minh" required>
                    </div>
                    <div class="col-md-6 form-group">
                        <label>Quốc gia</label>
                        <select class="custom-select" name="country" required>
                            <option value="Việt Nam" selected>Việt Nam</option>
                            <option value="Hoa Kỳ">Hoa Kỳ</option>
                            <option value="Nhật Bản">Nhật Bản</option>
                            <option value="Hàn Quốc">Hàn Quốc</option>
                        </select>
                    </div>
                    <div class="col-md-6 form-group">
                        <label>Mã bưu điện</label>
                        <input class="form-control" type="text" name="postalCode" placeholder="700000" required>
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
            <button form="checkoutForm" class="btn btn-primary btn-block mt-3" id="placeOrderBtn" type="submit">Đặt hàng</button>
        </div>
    </div>
</div>
<!-- Checkout End -->

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

        // Giả lập dữ liệu giỏ hàng (có thể thay bằng dữ liệu từ server hoặc localStorage)
        const cartItems = [
            { name: "Sản phẩm 1", price: 150000, quantity: 1 },
            { name: "Sản phẩm 2", price: 200000, quantity: 1 }
        ];

        // Hàm hiển thị giỏ hàng
        function displayCartItems() {
            let total = 0;
            cartItems.forEach(item => {
                const itemTotal = item.price * item.quantity;
                total += itemTotal;

                const itemRow = document.createElement("div");
                itemRow.classList.add("d-flex", "justify-content-between");
                itemRow.innerHTML = `
                    <p>${item.name} (x${item.quantity})</p>
                    <p>${itemTotal.toLocaleString()}₫</p>
                `;
                orderSummary.appendChild(itemRow);
            });
            totalAmount.textContent = total.toLocaleString() + "₫";
        }

        // Kiểm tra thông tin đầu vào (bỏ qua vì form đã có required, hoặc bạn có thể giữ validate JS)
        function validateInputs() {
            // Optional: bạn có thể bổ sung kiểm tra phía client
            return true;
        }

        // Thay đổi xử lý submit form: khi bấm nút submit form sẽ gửi dữ liệu lên server
        document.getElementById("checkoutForm").addEventListener("submit", function(e) {
            if (!validateInputs()) {
                e.preventDefault();
                alert("Vui lòng kiểm tra lại thông tin.");
            }
        });

        // Hiển thị giỏ hàng khi tải trang
        displayCartItems();
    });
</script>
