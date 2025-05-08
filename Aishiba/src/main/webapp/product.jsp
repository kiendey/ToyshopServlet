<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<main id="main" class="main">
    <div class="pagetitle">
        <h1>Danh sách sản phẩm</h1>
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/dashboard">Trang chủ</a></li>
                <li class="breadcrumb-item"><a href="#">Sản phẩm</a></li>
                <li class="breadcrumb-item active">Danh sách sản phẩm</li>
            </ol>
        </nav>
    </div>
    <section class="section">
        <div class="container-fluid px-0">
            <div class="card shadow-sm rounded-4 p-4" style="border: none;">
                <!-- Toolbar -->
                <div class="d-flex justify-content-between align-items-center flex-wrap mb-3">
                    <h2 class="fw-bold text-primary mb-0">Danh sách sản phẩm</h2>
                    <div class="d-flex gap-2">
                        <button class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#addProductModal">
                            <i class="bi bi-plus-lg me-1"></i> Thêm mới
                        </button>
                        <div class="dropdown">
                            <button class="btn btn-success dropdown-toggle" type="button" data-bs-toggle="dropdown">
                                <i class="bi bi-file-earmark me-1"></i> Xuất/Nhập
                            </button>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="#" onclick="exportProducts()">
                                    <i class="bi bi-file-earmark-excel me-2"></i>Xuất Excel
                                </a></li>
                                <li><a class="dropdown-item" href="#" onclick="importProducts()">
                                    <i class="bi bi-file-earmark-arrow-up me-2"></i>Nhập Excel
                                </a></li>
                            </ul>
                        </div>
                        <div class="dropdown">
                            <button class="btn btn-warning dropdown-toggle" type="button" data-bs-toggle="dropdown" id="businessActionBtn">
                                <i class="bi bi-shop me-1"></i> Kinh doanh
                            </button>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="#" onclick="startBusinessSelected()" id="startBusinessBtn">
                                    <i class="bi bi-unlock me-2"></i>Mở kinh doanh
                                </a></li>
                                <li><a class="dropdown-item" href="#" onclick="stopBusinessSelected()" id="stopBusinessBtn">
                                    <i class="bi bi-lock me-2"></i>Ngừng kinh doanh
                                </a></li>
                            </ul>
                        </div>
                        <button class="btn btn-danger" onclick="deleteSelectedProducts()" title="Xóa" id="deleteSelectedBtn">
                            <i class="bi bi-trash me-1"></i> Xóa
                        </button>
                    </div>
                </div>
                <!-- Filter -->
                <div class="row g-2 mb-3">
                    <div class="col-md-4">
                        <div class="input-group">
                            <span class="input-group-text bg-white"><i class="bi bi-search"></i></span>
                            <input type="text" class="form-control" id="searchInput" placeholder="Tìm kiếm theo mã, tên hàng..." oninput="filterProducts()">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <select class="form-select" id="filterCategory" title="Lọc theo nhóm hàng" onchange="filterProducts()">
                            <option value="">Tất cả nhóm hàng</option>
                            <option value="Đồ chơi trẻ em">Đồ chơi trẻ em</option>
                            <option value="Đồ chơi giáo dục">Đồ chơi giáo dục</option>
                            <option value="Đồ chơi mô hình">Đồ chơi mô hình</option>
                            <option value="Đồ chơi điện tử">Đồ chơi điện tử</option>
                            <option value="Đồ chơi vận động">Đồ chơi vận động</option>
                            <option value="Đồ chơi xếp hình">Đồ chơi xếp hình</option>
                            <option value="Đồ chơi nghệ thuật">Đồ chơi nghệ thuật</option>
                        </select>
                    </div>
                    <div class="col-md-3">
                        <select class="form-select" id="filterStatus" title="Lọc theo trạng thái" onchange="filterProducts()">
                            <option value="">Tất cả trạng thái</option>
                            <option value="Còn hàng">Còn hàng</option>
                            <option value="Hết hàng">Hết hàng</option>
                        </select>
                    </div>
                    <div class="col-md-4">
                        <div class="input-group">
                            <button class="btn btn-outline-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                                <i class="bi bi-calendar3"></i> Thời gian
                            </button>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="#" onclick="setDateRange('today')">Hôm nay</a></li>
                                <li><a class="dropdown-item" href="#" onclick="setDateRange('yesterday')">Hôm qua</a></li>
                                <li><a class="dropdown-item" href="#" onclick="setDateRange('thisWeek')">Tuần này</a></li>
                                <li><a class="dropdown-item" href="#" onclick="setDateRange('lastWeek')">Tuần trước</a></li>
                                <li><a class="dropdown-item" href="#" onclick="setDateRange('thisMonth')">Tháng này</a></li>
                                <li><a class="dropdown-item" href="#" onclick="setDateRange('lastMonth')">Tháng trước</a></li>
                                <li><hr class="dropdown-divider"></li>
                                <li><a class="dropdown-item" href="#" onclick="setDateRange('last7Days')">7 ngày qua</a></li>
                                <li><a class="dropdown-item" href="#" onclick="setDateRange('last30Days')">30 ngày qua</a></li>
                                <li><a class="dropdown-item" href="#" onclick="setDateRange('last90Days')">90 ngày qua</a></li>
                                <li><hr class="dropdown-divider"></li>
                                <li><a class="dropdown-item" href="#" onclick="clearDateRange()">Xóa bộ lọc</a></li>
                            </ul>
                            <div class="date-range-inputs">
                                <div class="date-input-group">
                                    <label>Từ ngày:</label>
                                    <input type="date" class="form-control" id="filterStartDate" title="Lọc từ ngày" onchange="handleDateChange()">
                                </div>
                                <div class="date-input-group">
                                    <label>Đến ngày:</label>
                                    <input type="date" class="form-control" id="filterEndDate" title="Lọc đến ngày" onchange="handleDateChange()">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Table -->
                <div class="table-responsive">
                    <table class="table table-hover align-middle rounded-4 overflow-hidden">
                        <thead class="table-light">
                        <tr>
                            <th style="width:40px">
                                <input type="checkbox" class="form-check-input" id="selectAll" title="Chọn tất cả" onclick="toggleSelectAll(this)">
                            </th>
                            <th style="width:40px">
                                <i class="bi bi-star header-star text-warning" id="selectAllStars" title="Chọn/Bỏ chọn tất cả nổi bật" onclick="toggleSelectAllStars()"></i>
                            </th>
                            <th>Mã hàng</th>
                            <th>Tên hàng</th>
                            <th class="text-end">Giá bán</th>
                            <th class="text-end">Giá vốn</th>
                            <th class="text-end">Tồn kho</th>
                            <th class="text-center">Trạng thái</th>
                            <th class="text-center">Trạng thái KD</th>
                            <th>Thời gian tạo</th>
                        </tr>
                        </thead>
                        <tbody>
                        <!-- Dữ liệu sẽ được render bằng JavaScript -->
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </section>
    <!-- Modal Chỉnh Sửa Sản Phẩm -->
    <div class="modal fade" id="editProductModal" tabindex="-1" aria-labelledby="editProductModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header bg-primary text-white">
                    <h5 class="modal-title" id="editProductModalLabel">Chỉnh Sửa Sản Phẩm</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form id="editProductForm">
                        <div class="row mb-3">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="editProductCode" class="form-label">Mã sản phẩm</label>
                                    <input type="text" class="form-control" id="editProductCode" readonly>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="editProductBarcode" class="form-label">Mã vạch</label>
                                    <input type="text" class="form-control" id="editProductBarcode">
                                </div>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="editProductName" class="form-label">Tên sản phẩm</label>
                                    <input type="text" class="form-control" id="editProductName" required>
                                </div>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="editProductCategory" class="form-label">Nhóm hàng</label>
                                    <select class="form-select" id="editProductCategory">
                                        <option value="">Chọn nhóm hàng</option>
                                        <option value="Đồ chơi trẻ em">Đồ chơi trẻ em</option>
                                        <option value="Đồ chơi giáo dục">Đồ chơi giáo dục</option>
                                        <option value="Đồ chơi mô hình">Đồ chơi mô hình</option>
                                        <option value="Đồ chơi điện tử">Đồ chơi điện tử</option>
                                        <option value="Đồ chơi vận động">Đồ chơi vận động</option>
                                        <option value="Đồ chơi xếp hình">Đồ chơi xếp hình</option>
                                        <option value="Đồ chơi nghệ thuật">Đồ chơi nghệ thuật</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="editProductSupplier" class="form-label">Nhà cung cấp</label>
                                    <select class="form-select" id="editProductSupplier">
                                        <option value="">Chọn nhà cung cấp</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="editProductPrice" class="form-label">Giá bán</label>
                                    <div class="input-group">
                                        <input type="number" class="form-control" id="editProductPrice" required>
                                        <span class="input-group-text">VNĐ</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="editProductCost" class="form-label">Giá vốn</label>
                                    <div class="input-group">
                                        <input type="number" class="form-control" id="editProductCost" required>
                                        <span class="input-group-text">VNĐ</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="editProductStock" class="form-label">Tồn kho</label>
                                    <input type="number" class="form-control" id="editProductStock" required>
                                </div>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-12">
                                <div class="form-group">
                                    <label for="editProductDescription" class="form-label">Mô tả sản phẩm</label>
                                    <textarea class="form-control" id="editProductDescription" rows="3"></textarea>
                                </div>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-12">
                                <div class="form-group">
                                    <label for="editProductOrderNote" class="form-label">Ghi chú đặt hàng</label>
                                    <textarea class="form-control" id="editProductOrderNote" rows="2"></textarea>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12">
                                <div class="form-check form-switch">
                                    <input class="form-check-input" type="checkbox" id="editProductStatus">
                                    <label class="form-check-label" for="editProductStatus">Đang kinh doanh</label>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Hủy</button>
                    <button type="button" class="btn btn-primary" onclick="saveProductChanges()">Lưu thay đổi</button>
                </div>
            </div>
        </div>
    </div>
    <!-- Modal Thêm Sản Phẩm -->
    <div id="addProductModal" class="modal fade" tabindex="-1" aria-labelledby="addProductModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header bg-primary text-white">
                    <h5 class="modal-title" id="addProductModalLabel">Thêm mới sản phẩm</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form id="addProductForm">
                        <div class="row mb-3">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="newProductCode" class="form-label">Mã sản phẩm</label>
                                    <input type="text" class="form-control" id="newProductCode" readonly>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="newProductBarcode" class="form-label">Mã vạch</label>
                                    <input type="text" class="form-control" id="newProductBarcode">
                                </div>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="newProductName" class="form-label">Tên sản phẩm <span class="text-danger">*</span></label>
                                    <input type="text" class="form-control" id="newProductName" required>
                                </div>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="newProductCategory" class="form-label">Nhóm hàng</label>
                                    <select class="form-select" id="newProductCategory">
                                        <option value="">Chọn nhóm hàng</option>
                                        <option value="Đồ chơi trẻ em">Đồ chơi trẻ em</option>
                                        <option value="Đồ chơi giáo dục">Đồ chơi giáo dục</option>
                                        <option value="Đồ chơi mô hình">Đồ chơi mô hình</option>
                                        <option value="Đồ chơi điện tử">Đồ chơi điện tử</option>
                                        <option value="Đồ chơi vận động">Đồ chơi vận động</option>
                                        <option value="Đồ chơi xếp hình">Đồ chơi xếp hình</option>
                                        <option value="Đồ chơi nghệ thuật">Đồ chơi nghệ thuật</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="newProductSupplier" class="form-label">Nhà cung cấp</label>
                                    <select class="form-select" id="newProductSupplier">
                                        <option value="">Chọn nhà cung cấp</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="newProductPrice" class="form-label">Giá bán <span class="text-danger">*</span></label>
                                    <div class="input-group">
                                        <input type="number" class="form-control" id="newProductPrice" required>
                                        <span class="input-group-text">VNĐ</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="newProductCost" class="form-label">Giá vốn <span class="text-danger">*</span></label>
                                    <div class="input-group">
                                        <input type="number" class="form-control" id="newProductCost" required>
                                        <span class="input-group-text">VNĐ</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="newProductStock" class="form-label">Tồn kho <span class="text-danger">*</span></label>
                                    <input type="number" class="form-control" id="newProductStock" required>
                                </div>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-12">
                                <div class="form-group">
                                    <label for="newProductDescription" class="form-label">Mô tả sản phẩm</label>
                                    <textarea class="form-control" id="newProductDescription" rows="3"></textarea>
                                </div>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-12">
                                <div class="form-group">
                                    <label for="newProductOrderNote" class="form-label">Ghi chú đặt hàng</label>
                                    <textarea class="form-control" id="newProductOrderNote" rows="2"></textarea>
                                </div>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-12">
                                <label class="form-label">Hình ảnh sản phẩm</label>
                                <div class="product-images" id="newProductImages">
                                    <div class="image-upload-placeholder" onclick="addNewProductImage()">
                                        <i class="bi bi-plus-lg fs-3 text-primary"></i>
                                        <span class="ms-2">Thêm ảnh</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12">
                                <div class="form-check form-switch">
                                    <input class="form-check-input" type="checkbox" id="newProductStatus" checked>
                                    <label class="form-check-label" for="newProductStatus">Đang kinh doanh</label>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Hủy</button>
                    <button type="button" class="btn btn-success" onclick="addProduct()">Thêm</button>
                </div>
            </div>
        </div>
    </div>
    <!-- Input file ẩn -->
    <input type="file" id="importFile" accept=".csv" style="display:none" onchange="handleImport(event)">
</main>
<script>
    let products = ${productsJson}; // Dữ liệu được truyền từ Servlet dưới dạng JSON
    let currentProduct = null;
    let currentDetailRow = null;

    window.addEventListener('DOMContentLoaded', function() {
        renderProductTable();
        const addProductModal = document.getElementById('addProductModal');
        if (addProductModal) {
            new bootstrap.Modal(addProductModal);
        }
        updateActionButtonsState();
    });

    function createProductRow(product, index) {
        return `<tr onclick="showProductDetailByRow(this, ${index})">
            <td>
                <div class="form-check" onclick="event.stopPropagation()">
                    <input type="checkbox"
                          class="form-check-input product-checkbox"
                          ${product.checked ? 'checked' : ''}
                          onchange="toggleProductSelection(event, ${index})"
                          title="Chọn sản phẩm này">
                </div>
            </td>
            <td><i class="bi ${product.star ? 'bi-star-fill' : 'bi-star'} star-outline text-warning" onclick="toggleStar(event, ${index})" title="Đánh dấu sản phẩm"></i></td>
            <td>${product.code}</td>
            <td>${product.name}</td>
            <td class="text-end">${formatCurrency(product.price)}</td>
            <td class="text-end">${formatCurrency(product.cost)}</td>
            <td class="text-end">${formatCurrency(product.stock)}</td>
            <td class="text-center">${product.status}</td>
            <td class="text-center">${product.business}</td>
            <td>${product.created}</td>
        </tr>`;
    }

    function createProductDetailRow(product) {
        const images = product.images || [];
        const imageGrid = `
            <div class="product-images">
                ${images.slice(0, 4).map((img, index) => `
                    <div class="product-image-item">
                        <img src="${img}" alt="${product.name} - Ảnh ${index + 1}">
                        <button class="remove-image" onclick="removeProductImage(${products.indexOf(product)}, ${index})">
                            <i class="bi bi-x"></i>
                        </button>
                    </div>
                `).join('')}
                ${images.length < 4 ? `
                    <div class="image-upload-placeholder" onclick="addProductImage(${products.indexOf(product)})">
                        <i class="bi bi-plus-lg fs-3 text-primary"></i>
                    </div>
                ` : ''}
            </div>`;

        return `<tr class="product-detail-row">
            <td colspan="10">
                <div class="product-detail-content">
                    <div class="row">
                        <div class="col-md-4">
                            ${images.length > 0 ? imageGrid : `
                                <div class="product-images">
                                    <div class="image-upload-placeholder" onclick="addProductImage(${products.indexOf(product)})">
                                        <i class="bi bi-plus-lg fs-3 text-primary"></i>
                                        <span class="ms-2">Thêm ảnh</span>
                                    </div>
                                </div>
                            `}
                        </div>
                        <div class="col-md-8">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="detail-section">
                                        <h5><i class="bi bi-info-circle me-2"></i>Thông tin cơ bản</h5>
                                        <div class="mb-3">
                                            <div class="detail-label">Mã hàng</div>
                                            <div class="detail-value">${product.code}</div>
                                        </div>
                                        <div class="mb-3">
                                            <div class="detail-label">Mã vạch</div>
                                            <div class="detail-value">${product.barcode || (product.code + 'BAR')}</div>
                                        </div>
                                        <div class="mb-3">
                                            <div class="detail-label">Nhóm hàng</div>
                                            <div class="detail-value">${product.category || 'Chưa phân loại'}</div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="detail-section">
                                        <h5><i class="bi bi-currency-dollar me-2"></i>Thông tin giá</h5>
                                        <div class="mb-3">
                                            <div class="detail-label">Giá bán</div>
                                            <div class="detail-value text-success fw-bold text-end">${formatCurrency(product.price)}</div>
                                        </div>
                                        <div class="mb-3">
                                            <div class="detail-label">Giá vốn</div>
                                            <div class="detail-value text-danger text-end">${formatCurrency(product.cost)}</div>
                                        </div>
                                        <div class="mb-3">
                                            <div class="detail-label">Tồn kho</div>
                                            <div class="detail-value">${product.stock} đơn vị</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="detail-section">
                                <h5><i class="bi bi-card-text me-2"></i>Thông tin bổ sung</h5>
                                <div class="mb-3">
                                    <div class="detail-label">Mô tả sản phẩm</div>
                                    <div class="detail-value">${product.description || 'Chưa có mô tả'}</div>
                                </div>
                                <div class="mb-3">
                                    <div class="detail-label">Nhà cung cấp</div>
                                    <div class="detail-value">${product.supplier || 'Chưa có thông tin'}</div>
                                </div>
                                <div class="mb-3">
                                    <div class="detail-label">Ngày tạo</div>
                                    <div class="detail-value">${product.created}</div>
                                </div>
                            </div>
                            <div class="btn-group mt-3">
                                <button class="btn btn-success" onclick="editProductDetail(${products.indexOf(product)})">
                                    <i class="bi bi-pencil me-1"></i> Sửa
                                </button>
                                <button class="btn btn-secondary" onclick="printProductLabel(${products.indexOf(product)})">
                                    <i class="bi bi-printer me-1"></i> In tem mã
                                </button>
                                <button class="btn btn-info text-white" onclick="copyProductDetail(${products.indexOf(product)})">
                                    <i class="bi bi-clipboard me-1"></i> Sao chép
                                </button>
                                <button class="btn btn-warning" onclick="toggleBusinessStatus(${products.indexOf(product)})">
                                    <i class="bi bi-lock me-1"></i> ${product.business.includes('Ngừng') ? 'Mở bán lại' : 'Ngừng kinh doanh'}
                                </button>
                                <button class="btn btn-danger" onclick="deleteProductDetail(${products.indexOf(product)})">
                                    <i class="bi bi-trash me-1"></i> Xóa
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </td>
        </tr>`;
    }

    function renderProductTable() {
        const tbody = document.querySelector('tbody');
        if (!tbody) return;

        tbody.innerHTML = '';

        if (!Array.isArray(products)) {
            products = [];
        }

        products.forEach((product, idx) => {
            const productRow = createProductRow(product, idx);
            const detailRow = createProductDetailRow(product);
            tbody.insertAdjacentHTML('beforeend', productRow);
            tbody.insertAdjacentHTML('beforeend', detailRow);
        });

        updateSelectAllCheckbox();
        updateActionButtonsState();
        updateSelectAllStars();
    }

    function updateSelectAllCheckbox() {
        const selectAll = document.getElementById('selectAll');
        if (!selectAll) return;

        const checkedProducts = products.filter(p => p.checked);
        selectAll.checked = checkedProducts.length === products.length;
        selectAll.indeterminate = checkedProducts.length > 0 && checkedProducts.length < products.length;
    }

    function updateSelectAllStars() {
        const headerStar = document.getElementById('selectAllStars');
        if (headerStar) {
            const allStarred = products.length > 0 && products.every(p => p.star);
            headerStar.classList.remove('bi-star-fill', 'bi-star');
            headerStar.classList.add(allStarred ? 'bi-star-fill' : 'bi-star');
        }
    }

    function toggleSelectAllStars() {
        const headerStar = document.getElementById('selectAllStars');
        if (!headerStar) return;

        const allStarred = products.length > 0 && products.every(p => p.star);
        const newStarState = !allStarred;

        products.forEach(p => p.star = newStarState);
        renderProductTable();
    }

    function toggleStar(event, idx) {
        if (!event) return;
        event.stopPropagation();
        if (idx >= 0 && idx < products.length) {
            products[idx].star = !products[idx].star;
            renderProductTable();
        }
    }

    // CRUD Operations
    function addProduct() {
        const name = document.getElementById('newProductName').value.trim();
        const price = document.getElementById('newProductPrice').value;
        const cost = document.getElementById('newProductCost').value;
        const stock = document.getElementById('newProductStock').value;
        const description = document.getElementById('newProductDescription').value.trim();
        const barcode = document.getElementById('newProductBarcode').value.trim();
        const category = document.getElementById('newProductCategory').value;
        const supplier = document.getElementById('newProductSupplier').value;
        const orderNote = document.getElementById('newProductOrderNote').value.trim();
        const isActive = document.getElementById('newProductStatus').checked;

        if (!name || !price || !cost || !stock) {
            alert('Vui lòng điền đầy đủ thông tin bắt buộc!');
            return;
        }

        const imageElements = document.querySelectorAll('#newProductImages .product-image-item img');
        const images = Array.from(imageElements).map(img => img.src);

        const stockNum = parseInt(stock);
        const priceNum = parseInt(price);
        const costNum = parseInt(cost);

        const newProduct = {
            code: "SP" + Math.floor(Math.random() * 1000000).toString().padStart(6, '0'),
            name,
            price: priceNum,
            cost: costNum,
            stock: stockNum,
            barcode,
            category,
            supplier,
            description,
            orderNote,
            status: stockNum > 0 ? '<span class="badge bg-success">Còn hàng</span>' : '<span class="badge bg-danger">Hết hàng</span>',
            business: stockNum <= 0 ? '<span class="badge bg-danger">Ngừng KD</span>' :
                (isActive ? '<span class="badge bg-success">Kinh doanh</span>' : '<span class="badge bg-danger">Ngừng KD</span>'),
            created: new Date().toLocaleDateString('vi-VN') + " " + new Date().toLocaleTimeString('vi-VN', {hour: '2-digit', minute:'2-digit'}),
            star: false,
            images: images,
            checked: false
        };

        fetch('${pageContext.request.contextPath}/products/add', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify(newProduct)
        }).then(response => response.json())
            .then(data => {
                if (data.success) {
                    products.unshift(newProduct);
                    renderProductTable();
                    const modal = bootstrap.Modal.getInstance(document.getElementById('addProductModal'));
                    if (modal) modal.hide();
                    document.getElementById('addProductForm').reset();
                    const imagesContainer = document.getElementById('newProductImages');
                    if (imagesContainer) {
                        const placeholder = imagesContainer.querySelector('.image-upload-placeholder');
                        Array.from(imagesContainer.children).forEach(child => {
                            if (child !== placeholder) child.remove();
                        });
                        if (placeholder) placeholder.style.display = 'block';
                    }
                    document.getElementById('newProductCode').value = "SP" + Math.floor(Math.random() * 1000000).toString().padStart(6, '0');
                    alert('Đã thêm sản phẩm mới thành công!');
                } else {
                    alert('Có lỗi xảy ra khi thêm sản phẩm!');
                }
            });
    }

    function showProductDetailByRow(row, idx) {
        const detailRow = row.nextElementSibling;

        if (detailRow && detailRow.classList.contains('show')) {
            detailRow.classList.remove('show');
            row.classList.remove('selected-row');
            setTimeout(() => {
                if (!detailRow.classList.contains('show')) {
                    detailRow.style.display = 'none';
                }
            }, 300);
            currentProduct = null;
            currentDetailRow = null;
            return;
        }

        document.querySelectorAll('.product-detail-row').forEach(r => {
            r.classList.remove('show');
            setTimeout(() => {
                if (!r.classList.contains('show')) {
                    r.style.display = 'none';
                }
            }, 300);
        });
        document.querySelectorAll('tbody tr').forEach(r => r.classList.remove('selected-row'));

        if (detailRow && detailRow.classList.contains('product-detail-row')) {
            detailRow.style.display = 'table-row';
            detailRow.offsetHeight;
            detailRow.classList.add('show');
            row.classList.add('selected-row');
            currentProduct = products[idx];
            currentDetailRow = detailRow;
        }
    }

    function editProductDetail(idx) {
        updateEditModalSelects().then(() => {
            const p = products[idx];
            document.getElementById('editProductCode').value = p.code;
            document.getElementById('editProductBarcode').value = p.barcode || '';
            document.getElementById('editProductName').value = p.name;
            document.getElementById('editProductCategory').value = p.category || '';
            document.getElementById('editProductSupplier').value = p.supplier || '';
            document.getElementById('editProductPrice').value = p.price.toString().replace(/[^0-9]/g, '');
            document.getElementById('editProductCost').value = p.cost.toString().replace(/[^0-9]/g, '');
            document.getElementById('editProductStock').value = p.stock;
            document.getElementById('editProductDescription').value = p.description || '';
            document.getElementById('editProductOrderNote').value = p.orderNote || '';

            const businessStatusSwitch = document.getElementById('editProductStatus');
            businessStatusSwitch.checked = !p.business.includes('Ngừng');
            businessStatusSwitch.disabled = p.stock <= 0;

            document.getElementById('editProductModal').setAttribute('data-edit-idx', idx);
            var modal = new bootstrap.Modal(document.getElementById('editProductModal'));
            modal.show();
        });
    }

    function saveProductChanges() {
        const idx = +document.getElementById('editProductModal').getAttribute('data-edit-idx');
        if (isNaN(idx)) return;

        const product = products[idx];
        product.barcode = document.getElementById('editProductBarcode').value;
        product.name = document.getElementById('editProductName').value;
        product.category = document.getElementById('editProductCategory').value;
        product.supplier = document.getElementById('editProductSupplier').value;
        product.price = parseInt(document.getElementById('editProductPrice').value);
        product.cost = parseInt(document.getElementById('editProductCost').value);
        const newStock = parseInt(document.getElementById('editProductStock').value);
        product.stock = newStock;
        product.status = newStock > 0 ? '<span class="badge bg-success">Còn hàng</span>' : '<span class="badge bg-danger">Hết hàng</span>';
        if (newStock <= 0) {
            product.business = '<span class="badge bg-danger">Ngừng KD</span>';
            document.getElementById('editProductStatus').disabled = true;
        } else {
            document.getElementById('editProductStatus').disabled = false;
            const isActive = document.getElementById('editProductStatus').checked;
            product.business = isActive ? '<span class="badge bg-success">Kinh doanh</span>' : '<span class="badge bg-danger">Ngừng KD</span>';
        }
        product.description = document.getElementById('editProductDescription').value;
        product.orderNote = document.getElementById('editProductOrderNote').value;

        fetch('${pageContext.request.contextPath}/products/update', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify(product)
        }).then(response => response.json())
            .then(data => {
                if (data.success) {
                    renderProductTable();
                    var modal = bootstrap.Modal.getInstance(document.getElementById('editProductModal'));
                    modal.hide();
                    alert('Đã cập nhật thông tin sản phẩm!');
                } else {
                    alert('Có lỗi xảy ra khi cập nhật sản phẩm!');
                }
            });
    }

    function deleteProductDetail(idx) {
        if (!confirm('Xóa sản phẩm này?')) return;

        fetch('${pageContext.request.contextPath}/products/delete?code=' + products[idx].code, {
            method: 'POST'
        }).then(response => response.json())
            .then(data => {
                if (data.success) {
                    products.splice(idx, 1);
                    renderProductTable();
                    alert('Đã xóa sản phẩm!');
                } else {
                    alert('Có lỗi xảy ra khi xóa sản phẩm!');
                }
            });
    }

    function printProductLabel(idx) {
        alert('In tem mã cho: ' + products[idx].name + '\nMã: ' + products[idx].code);
    }

    function copyProductDetail(idx) {
        const p = products[idx];
        const text = `\nTên: ${p.name}\nMã: ${p.code}\nGiá bán: ${p.price}\nTồn kho: ${p.stock}\nMô tả: ${p.description}`;
        navigator.clipboard.writeText(text.trim());
        alert('Đã sao chép thông tin sản phẩm!');
    }

    function toggleBusinessStatus(idx) {
        const isCurrentlyActive = !products[idx].business.includes('Ngừng');
        updateBusinessStatus(idx, !isCurrentlyActive);
        alert(isCurrentlyActive ? 'Đã ngừng kinh doanh sản phẩm!' : 'Đã mở lại kinh doanh cho sản phẩm!');
    }

    function addProductImage(productIndex) {
        const input = document.createElement('input');
        input.type = 'file';
        input.accept = 'image/*';
        input.onchange = function(e) {
            const file = e.target.files[0];
            if (file) {
                const reader = new FileReader();
                reader.onload = function(e) {
                    if (!products[productIndex].images) {
                        products[productIndex].images = [];
                    }
                    if (products[productIndex].images.length < 4) {
                        products[productIndex].images.push(e.target.result);
                        renderProductTable();
                    } else {
                        alert('Chỉ được phép thêm tối đa 4 ảnh!');
                    }
                };
                reader.readAsDataURL(file);
            }
        };
        input.click();
    }

    function removeProductImage(productIndex, imageIndex) {
        if (confirm('Bạn có chắc muốn xóa ảnh này?')) {
            if (products[productIndex].images) {
                products[productIndex].images.splice(imageIndex, 1);
                if (products[productIndex].images.length === 0) {
                    delete products[productIndex].images;
                }
            }
            renderProductTable();
        }
    }

    function updateBusinessStatus(productIndex, isActive) {
        const product = products[productIndex];
        if (product.stock <= 0) {
            product.business = '<span class="badge bg-danger">Ngừng KD</span>';
            return;
        }
        product.business = isActive ? '<span class="badge bg-success">Kinh doanh</span>' : '<span class="badge bg-danger">Ngừng KD</span>';
        renderProductTable();
    }

    async function loadSuppliers() {
        try {
            const response = await fetch('${pageContext.request.contextPath}/suppliers');
            const suppliers = await response.json();
            return suppliers;
        } catch (error) {
            console.error('Không thể tải danh sách nhà cung cấp:', error);
            return [];
        }
    }

    async function updateEditModalSelects() {
        const categorySelect = document.getElementById('editProductCategory');
        categorySelect.innerHTML = `
            <option value="">Chọn nhóm hàng</option>
            <option value="Đồ chơi trẻ em">Đồ chơi trẻ em</option>
            <option value="Đồ chơi giáo dục">Đồ chơi giáo dục</option>
            <option value="Đồ chơi mô hình">Đồ chơi mô hình</option>
            <option value="Đồ chơi điện tử">Đồ chơi điện tử</option>
            <option value="Đồ chơi vận động">Đồ chơi vận động</option>
            <option value="Đồ chơi xếp hình">Đồ chơi xếp hình</option>
            <option value="Đồ chơi nghệ thuật">Đồ chơi nghệ thuật</option>
        `;

        const supplierSelect = document.getElementById('editProductSupplier');
        const suppliers = await loadSuppliers();
        supplierSelect.innerHTML = '<option value="">Chọn nhà cung cấp</option>' +
            suppliers.map(s => `<option value="${s.code}">${s.name}</option>`).join('');
    }

    function convertDateFormat(dateStr) {
        if (!dateStr) return '';
        const parts = dateStr.split('/');
        if (parts.length === 3) {
            return `${parts[2].split(' ')[0]}-${parts[1].padStart(2, '0')}-${parts[0].padStart(2, '0')}`;
        }
        return dateStr;
    }

    function isDateInRange(dateStr, startDate, endDate) {
        if (!dateStr) return false;
        const productDate = convertDateFormat(dateStr.split(' ')[0]);
        if (!startDate && !endDate) return true;
        if (startDate && !endDate) return productDate >= startDate;
        if (!startDate && endDate) return productDate <= endDate;
        return productDate >= startDate && productDate <= endDate;
    }

    function filterProducts() {
        const searchText = document.getElementById('searchInput').value.toLowerCase();
        const category = document.getElementById('filterCategory').value;
        const status = document.getElementById('filterStatus').value;
        const startDate = document.getElementById('filterStartDate').value;
        const endDate = document.getElementById('filterEndDate').value;

        const filteredProducts = products.filter(product => {
            const matchSearch = !searchText ||
                product.code.toLowerCase().includes(searchText) ||
                product.name.toLowerCase().includes(searchText);

            const matchCategory = !category ||
                (product.category && product.category.includes(category));

            const matchStatus = !status ||
                (status === 'Còn hàng' && product.stock > 0) ||
                (status === 'Hết hàng' && product.stock <= 0);

            const matchDate = isDateInRange(product.created, startDate, endDate);

            return matchSearch && matchCategory && matchStatus && matchDate;
        });

        const tbody = document.querySelector('tbody');
        tbody.innerHTML = '';
        filteredProducts.forEach((product, idx) => {
            const originalIndex = products.indexOf(product);
            tbody.insertAdjacentHTML('beforeend', createProductRow(product, originalIndex));
            tbody.insertAdjacentHTML('beforeend', createProductDetailRow(product));
        });

        updateSelectAllCheckbox();
        updateActionButtonsState();
        updateSelectAllStars();
    }

    function setDateRange(range) {
        const today = new Date();
        let startDate = new Date();
        let endDate = new Date();

        switch (range) {
            case 'today':
                startDate = today;
                endDate = today;
                break;
            case 'yesterday':
                startDate = new Date(today.setDate(today.getDate() - 1));
                endDate = new Date(startDate);
                break;
            case 'thisWeek':
                startDate = new Date(today.setDate(today.getDate() - today.getDay()));
                endDate = new Date();
                break;
            case 'lastWeek':
                startDate = new Date(today.setDate(today.getDate() - today.getDay() - 7));
                endDate = new Date(startDate);
                endDate.setDate(endDate.getDate() + 6);
                break;
            case 'thisMonth':
                startDate = new Date(today.getFullYear(), today.getMonth(), 1);
                endDate = new Date();
                break;
            case 'lastMonth':
                startDate = new Date(today.getFullYear(), today.getMonth() - 1, 1);
                endDate = new Date(today.getFullYear(), today.getMonth(), 0);
                break;
            case 'last7Days':
                startDate = new Date(today.setDate(today.getDate() - 7));
                endDate = new Date();
                break;
            case 'last30Days':
                startDate = new Date(today.setDate(today.getDate() - 30));
                endDate = new Date();
                break;
            case 'last90Days':
                startDate = new Date(today.setDate(today.getDate() - 90));
                endDate = new Date();
                break;
        }

        document.getElementById('filterStartDate').value = formatDate(startDate);
        document.getElementById('filterEndDate').value = formatDate(endDate);
        filterProducts();
        updateDateRangeButtonText(range);
    }

    function clearDateRange() {
        document.getElementById('filterStartDate').value = '';
        document.getElementById('filterEndDate').value = '';
        document.querySelector('.dropdown-toggle').innerHTML = '<i class="bi bi-calendar3"></i> Thời gian';
        filterProducts();
    }

    function updateDateRangeButtonText(range) {
        const button = document.querySelector('.dropdown-toggle');
        const rangeTexts = {
            'today': 'Hôm nay',
            'yesterday': 'Hôm qua',
            'thisWeek': 'Tuần này',
            'lastWeek': 'Tuần trước',
            'thisMonth': 'Tháng này',
            'lastMonth': 'Tháng trước',
            'last7Days': '7 ngày qua',
            'last30Days': '30 ngày qua',
            'last90Days': '90 ngày qua'
        };
        button.innerHTML = `<i class="bi bi-calendar3"></i> ${rangeTexts[range] || 'Thời gian'}`;
    }

    function formatDate(date) {
        return date.toISOString().split('T')[0];
    }

    function handleDateChange() {
        const startDate = document.getElementById('filterStartDate').value;
        const endDate = document.getElementById('filterEndDate').value;

        if (startDate && endDate && startDate > endDate) {
            document.getElementById('filterEndDate').value = startDate;
        }

        if (startDate || endDate) {
            const formatDisplayDate = (dateStr) => {
                if (!dateStr) return '';
                const date = new Date(dateStr);
                return date.toLocaleDateString('vi-VN');
            };

            let buttonText = 'Thời gian: ';
            if (startDate && endDate) {
                buttonText += `${formatDisplayDate(startDate)} - ${formatDisplayDate(endDate)}`;
            } else if (startDate) {
                buttonText += `Từ ${formatDisplayDate(startDate)}`;
            } else {
                buttonText += `Đến ${formatDisplayDate(endDate)}`;
            }
            document.querySelector('.dropdown-toggle').innerHTML = `<i class="bi bi-calendar3"></i> ${buttonText}`;
        } else {
            document.querySelector('.dropdown-toggle').innerHTML = '<i class="bi bi-calendar3"></i> Thời gian';
        }

        filterProducts();
    }

    function addNewProductImage() {
        const input = document.createElement('input');
        input.type = 'file';
        input.accept = 'image/*';
        input.onchange = function(e) {
            const file = e.target.files[0];
            if (file) {
                const reader = new FileReader();
                reader.onload = function(e) {
                    const imagesContainer = document.getElementById('newProductImages');
                    const imageCount = imagesContainer.querySelectorAll('.product-image-item').length;

                    if (imageCount < 4) {
                        const imageDiv = document.createElement('div');
                        imageDiv.className = 'product-image-item';
                        imageDiv.innerHTML = `
                            <img src="${e.target.result}" alt="Product Image">
                            <button class="remove-image" onclick="this.parentElement.remove()">
                                <i class="bi bi-x"></i>
                            </button>
                        `;
                        const placeholder = imagesContainer.querySelector('.image-upload-placeholder');
                        imagesContainer.insertBefore(imageDiv, placeholder);
                        if (imageCount + 1 >= 4) {
                            placeholder.style.display = 'none';
                        }
                    } else {
                        alert('Chỉ được phép thêm tối đa 4 ảnh!');
                    }
                };
                reader.readAsDataURL(file);
            }
        };
        input.click();
    }

    document.getElementById('addProductModal').addEventListener('show.bs.modal', function () {
        document.getElementById('newProductCode').value = "SP" + Math.floor(Math.random() * 1000000).toString().padStart(6, '0');
        loadSuppliers().then(suppliers => {
            const supplierSelect = document.getElementById('newProductSupplier');
            supplierSelect.innerHTML = '<option value="">Chọn nhà cung cấp</option>' +
                suppliers.map(s => `<option value="${s.code}">${s.name}</option>`).join('');
        });
    });

    function formatCurrency(value) {
        if (typeof value === 'string') {
            value = parseInt(value.replace(/[^\d]/g, '')) || 0;
        }
        return new Intl.NumberFormat('vi-VN').format(value);
    }

    function printSelectedProducts() {
        const selectedProducts = products.filter(p => p.checked);
        if (selectedProducts.length === 0) {
            alert('Vui lòng chọn ít nhất một sản phẩm để in!');
            return;
        }
        const productList = selectedProducts.map(p => `${p.name} (${p.code})`).join('\n');
        alert('In tem mã cho các sản phẩm:\n' + productList);
    }

    function copySelectedProducts() {
        const selectedProducts = products.filter(p => p.checked);
        if (selectedProducts.length === 0) {
            alert('Vui lòng chọn ít nhất một sản phẩm để sao chép!');
            return;
        }
        const text = selectedProducts.map(p =>
            `Tên: ${p.name}\nMã: ${p.code}\nGiá bán: ${formatCurrency(p.price)}\nTồn kho: ${formatCurrency(p.stock)}\nMô tả: ${p.description || 'Không có mô tả'}`
        ).join('\n\n');
        navigator.clipboard.writeText(text);
        alert('Đã sao chép thông tin của ' + selectedProducts.length + ' sản phẩm!');
    }

    function deleteSelectedProducts() {
        const selectedProducts = products.filter(p => p.checked);
        if (selectedProducts.length === 0) {
            alert('Vui lòng chọn ít nhất một sản phẩm để xóa!');
            return;
        }
        if (!confirm(`Bạn có chắc muốn xóa ${selectedProducts.length} sản phẩm đã chọn?`)) {
            return;
        }

        const codes = selectedProducts.map(p => p.code);
        fetch('${pageContext.request.contextPath}/products/deleteMultiple', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify(codes)
        }).then(response => response.json())
            .then(data => {
                if (data.success) {
                    products = products.filter(p => !p.checked);
                    renderProductTable();
                    alert('Đã xóa ' + selectedProducts.length + ' sản phẩm!');
                } else {
                    alert('Có lỗi xảy ra khi xóa sản phẩm!');
                }
            });
    }

    function exportProducts() {
        const selectedProducts = products.filter(p => p.checked);
        if (selectedProducts.length === 0) {
            if (!confirm('Không có sản phẩm nào được chọn. Bạn có muốn xuất tất cả sản phẩm?')) {
                return;
            }
        }

        const productsToExport = selectedProducts.length > 0 ? selectedProducts : products;
        const headers = ['Mã hàng', 'Tên hàng', 'Giá bán', 'Giá vốn', 'Tồn kho', 'Trạng thái', 'Trạng thái KD', 'Nhóm hàng', 'Nhà cung cấp', 'Mô tả'];
        const csvContent = [
            headers.join(','),
            ...productsToExport.map(p => [
                p.code,
                `"${p.name.replace(/"/g, '""')}"`,
                p.price,
                p.cost,
                p.stock,
                p.status.includes('Còn') ? 'Còn hàng' : 'Hết hàng',
                p.business.includes('Kinh doanh') ? 'Kinh doanh' : 'Ngừng KD',
                `"${p.category || ''}"`,
                `"${p.supplier || ''}"`,
                `"${(p.description || '').replace(/"/g, '""')}"`
            ].join(','))
        ].join('\n');

        const blob = new Blob(['\ufeff' + csvContent], { type: 'text/csv;charset=utf-8;' });
        const link = document.createElement('a');
        link.href = URL.createObjectURL(blob);
        link.download = `products_export_${new Date().toISOString().slice(0,10)}.csv`;
        link.click();
    }

    function importProducts() {
        document.getElementById('importFile').click();
    }

    function handleImport(event) {
        const file = event.target.files[0];
        if (!file) return;

        if (!file.name.toLowerCase().endsWith('.csv')) {
            alert('Vui lòng chọn file CSV!');
            return;
        }

        const reader = new FileReader();
        reader.onload = function(e) {
            try {
                const text = e.target.result;
                const rows = text.split('\n').map(row => row.trim()).filter(row => row);
                const headers = rows[0].split(',');

                const newProducts = rows.slice(1).map(row => {
                    const values = row.split(',').map(val => val.trim().replace(/^"|"$/g, ''));
                    return {
                        code: values[0] || `SP${Math.floor(Math.random() * 1000000).toString().padStart(6, '0')}`,
                        name: values[1] || '',
                        price: parseInt(values[2]) || 0,
                        cost: parseInt(values[3]) || 0,
                        stock: parseInt(values[4]) || 0,
                        status: parseInt(values[4]) > 0 ? '<span class="badge bg-success">Còn hàng</span>' : '<span class="badge bg-danger">Hết hàng</span>',
                        business: parseInt(values[4]) <= 0 ? '<span class="badge bg-danger">Ngừng KD</span>' :
                            (values[6]?.includes('Kinh doanh') ? '<span class="badge bg-success">Kinh doanh</span>' : '<span class="badge bg-danger">Ngừng KD</span>'),
                        category: values[7] || '',
                        supplier: values[8] || '',
                        description: values[9] || '',
                        created: new Date().toLocaleDateString('vi-VN') + " " + new Date().toLocaleTimeString('vi-VN', {hour: '2-digit', minute:'2-digit'}),
                        star: false,
                        images: []
                    };
                });

                fetch('${pageContext.request.contextPath}/products/import', {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/json'
                    },
                    body: JSON.stringify(newProducts)
                }).then(response => response.json())
                    .then(data => {
                        if (data.success) {
                            products.unshift(...newProducts);
                            renderProductTable();
                            alert(`Đã nhập thành công ${newProducts.length} sản phẩm!`);
                        } else {
                            alert('Có lỗi xảy ra khi nhập sản phẩm!');
                        }
                    });
            } catch (error) {
                console.error('Import error:', error);
                alert('Có lỗi xảy ra khi nhập file. Vui lòng kiểm tra định dạng file CSV!');
            }
        };
        reader.readAsText(file, 'UTF-8');
        event.target.value = '';
    }

    function toggleSelectAll(checkbox) {
        const productCheckboxes = document.querySelectorAll('.product-checkbox');
        productCheckboxes.forEach((cb, idx) => {
            if (idx < products.length) {
                cb.checked = checkbox.checked;
                products[idx].checked = checkbox.checked;
            }
        });
        updateActionButtonsState();
    }

    function toggleProductSelection(event, index) {
        if (!event) return;
        event.stopPropagation();
        if (index >= 0 && index < products.length) {
            products[index].checked = !products[index].checked;
            updateSelectAllCheckbox();
            updateActionButtonsState();
        }
    }

    function updateActionButtonsState() {
        const hasSelection = products.some(p => p.checked);
        const selectedProducts = products.filter(p => p.checked);
        const hasValidProducts = selectedProducts.some(p => p.stock > 0);

        const businessBtn = document.getElementById('businessActionBtn');
        const startBusinessBtn = document.getElementById('startBusinessBtn');
        const stopBusinessBtn = document.getElementById('stopBusinessBtn');

        if (businessBtn) {
            businessBtn.disabled = !hasSelection;
            if (!hasSelection) {
                businessBtn.setAttribute('title', 'Vui lòng chọn sản phẩm');
            } else {
                businessBtn.removeAttribute('title');
            }
        }

        if (startBusinessBtn) {
            startBusinessBtn.classList.toggle('disabled', !hasValidProducts);
            if (!hasValidProducts) {
                startBusinessBtn.setAttribute('title', 'Không thể mở kinh doanh cho sản phẩm hết hàng');
            } else {
                startBusinessBtn.removeAttribute('title');
            }
        }

        if (stopBusinessBtn) {
            stopBusinessBtn.classList.toggle('disabled', !hasSelection);
        }

        const deleteBtn = document.getElementById('deleteSelectedBtn');
        if (deleteBtn) {
            deleteBtn.disabled = !hasSelection;
            if (!hasSelection) {
                deleteBtn.setAttribute('title', 'Vui lòng chọn sản phẩm');
            } else {
                deleteBtn.removeAttribute('title');
            }
        }
    }

    function startBusinessSelected() {
        const selectedProducts = products.filter(p => p.checked);
        if (selectedProducts.length === 0) {
            alert('Vui lòng chọn ít nhất một sản phẩm!');
            return;
        }

        const validProducts = selectedProducts.filter(p => p.stock > 0);
        if (validProducts.length === 0) {
            alert('Không thể mở kinh doanh cho sản phẩm hết hàng!');
            return;
        }

        const invalidCount = selectedProducts.length - validProducts.length;
        let confirmMessage = `Bạn có chắc muốn mở kinh doanh ${validProducts.length} sản phẩm đã chọn?`;
        if (invalidCount > 0) {
            confirmMessage += `\n(${invalidCount} sản phẩm hết hàng sẽ không được thay đổi trạng thái)`;
        }

        if (!confirm(confirmMessage)) return;

        fetch('${pageContext.request.contextPath}/products/startBusiness', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify(validProducts.map(p => p.code))
        }).then(response => response.json())
            .then(data => {
                if (data.success) {
                    validProducts.forEach(p => {
                        p.business = '<span class="badge bg-success">Kinh doanh</span>';
                    });
                    renderProductTable();
                    alert(`Đã mở kinh doanh ${validProducts.length} sản phẩm!`);
                } else {
                    alert('Có lỗi xảy ra khi mở kinh doanh!');
                }
            });
    }

    function stopBusinessSelected() {
        const selectedProducts = products.filter(p => p.checked);
        if (selectedProducts.length === 0) {
            alert('Vui lòng chọn ít nhất một sản phẩm!');
            return;
        }

        if (!confirm(`Bạn có chắc muốn ngừng kinh doanh ${selectedProducts.length} sản phẩm đã chọn?`)) {
            return;
        }

        fetch('${pageContext.request.contextPath}/products/stopBusiness', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify(selectedProducts.map(p => p.code))
        }).then(response => response.json())
            .then(data => {
                if (data.success) {
                    selectedProducts.forEach(p => {
                        p.business = '<span class="badge bg-danger">Ngừng KD</span>';
                    });
                    renderProductTable();
                    alert(`Đã ngừng kinh doanh ${selectedProducts.length} sản phẩm!`);
                } else {
                    alert('Có lỗi xảy ra khi ngừng kinh doanh!');
                }
            });
    }
</script>
<style>
    .card { border-radius: 16px !important; box-shadow: 0 2px 16px rgba(0,0,0,0.06) !important; border: none !important; }
    .table { border-radius: 12px !important; overflow: hidden; background: #fff; }
    .table thead th { background: #f6f8fa !important; font-weight: 600; font-size: 1.05rem; }
    .table tbody tr { transition: background 0.2s; }
    .table tbody tr:hover { background: #f0f6ff; }
    .badge.bg-success { background: #22c55e !important; }
    .badge.bg-danger { background: #ef4444 !important; }
    .btn-primary { background: #2563eb !important; border: none; }
    .btn-success { background: #22c55e !important; border: none; }
    .btn-outline-secondary { border-radius: 8px; }
    .input-group-text { background: #fff; border-right: 0; }
    .form-control, .form-select { border-radius: 8px !important; }
    .product-detail-row { display: none; background: #fff; transition: all 0.3s ease; max-height: 0; overflow: hidden; }
    .product-detail-row.show { display: table-row; max-height: 1000px; }
    .product-detail-row td { padding: 0 !important; }
    .product-detail-row .product-detail-content { padding: 1.5rem; border-top: 1px solid #eee; transform: translateY(-100%); opacity: 0; transition: all 0.3s ease; }
    .product-detail-row.show .product-detail-content { transform: translateY(0); opacity: 1; }
    .product-detail-row .product-detail-content .row { margin: 0; }
    .product-detail-row .product-detail-content img { max-height: 200px; object-fit: contain; border-radius: 8px; box-shadow: 0 2px 8px rgba(0,0,0,0.1); }
    .detail-section { background: #f8fafc; padding: 1rem; border-radius: 12px; margin-bottom: 1rem; border: 1px solid #e5e7eb; transition: all 0.2s ease; }
    .detail-section:hover { box-shadow: 0 4px 12px rgba(0,0,0,0.05); transform: translateY(-2px); }
    .detail-section h5 { color: #2563eb; margin-bottom: 1rem; font-weight: 600; }
    .detail-label { font-weight: 600; color: #4b5563; margin-bottom: 0.5rem; }
    .detail-value { color: #1f2937; }
    .selected-row { background: #f0f6ff !important; }
    .star-header { pointer-events: none; opacity: 0.7; }
    .star-outline { color: #ffc107; cursor: pointer; transition: color 0.2s; }
    .star-outline.text-warning { color: #ffc107 !important; }
    .header-star { cursor: pointer; font-size: 1.1em; transition: transform 0.2s; }
    .header-star:hover { transform: scale(1.2); }
    .product-images { display: grid; grid-template-columns: repeat(2, 1fr); gap: 1rem; margin-bottom: 1rem; }
    .product-image-item { position: relative; aspect-ratio: 1; border-radius: 8px; overflow: hidden; border: 2px solid #e5e7eb; }
    .product-image-item img { width: 100%; height: 100%; object-fit: cover; }
    .product-image-item .remove-image { position: absolute; top: 0.5rem; right: 0.5rem; background: rgba(239, 68, 68, 0.9); color: white; border: none; border-radius: 50%; width: 24px; height: 24px; font-size: 14px; cursor: pointer; display: flex; align-items: center; justify-content: center; }
    .image-upload-placeholder { border: 2px dashed #e5e7eb; border-radius: 8px; display: flex; align-items: center; justify-content: center; cursor: pointer; background: #f9fafb; aspect-ratio: 1; transition: all 0.2s; }
    .image-upload-placeholder:hover { border-color: #2563eb; background: #f0f6ff; }
    .date-range-inputs { display: flex; gap: 10px; margin-left: 10px; flex: 1; }
    .date-input-group { display: flex; align-items: center; gap: 8px; background: #fff; padding: 0 10px; border: 1px solid #dee2e6; border-radius: 6px; flex: 1; }
    .date-input-group label { color: #6c757d; font-size: 0.9rem; margin-bottom: 0; white-space: nowrap; }
    .date-input-group input[type="date"] { border: none; padding: 6px 0; flex: 1; min-width: 120px; }
    .date-input-group input[type="date"]:focus { outline: none; box-shadow: none; }
    .dropdown-toggle { border-radius: 6px; padding: 8px 12px; display: flex; align-items: center; gap: 6px; white-space: nowrap; }
    .dropdown-toggle i { font-size: 1.1rem; }
    .dropdown-menu { padding: 8px 0; border-radius: 8px; box-shadow: 0 2px 12px rgba(0,0,0,0.1); }
    .dropdown-item { padding: 8px 16px; }
    .dropdown-item:hover { background-color: #f0f6ff; }
    .dropdown-divider { margin: 4px 0; }
    .badge { font-size: 0.875rem; padding: 0.35em 0.65em; font-weight: 500; }
    .table td { vertical-align: middle; }
</style>