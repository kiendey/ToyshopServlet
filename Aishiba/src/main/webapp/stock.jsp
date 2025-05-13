<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<main id="main" class="main">
    <div class="pagetitle">
        <h1>Nhập hàng</h1>
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                <li class="breadcrumb-item">Giao dịch</li>
                <li class="breadcrumb-item active">Nhập hàng</li>
            </ol>
        </nav>
    </div>

    <section class="section">
        <div class="card">
            <div class="card-body">
                <h5 class="card-title fs-4 text-primary">
                    Danh sách phiếu nhập hàng
                </h5>
                <div class="d-flex justify-content-between align-items-center mb-3">
                    <!-- Thanh tìm kiếm -->
                    <div class="search-box flex-grow-1">
                        <div class="input-group">
                  <span class="input-group-text bg-light">
                    <i class="bi bi-search"></i>
                  </span>
                            <input
                                    type="text"
                                    class="form-control"
                                    id="searchInput"
                                    placeholder="Theo mã phiếu nhập, nhà cung cấp, thời gian,..."
                            />
                            <button
                                    class="btn btn-outline-secondary dropdown-toggle"
                                    type="button"
                                    data-bs-toggle="dropdown"
                            >
                                <i class="bi bi-funnel"></i>
                            </button>
                        </div>
                    </div>

                    <!-- Các nút chức năng -->
                    <div class="d-flex gap-2">
                        <button class="btn btn-success">
                            <i class="bi bi-plus-lg"></i> Nhập hàng
                        </button>
                        <button class="btn btn-primary">
                            <i class="bi bi-download"></i> Xuất file
                        </button>
                        <div class="btn-group">
                            <button
                                    class="btn btn-light dropdown-toggle"
                                    data-bs-toggle="dropdown"
                            >
                                <i class="bi bi-three-dots"></i>
                            </button>
                        </div>
                    </div>
                </div>

                <!-- Bảng danh sách -->
                <div class="table-responsive">
                    <table class="table table-hover align-middle">
                        <thead class="bg-light">
                        <tr>
                            <th width="40">
                                <input type="checkbox" class="form-check-input" />
                            </th>
                            <th width="40">
                                <i class="bi bi-star header-star"></i>
                            </th>
                            <th>Mã nhập hàng</th>
                            <th>Thời gian</th>
                            <th>Nhà cung cấp</th>
                            <th class="text-end" width="160">Cần trả NCC</th>
                            <th width="220" style="padding-left: 40px">Trạng thái</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td><input type="checkbox" class="form-check-input" /></td>
                            <td><i class="bi bi-star text-warning"></i></td>
                            <td><a href="#" class="text-primary">PN000046</a></td>
                            <td>15/04/2025 08:34</td>
                            <td>Đại lý Hồng Phúc</td>
                            <td class="text-end">1,500,000</td>
                            <td style="padding-left: 30px">
                                <span class="badge bg-success">Đã nhập hàng</span>
                            </td>
                        </tr>

                        <tr>
                            <td><input type="checkbox" class="form-check-input" /></td>
                            <td><i class="bi bi-star text-warning"></i></td>
                            <td><a href="#" class="text-primary">PN000045</a></td>
                            <td>14/04/2025 15:30</td>
                            <td>Công ty Pharmedic</td>
                            <td class="text-end">2,800,000</td>
                            <td style="padding-left: 30px">
                      <span class="badge bg-warning text-dark"
                      >Chờ nhập hàng</span
                      >
                            </td>
                        </tr>

                        <tr>
                            <td><input type="checkbox" class="form-check-input" /></td>
                            <td><i class="bi bi-star text-warning"></i></td>
                            <td><a href="#" class="text-primary">PN000044</a></td>
                            <td>13/04/2025 10:15</td>
                            <td>Cửa hàng Đại Việt</td>
                            <td class="text-end">3,200,000</td>
                            <td style="padding-left: 30px">
                                <span class="badge bg-info">Đang nhập hàng</span>
                            </td>
                        </tr>

                        <!-- Continue with similar pattern for remaining rows -->
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </section>
</main>
<style>
    .badge {
        padding: 0.5em 0.8em;
        font-weight: 500;
        font-size: 0.875rem;
    }

    .badge.bg-success {
        background-color: #198754 !important;
    }

    .badge.bg-warning {
        background-color: #ffc107 !important;
        color: #000 !important;
    }

    .badge.bg-info {
        background-color: #0dcaf0 !important;
    }

    .badge.bg-danger {
        background-color: #dc3545 !important;
    }

    .badge.bg-secondary {
        background-color: #6c757d !important;
    }

    /* Search box styling */
    .search-box {
        max-width: 650px; /* Reduced from default/full width */
        margin-right: 20px;
    }

    .search-box .input-group {
        width: 100%;
    }

    .search-box .form-control {
        height: 38px;
    }

    .search-box .input-group-text,
    .search-box .btn {
        background-color: transparent;
        border-color: #dee2e6;
    }

    .search-box .btn:hover {
        background-color: #f8f9fa;
    }

    /* Modal styling */
    .modal-xl {
        max-width: 850px;
    }

    /* Table numbers */
    .table td.text-end,
    .table th.text-end {
        font-variant-numeric: tabular-nums;
    }

    /* Action buttons */
    .btn i {
        margin-right: 5px;
    }

    /* Info labels */
    .fw-bold {
        color: #6c757d;
    }

    /* Hover effects */
    .bi-three-dots-vertical {
        cursor: pointer;
    }

    .bi-three-dots-vertical:hover {
        color: #0d6efd;
    }

    /* Status badge colors */
    .badge.bg-waiting {
        background-color: #ffc107 !important;
        color: #000 !important;
    }

    .badge.bg-confirmed {
        background-color: #0dcaf0 !important;
        color: #fff !important;
    }

    .badge.bg-importing {
        background-color: #0d6efd !important;
        color: #fff !important;
    }

    .badge.bg-completed {
        background-color: #198754 !important;
        color: #fff !important;
    }

    .badge.bg-cancelled {
        background-color: #dc3545 !important;
        color: #fff !important;
    }

    /* Status select colors */
    .form-select option[value="waiting"] {
        background-color: #fff3cd;
        color: #000;
    }

    .form-select option[value="confirmed"] {
        background-color: #cff4fc;
        color: #000;
    }

    .form-select option[value="importing"] {
        background-color: #cfe2ff;
        color: #000;
    }

    .form-select option[value="completed"] {
        background-color: #d1e7dd;
        color: #000;
    }

    .form-select option[value="cancelled"] {
        background-color: #f8d7da;
        color: #000;
    }

    /* Status select styling */
    .form-select option:checked {
        background-color: var(--status-bg);
        color: var(--status-text);
    }

    #statusSelect {
        color: var(--status-text);
        background-color: var(--status-bg);
    }

    #statusSelect option[value="waiting"] {
        --status-bg: #fff3cd;
        --status-text: #664d03;
    }

    #statusSelect option[value="confirmed"] {
        --status-bg: #cff4fc;
        --status-text: #055160;
    }

    #statusSelect option[value="importing"] {
        --status-bg: #cfe2ff;
        --status-text: #084298;
    }

    #statusSelect option[value="completed"] {
        --status-bg: #d1e7dd;
        --status-text: #0f5132;
    }

    #statusSelect option[value="cancelled"] {
        --status-bg: #f8d7da;
        --status-text: #842029;
    }
    .header-star,
    .bi-star,
    .bi-star-fill {
        color: #ffc107;
        cursor: pointer;
        transition: all 0.2s;
        -webkit-text-stroke: 0.25px #ffc107;
        user-select: none;
    }

    .header-star:hover,
    .bi-star:hover,
    .bi-star-fill:hover {
        transform: scale(1.2);
    }

    .bi-star-fill {
        color: #ffc107 !important;
    }

    td.text-center {
        cursor: default;
    }
</style>
<!-- ======= Script ======= -->
<script>
    document.addEventListener("DOMContentLoaded", function () {
        // Xử lý checkbox chọn tất cả
        const selectAll = document.querySelector("thead .form-check-input");
        const checkboxes = document.querySelectorAll("tbody .form-check-input");

        selectAll.addEventListener("change", function () {
            checkboxes.forEach((checkbox) => {
                checkbox.checked = this.checked;
            });
        });

        // Cập nhật trạng thái "chọn tất cả"
        checkboxes.forEach((checkbox) => {
            checkbox.addEventListener("change", function () {
                const allChecked = Array.from(checkboxes).every((cb) => cb.checked);
                const someChecked = Array.from(checkboxes).some((cb) => cb.checked);

                selectAll.checked = allChecked;
                selectAll.indeterminate = someChecked && !allChecked;
            });
        });

        // Xử lý tìm kiếm
        const searchInput = document.getElementById("searchInput");
        const filterDropdown = document.querySelector(".dropdown-toggle");
        const tableRows = document.querySelectorAll("tbody tr");

        // Hàm tìm kiếm
        function searchTable() {
            const searchTerm = searchInput.value.toLowerCase();

            tableRows.forEach((row) => {
                const code = row
                    .querySelector("a.text-primary")
                    .textContent.toLowerCase();
                const supplier = row
                    .querySelector("td:nth-child(5)")
                    .textContent.toLowerCase();
                const status = row
                    .querySelector(".badge")
                    .textContent.toLowerCase();
                const date = row
                    .querySelector("td:nth-child(4)")
                    .textContent.toLowerCase();

                const matchesSearch =
                    code.includes(searchTerm) ||
                    supplier.includes(searchTerm) ||
                    status.includes(searchTerm) ||
                    date.includes(searchTerm);

                row.style.display = matchesSearch ? "" : "none";
            });
        }
        // Xử lý sự kiện tìm kiếm
        searchInput.addEventListener("input", searchTable);

        // Fix click handler for order codes - replace both existing click handlers
        document.querySelectorAll("td a.text-primary").forEach((link) => {
            link.addEventListener("click", function (e) {
                e.preventDefault();

                // Get data from clicked row
                const row = this.closest("tr");
                const orderData = {
                    id: this.textContent,
                    date: row.cells[3].textContent,
                    supplier: row.cells[4].textContent,
                    amount: row.cells[5].textContent,
                    status: row.querySelector(".badge").textContent,
                    statusClass: row.querySelector(".badge").className,
                };

                // Get and update modal content
                const modal = document.getElementById("orderDetailModal");

                // Update fields
                modal.querySelector('input[value="HD000045"]').value = orderData.id;
                modal.querySelector('input[value="14/04/2025 08:33"]').value =
                    orderData.date;
                modal.querySelector('input[value="Cửa hàng Đại Việt"]').value =
                    orderData.supplier;

                // Update status select
                const statusSelect = modal.querySelector("select");
                Array.from(statusSelect.options).forEach((option) => {
                    if (option.text === orderData.status) {
                        option.selected = true;
                    }
                });

                // Show modal
                const bsModal = new bootstrap.Modal(modal);
                bsModal.show();
            });
        });

        // Fix click handler for showing order details
        document.querySelectorAll("td a.text-primary").forEach((link) => {
            link.addEventListener("click", function (e) {
                e.preventDefault();

                // Get data from clicked row
                const row = this.closest("tr");
                const orderData = {
                    id: this.textContent,
                    date: row.cells[3].textContent,
                    supplier: row.cells[4].textContent,
                    amount: row.cells[5].textContent,
                    status: row.querySelector(".badge").textContent,
                    statusClass: row.querySelector(".badge").className,
                };

                // Get modal and show it
                const modal = new bootstrap.Modal(
                    document.getElementById("orderDetailModal")
                );

                // Update modal content before showing
                updateModalContent(orderData);

                modal.show();
            });
        });

        // Helper function to update modal content
        function updateModalContent(data) {
            const modal = document.getElementById("orderDetailModal");

            // Update header info
            modal.querySelector(
                ".modal-body .mb-3:nth-child(1) span"
            ).textContent = data.id;
            modal.querySelector(
                ".modal-body .mb-3:nth-child(2) span"
            ).textContent = data.date;
            modal.querySelector(".modal-body .mb-3:nth-child(3) a").textContent =
                data.supplier;

            // Update status badge
            const badge = modal.querySelector(".badge");
            badge.textContent = data.status;
            badge.className = data.statusClass;

            // Update amounts in summary
            const totalAmount = modal.querySelector(
                "tr:nth-child(5) td.text-end"
            );
            totalAmount.textContent = data.amount;
        }
    });
</script>
<script>
    document.addEventListener("DOMContentLoaded", function () {
        // Lấy ngôi sao ở header và tất cả ngôi sao trong tbody
        const headerStar = document.querySelector("thead th:nth-child(2)");
        const rowStars = document.querySelectorAll(
            "tbody tr td:nth-child(2) i"
        );

        // Thêm ngôi sao vào header nếu chưa có
        if (!headerStar.querySelector("i")) {
            headerStar.innerHTML =
                '<i class="bi bi-star text-warning header-star"></i>';
        }

        // Lấy reference tới ngôi sao header
        const headerStarIcon = headerStar.querySelector("i");

        // Xử lý click vào ngôi sao header
        headerStarIcon.addEventListener("click", function () {
            const isHeaderStarFilled = this.classList.contains("bi-star-fill");

            // Toggle star trong header
            if (isHeaderStarFilled) {
                this.classList.remove("bi-star-fill");
                this.classList.add("bi-star");
            } else {
                this.classList.remove("bi-star");
                this.classList.add("bi-star-fill");
            }

            // Toggle tất cả stars trong tbody
            rowStars.forEach((star) => {
                if (isHeaderStarFilled) {
                    star.classList.remove("bi-star-fill");
                    star.classList.add("bi-star");
                } else {
                    star.classList.remove("bi-star");
                    star.classList.add("bi-star-fill");
                }

                // Lưu trạng thái vào localStorage
                const orderId = star.closest("tr").querySelector("a").textContent;
                localStorage.setItem(`favorite_${orderId}`, !isHeaderStarFilled);
            });
        });

        // Xử lý click cho từng ngôi sao trong tbody
        rowStars.forEach((star) => {
            star.addEventListener("click", function (e) {
                e.preventDefault();

                // Toggle class của ngôi sao được click
                if (this.classList.contains("bi-star-fill")) {
                    this.classList.remove("bi-star-fill");
                    this.classList.add("bi-star");
                } else {
                    this.classList.remove("bi-star");
                    this.classList.add("bi-star-fill");
                }

                // Lưu trạng thái vào localStorage
                const orderId = this.closest("tr").querySelector("a").textContent;
                const isFavorite = this.classList.contains("bi-star-fill");
                localStorage.setItem(`favorite_${orderId}`, isFavorite);

                // Cập nhật trạng thái header star
                updateHeaderStar();
            });

            // Khôi phục trạng thái từ localStorage
            const orderId = star.closest("tr").querySelector("a").textContent;
            const isFavorite =
                localStorage.getItem(`favorite_${orderId}`) === "true";
            if (isFavorite) {
                star.classList.remove("bi-star");
                star.classList.add("bi-star-fill");
            }
        });

        // Hàm cập nhật trạng thái header star
        function updateHeaderStar() {
            const allStarsFilled = Array.from(rowStars).every((star) =>
                star.classList.contains("bi-star-fill")
            );

            if (allStarsFilled) {
                headerStarIcon.classList.remove("bi-star");
                headerStarIcon.classList.add("bi-star-fill");
            } else {
                headerStarIcon.classList.remove("bi-star-fill");
                headerStarIcon.classList.add("bi-star");
            }
        }

        // Cập nhật trạng thái header star khi load trang
        updateHeaderStar();
    });
</script>

<script>
    // Add after existing script
    document.addEventListener("DOMContentLoaded", function () {
        // Chỉ chọn các link mã đơn hàng (có class text-primary trong cột mã hóa đơn)
        document
            .querySelectorAll("td.text-start a.text-primary")
            .forEach((link) => {
                link.addEventListener("click", (e) => {
                    e.preventDefault();
                    const modal = new bootstrap.Modal(
                        document.getElementById("orderDetailModal")
                    );
                    modal.show();
                });
            });
    });

    document.addEventListener("DOMContentLoaded", function () {
        // Handle status change
        const statusSelect = document.getElementById("statusSelect");
        statusSelect.addEventListener("change", function () {
            const selectedOption = this.options[this.selectedIndex];
            const status = selectedOption.textContent;
            const value = selectedOption.value;

            // Update badge in table
            const currentRow = document
                .querySelector(`td a[data-id="${currentOrderId}"]`)
                .closest("tr");
            const badge = currentRow.querySelector(".badge");

            // Remove old classes and add new ones
            badge.className = `badge bg-${value}`;
            badge.textContent = status;

            // Optional: Add confirmation for certain status changes
            if (value === "cancelled") {
                if (!confirm("Bạn có chắc muốn hủy đơn nhập này?")) {
                    this.value = this.getAttribute("data-original-value");
                    return;
                }
            }

            // Store original value for cancellation
            this.setAttribute("data-original-value", value);
        });
    });

    // Add to your existing status change handler
    document.addEventListener("DOMContentLoaded", function () {
        const statusSelect = document.getElementById("statusSelect");

        // Set initial colors
        updateSelectStyle(statusSelect);

        statusSelect.addEventListener("change", function () {
            updateSelectStyle(this);
        });

        function updateSelectStyle(select) {
            const selectedOption = select.options[select.selectedIndex];
            const value = selectedOption.value;

            // Set CSS variables for the select element
            select.style.setProperty(
                "--status-bg",
                getComputedStyle(selectedOption).backgroundColor
            );
            select.style.setProperty(
                "--status-text",
                getComputedStyle(selectedOption).color
            );
        }
    });

    document.addEventListener("DOMContentLoaded", function () {
        // Get modal and buttons
        const modal = document.getElementById("orderDetailModal");
        const openButton = modal.querySelector(".btn-success");
        const saveButton = modal.querySelector(".btn-primary");
        const returnButton = modal.querySelector(".btn-info");
        const printButton = modal.querySelector(".btn-secondary");
        const cancelButton = modal.querySelector(".btn-danger");

        // Mở phiếu button
        openButton.addEventListener("click", function () {
            const orderId = modal.querySelector('input[value^="HD"]').value;
            const status = modal.querySelector("#statusSelect").value;

            if (status === "completed" || status === "cancelled") {
                alert("Không thể mở phiếu đã hoàn thành hoặc đã hủy!");
                return;
            }

            // Here you would redirect to edit page
            alert(`Mở phiếu nhập ${orderId} để chỉnh sửa`);
        });

        // Lưu button
        saveButton.addEventListener("click", function () {
            const status = modal.querySelector("#statusSelect").value;

            if (status === "cancelled") {
                alert("Không thể lưu phiếu đã hủy!");
                return;
            }

            // Validate changes
            if (confirm("Bạn có chắc muốn lưu các thay đổi?")) {
                alert("Đã lưu thay đổi thành công!");
                // Here you would save changes to database
            }
        });

        // Trả hàng nhập button
        returnButton.addEventListener("click", function () {
            const status = modal.querySelector("#statusSelect").value;

            if (status !== "completed") {
                alert("Chỉ có thể trả hàng cho phiếu đã nhập hoàn tất!");
                return;
            }

            if (confirm("Bạn có chắc muốn tạo phiếu trả hàng nhập?")) {
                // Here you would create return order
                alert("Đã tạo phiếu trả hàng nhập mới!");
            }
        });

        // In đơn button
        printButton.addEventListener("click", function () {
            const orderId = modal.querySelector('input[value^="HD"]').value;

            // Here you would generate and print document
            alert(`Đang in phiếu nhập ${orderId}...`);
            window.print();
        });

        // Hủy đơn button
        cancelButton.addEventListener("click", function () {
            const status = modal.querySelector("#statusSelect").value;

            if (status === "completed") {
                alert("Không thể hủy phiếu đã hoàn thành!");
                return;
            }

            if (confirm("Bạn có chắc muốn hủy phiếu nhập này?")) {
                const reason = prompt("Vui lòng nhập lý do hủy:");
                if (reason) {
                    // Here you would update order status
                    modal.querySelector("#statusSelect").value = "cancelled";
                    alert("Đã hủy phiếu nhập!");
                }
            }
        });
    });
</script>

<script>
    document.addEventListener("DOMContentLoaded", function () {
        // Get buttons
        const importButton = document.querySelector(".btn.btn-success"); // Nhập hàng button
        const exportButton = document.querySelector(".btn.btn-primary"); // Xuất file button
        const moreButton = document.querySelector(".btn-group .btn.btn-light"); // More options button

        // Nhập hàng button
        importButton.addEventListener("click", function () {
            // Create new import form modal
            const formHtml = `
                  <div class="modal fade" id="newImportModal">
                      <div class="modal-dialog">
                          <div class="modal-content">
                              <div class="modal-header">
                                  <h5 class="modal-title">Tạo phiếu nhập mới</h5>
                                  <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                              </div>
                              <div class="modal-body">
                                  <div class="mb-3">
                                      <label class="form-label">Nhà cung cấp</label>
                                      <select class="form-select">
                                          <option>Chọn nhà cung cấp</option>
                                          <option>Đại lý Hồng Phúc</option>
                                          <option>Công ty Pharmedic</option>
                                          <option>Cửa hàng Đại Việt</option>
                                      </select>
                                  </div>
                                  <div class="mb-3">
                                      <label class="form-label">Chi nhánh</label>
                                      <select class="form-select">
                                          <option>Chi nhánh trung tâm</option>
                                      </select>
                                  </div>
                                  <div class="mb-3">
                                      <label class="form-label">Ghi chú</label>
                                      <textarea class="form-control" rows="3"></textarea>
                                  </div>
                              </div>
                              <div class="modal-footer">
                                  <button class="btn btn-secondary" data-bs-dismiss="modal">Đóng</button>
                                  <button class="btn btn-primary" onclick="createNewImport()">Tạo phiếu</button>
                              </div>
                          </div>
                      </div>
                  </div>
              `;
            document.body.insertAdjacentHTML("beforeend", formHtml);
            const modal = new bootstrap.Modal(
                document.getElementById("newImportModal")
            );
            modal.show();

        });

        // More options button


    });
    // Nút xuất file
    document.addEventListener("DOMContentLoaded", function() {
        const exportButton = document.querySelector(".btn.btn-primary");

        // Sửa lại text và icon của button
        exportButton.innerHTML = '<i class="bi bi-file-excel me-2"></i>Xuất Excel';


        // Thêm sự kiện click cho nút xuất Excel
        exportButton.addEventListener("click", function() {
            try {
                // Lấy dữ liệu từ bảng
                const tableData = [];
                const headers = ["Mã nhập hàng", "Thời gian", "Nhà cung cấp", "Cần trả NCC", "Trạng thái"];

                // Lấy tất cả các dòng từ tbody
                const rows = document.querySelectorAll("tbody tr");

                rows.forEach(row => {
                    // Kiểm tra row có hiển thị không
                    if (row.style.display !== 'none') {
                        const columns = row.querySelectorAll('td');
                        if (columns.length >= 7) { // Đảm bảo đủ số cột
                            const rowData = {
                                code: columns[2].querySelector('a')?.textContent?.trim() || '',
                                date: columns[3].textContent?.trim() || '',
                                supplier: columns[4].textContent?.trim() || '',
                                amount: columns[5].textContent?.trim() || '',
                                status: columns[6].querySelector('.badge')?.textContent?.trim() || ''
                            };
                            tableData.push(rowData);
                        }
                    }
                });

                // Kiểm tra có dữ liệu không
                if (tableData.length === 0) {
                    alert('Không có dữ liệu để xuất!');
                    return;
                }

                // Tạo nội dung file Excel với định dạng UTF-8
                let csvContent = "\uFEFF"; // Thêm BOM để Excel hiển thị tiếng Việt đúng
                csvContent += headers.join(",") + "\n";

                tableData.forEach(row => {
                    const rowArray = [row.code, row.date, row.supplier, row.amount, row.status];
                    csvContent += rowArray.join(",") + "\n";
                });

                // Tạo blob với encoding UTF-8
                const blob = new Blob([csvContent], {
                    type: "application/vnd.ms-excel;charset=utf-8"
                });

                // Tạo link download
                const url = window.URL.createObjectURL(blob);
                const downloadLink = document.createElement("a");
                const date = new Date();
                const fileName = `Danh_sach_nhap_hang.xls`;

                downloadLink.href = url;
                downloadLink.download = fileName;

                // Trigger click để tải file
                document.body.appendChild(downloadLink);
                downloadLink.click();

                // Cleanup
                document.body.removeChild(downloadLink);
                window.URL.revokeObjectURL(url);

            } catch (error) {
                console.error("Lỗi xuất Excel:", error);
                alert("Có lỗi xảy ra khi xuất file Excel!");
            }
        });
    });

</script>
<script>
    document.addEventListener("DOMContentLoaded", function() {
        // Lấy reference đến nút More options và dropdown menu
        const moreButton = document.querySelector(".btn-group .btn.btn-light");

        // Tạo dropdown menu cho More options
        const moreOptions = `
    <div class="dropdown-menu">
      <a class="dropdown-item" href="#" data-action="refresh">
        <i class="bi bi-arrow-clockwise me-2"></i>Làm mới
      </a>
      <a class="dropdown-item" href="#" data-action="filter">
        <i class="bi bi-funnel me-2"></i>Lọc nâng cao
      </a>
      <div class="dropdown-divider"></div>
      <a class="dropdown-item" href="#" data-action="settings">
        <i class="bi bi-gear me-2"></i>Cài đặt hiển thị
      </a>
    </div>
  `;

        // Thêm dropdown menu vào sau nút
        moreButton.insertAdjacentHTML("afterend", moreOptions);

        // Xử lý sự kiện click cho các options
        const dropdownMenu = moreButton.nextElementSibling;
        dropdownMenu.addEventListener("click", function(e) {
            e.preventDefault();
            const action = e.target.closest(".dropdown-item")?.dataset.action;

            if (!action) return;

            switch(action) {
                case "refresh":
                    handleRefresh();
                    break;
                case "filter":
                    showAdvancedFilter();
                    break;
                case "settings":
                    showDisplaySettings();
                    break;
            }
        });

        // Hàm xử lý làm mới dữ liệu
        function handleRefresh() {
            // Hiển thị loading spinner
            const tableBody = document.querySelector("tbody");
            tableBody.innerHTML = `
      <tr>
        <td colspan="7" class="text-center">
          <div class="spinner-border text-primary" role="status">
            <span class="visually-hidden">Đang tải...</span>
          </div>
        </td>
      </tr>
    `;

            // Giả lập API call
            setTimeout(() => {
                location.reload();
            }, 100);
        }

        // Hàm hiển thị form lọc nâng cao
        function showAdvancedFilter() {
            const filterModal = `
      <div class="modal fade" id="advancedFilterModal">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title">Lọc nâng cao</h5>
              <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
            </div>
            <div class="modal-body">
              <div class="mb-3">
                <label class="form-label">Thời gian</label>
                <div class="input-group">
                  <input type="date" class="form-control" id="startDate">
                  <span class="input-group-text">đến</span>
                  <input type="date" class="form-control" id="endDate">
                </div>
              </div>
              <div class="mb-3">
                <label class="form-label">Trạng thái</label>
                <select class="form-select" multiple>
                  <option value="waiting">Chờ nhập hàng</option>
                  <option value="importing">Đang nhập hàng</option>
                  <option value="completed">Đã nhập hàng</option>
                  <option value="cancelled">Đã hủy</option>
                </select>
              </div>
              <div class="mb-3">
                <label class="form-label">Nhà cung cấp</label>
                <select class="form-select" multiple>
                  <option>Đại lý Hồng Phúc</option>
                  <option>Công ty Pharmedic</option>
                  <option>Cửa hàng Đại Việt</option>
                </select>
              </div>
            </div>
            <div class="modal-footer">
              <button class="btn btn-secondary" data-bs-dismiss="modal">Đóng</button>
              <button class="btn btn-primary" onclick="applyFilter()">Áp dụng</button>
            </div>
          </div>
        </div>
      </div>
    `;

            // Thêm modal vào DOM nếu chưa có
            if (!document.getElementById("advancedFilterModal")) {
                document.body.insertAdjacentHTML("beforeend", filterModal);
            }

            // Hiển thị modal
            const modal = new bootstrap.Modal(document.getElementById("advancedFilterModal"));
            modal.show();
        }

        // Hàm hiển thị cài đặt hiển thị
        function showDisplaySettings() {
            const settingsModal = `
      <div class="modal fade" id="displaySettingsModal">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title">Cài đặt hiển thị</h5>
              <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
            </div>
            <div class="modal-body">
              <div class="mb-3">
                <label class="form-label">Số dòng hiển thị</label>
                <select class="form-select">
                  <option>10</option>
                  <option>25</option>
                  <option>50</option>
                  <option>100</option>
                </select>
              </div>
              <div class="mb-3">
                <label class="form-label">Cột hiển thị</label>
                <div class="form-check">
                  <input type="checkbox" class="form-check-input" id="showCode" checked>
                  <label class="form-check-label" for="showCode">Mã nhập hàng</label>
                </div>
                <div class="form-check">
                  <input type="checkbox" class="form-check-input" id="showDate" checked>
                  <label class="form-check-label" for="showDate">Thời gian</label>
                </div>
                <div class="form-check">
                  <input type="checkbox" class="form-check-input" id="showSupplier" checked>
                  <label class="form-check-label" for="showSupplier">Nhà cung cấp</label>
                </div>
                <div class="form-check">
                  <input type="checkbox" class="form-check-input" id="showAmount" checked>
                  <label class="form-check-label" for="showAmount">Cần trả NCC</label>
                </div>
                <div class="form-check">
                  <input type="checkbox" class="form-check-input" id="showStatus" checked>
                  <label class="form-check-label" for="showStatus">Trạng thái</label>
                </div>
              </div>
            </div>
            <div class="modal-footer">
              <button class="btn btn-secondary" data-bs-dismiss="modal">Đóng</button>
              <button class="btn btn-primary" onclick="applySettings()">Áp dụng</button>
            </div>
          </div>
        </div>
      </div>
    `;

            // Thêm modal vào DOM nếu chưa có
            if (!document.getElementById("displaySettingsModal")) {
                document.body.insertAdjacentHTML("beforeend", settingsModal);
            }

            // Hiển thị modal
            const modal = new bootstrap.Modal(document.getElementById("displaySettingsModal"));
            modal.show();
        }
    });
</script>
// Modal
<div class="modal fade" id="orderDetailModal" tabindex="-1">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Chi tiết đơn nhập</h5>
                <button
                        type="button"
                        class="btn-close"
                        data-bs-dismiss="modal"
                        aria-label="Close"
                ></button>
            </div>
            <div class="modal-body">
                <div class="row g-4">
                    <!-- Left Column -->
                    <div class="col-md-6">
                        <div class="mb-3">
                            <label class="form-label">Mã đơn nhập:</label>
                            <input
                                    type="text"
                                    class="form-control"
                                    value="HD000045"
                                    readonly
                            />
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Thời gian:</label>
                            <div class="input-group">
                                <input
                                        type="text"
                                        class="form-control"
                                        value="14/04/2025 08:33"
                                        readonly
                                />
                            </div>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Nhà cung cấp:</label>
                            <input
                                    type="text"
                                    class="form-control"
                                    value="Cửa hàng Đại Việt"
                                    readonly
                            />
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Người tạo: </label>
                            <input
                                    type="text"
                                    class="form-control"
                                    value="Trần Trung Kiên"
                                    readonly
                            />
                        </div>
                    </div>

                    <!-- Right Column -->
                    <div class="col-md-6">
                        <div class="mb-3">
                            <label class="form-label">Trạng thái:</label>
                            <select class="form-select" id="statusSelect">
                                <option value="waiting" class="text-warning">
                                    Chờ nhận hàng
                                </option>
                                <option value="confirmed" class="text-info">
                                    Đã xác nhận
                                </option>
                                <option value="importing" class="text-primary">
                                    Đang nhập hàng
                                </option>
                                <option value="completed" class="text-success">
                                    Đã nhập hàng
                                </option>
                                <option value="cancelled" class="text-danger">
                                    Đã hủy
                                </option>
                            </select>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Chi nhánh:</label>
                            <input
                                    type="text"
                                    class="form-control"
                                    value="Chi nhánh trung tâm"
                                    readonly
                            />
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Người nhập:</label>
                            <input
                                    type="text"
                                    class="form-control"
                                    value="Trần Trung Kiên"
                                    readonly
                            />
                        </div>
                    </div>
                </div>

                <!-- Products Table -->
                <div class="table-responsive mt-4">
                    <table class="table table-hover align-middle">
                        <thead class="table-light">
                        <tr>
                            <th>Mã hàng</th>
                            <th>Tên hàng</th>
                            <th class="text-end">Số lượng</th>
                            <th class="text-end">Đơn giá</th>
                            <th class="text-end">Giảm giá</th>
                            <th class="text-end">Giá bán</th>
                            <th class="text-end">Thành tiền</th>
                            <th width="40"></th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>BG0003</td>
                            <td>Váy cao cấp hồng</td>
                            <td class="text-end">12</td>
                            <td class="text-end">140,000</td>
                            <td class="text-end">140,000</td>
                            <td class="text-end">140,000</td>
                            <td class="text-end">1,680,000</td>
                            <td><i class="bi bi-three-dots-vertical"></i></td>
                        </tr>
                        <tr>
                            <td>BG0004</td>
                            <td>Váy đầm Kitty bé gái 4 tuổi</td>
                            <td class="text-end">13</td>
                            <td class="text-end">28,000</td>
                            <td class="text-end">28,000</td>
                            <td class="text-end">28,000</td>
                            <td class="text-end">364,000</td>
                            <td><i class="bi bi-three-dots-vertical"></i></td>
                        </tr>
                        </tbody>
                    </table>
                </div>

                <!-- Summary -->
                <div class="row mt-3">
                    <div class="col-md-5 ms-auto">
                        <table class="table table-sm">
                            <tr>
                                <td>Tổng số lượng:</td>
                                <td class="text-end">25</td>
                            </tr>
                            <tr>
                                <td>Tổng tiền hàng:</td>
                                <td class="text-end">2,044,000</td>
                            </tr>
                            <tr>
                                <td>Giảm giá hóa đơn:</td>
                                <td class="text-end">0</td>
                            </tr>
                            <tr>
                                <td>Tổng cộng:</td>
                                <td class="text-end">0</td>
                            </tr>
                            <tr>
                                <td>Tiền đã trả NCC:</td>
                                <td class="text-end">2,044,000</td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>

            <!-- Action Buttons -->
            <div class="modal-footer">
                <div class="d-flex gap-2 w-100 justify-content-end">
                    <button class="btn btn-success">
                        <i class="bi bi-check-circle"></i> Mở phiếu
                    </button>
                    <button class="btn btn-primary">
                        <i class="bi bi-save"></i> Lưu
                    </button>
                    <button class="btn btn-info text-white">
                        <i class="bi bi-arrow-return-left"></i> Trả hàng nhập
                    </button>
                    <button class="btn btn-secondary">
                        <i class="bi bi-printer"></i> In đơn
                    </button>
                    <button class="btn btn-danger">
                        <i class="bi bi-x-circle"></i> Hủy đơn
                    </button>
                </div>
            </div>
        </div>
    </div>
</div>