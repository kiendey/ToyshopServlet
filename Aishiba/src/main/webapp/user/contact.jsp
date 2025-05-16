<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- Contact Start -->
<div class="container-fluid pt-5">
    <div class="text-center mb-4">
        <h2 class="section-title px-5"><span class="px-2">Liên hệ với chúng tôi</span></h2>
    </div>
    <div class="row px-xl-5">
        <!-- Form liên hệ -->
        <div class="col-lg-7 mb-5">
            <div class="contact-form">
                <form action="contact" method="post">
                    <div class="form-group">
                        <input type="text" name="name" class="form-control" placeholder="Tên của bạn" required>
                    </div>
                    <div class="form-group">
                        <input type="email" name="email" class="form-control" placeholder="Email của bạn" required>
                    </div>
                    <div class="form-group">
                        <textarea name="message" class="form-control" rows="5" placeholder="Tin nhắn của bạn" required></textarea>
                    </div>
                    <button class="btn btn-primary py-2 px-4" type="submit">Gửi tin nhắn</button>
                </form>
                <!-- Thông báo gửi thành công -->
                <c:if test="${not empty messageSent}">
                    <div class="alert alert-success mt-3">${messageSent}</div>
                </c:if>
            </div>
        </div>

        <!-- Thông tin liên hệ -->
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
