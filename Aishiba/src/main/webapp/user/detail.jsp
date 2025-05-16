<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>

<!-- Product Detail Start -->
<div class="container-fluid py-5">
    <div class="row px-xl-5">
        <!-- Hình ảnh sản phẩm -->
        <div class="col-lg-5">
            <img class="img-fluid w-100 border" src="${product.image}" alt="${product.name}">
        </div>

        <!-- Thông tin sản phẩm -->
        <div class="col-lg-7">
            <h3 class="font-weight-semi-bold">${product.name}</h3>
            <p class="mb-2"><strong>Thương hiệu:</strong> <a href="#" class="text-primary">${product.brand}</a></p>
            <p class="mb-2"><strong>SKU:</strong> ${product.sku}</p>
            <h4 class="text-primary mb-3">
                <fmt:formatNumber value="${product.price}" type="currency" currencySymbol="đ" groupingUsed="true" />
                <small class="text-muted">
                    <del><fmt:formatNumber value="${product.oldPrice}" type="currency" currencySymbol="đ" groupingUsed="true" /></del>
                </small>
                <span class="badge badge-danger">
                    -<c:out value="${100 - (product.price * 100 / product.oldPrice)}" />%
                </span>
            </h4>
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
            <c:forEach var="store" items="${product.stores}">
                <div class="border p-3 mb-3">
                    <p class="mb-1"><strong>${store.code} ${store.name}</strong></p>
                    <p class="mb-1">${store.address}</p>
                    <p class="mb-0"><i class="fa fa-phone text-primary mr-2"></i>${store.phone}</p>
                    <p class="text-success mt-2">Còn: <strong>${store.quantity}</strong> sản phẩm</p>
                </div>
            </c:forEach>
        </div>
    </div>

    <!-- Tabs -->
    <div class="row px-xl-5 mt-5">
        <div class="col">
            <div class="nav nav-tabs border-secondary mb-4">
                <a class="nav-item nav-link text-dark active" data-toggle="tab" href="#tab-description">Mô tả</a>
                <a class="nav-item nav-link text-dark" data-toggle="tab" href="#tab-information">Thông tin kỹ thuật</a>
                <a class="nav-item nav-link text-dark" data-toggle="tab" href="#tab-reviews">Đánh giá (${fn:length(product.reviews)})</a>
            </div>
            <div class="tab-content">
                <!-- Mô tả -->
                <div class="tab-pane fade show active" id="tab-description">
                    <h4 class="mb-3">Mô tả sản phẩm</h4>
                    <p>${product.description}</p>
                </div>

                <!-- Thông tin kỹ thuật -->
                <div class="tab-pane fade" id="tab-information">
                    <h4 class="mb-3">Thông tin kỹ thuật</h4>
                    <ul class="list-unstyled">
                        <c:forEach var="entry" items="${product.specs}">
                            <li><strong>${entry.key}:</strong> ${entry.value}</li>
                        </c:forEach>
                    </ul>
                </div>

                <!-- Đánh giá -->
                <div class="tab-pane fade" id="tab-reviews">
                    <h4 class="mb-3">Đánh giá từ khách hàng</h4>
                    <c:forEach var="review" items="${product.reviews}">
                        <div class="media mb-4">
                            <img src="${review.avatar}" alt="User" class="img-fluid mr-3 mt-1" style="width: 45px;">
                            <div class="media-body">
                                <h6>${review.name}<small> - <i>${review.date}</i></small></h6>
                                <div class="text-primary mb-2">
                                    <c:forEach begin="1" end="${review.rating}">
                                        <i class="fa fa-star"></i>
                                    </c:forEach>
                                    <c:if test="${review.rating < 5}">
                                        <i class="fa fa-star-half-alt"></i>
                                    </c:if>
                                </div>
                                <p>${review.comment}</p>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Product Detail End -->
