
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<main id="main" class="main">
  <div class="pagetitle">
    <h1>Đơn hàng</h1>
    <nav>
      <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="index.html">Trang chủ</a></li>
        <li class="breadcrumb-item"><a href="#">Giao dịch</a></li>
        <li class="breadcrumb-item active ">Đơn hàng</li>
      </ol>
    </nav>
  </div>

  <section class="section">
    <div class="row">
      <div class="col-lg-12">
        <div class="card">
          <div class="card-body">
            <div class="d-flex justify-content-between align-items-center mb-3">
              <h5 class="card-title fs-4 text-primary">Danh sách đơn hàng</h5>
              <div class="d-flex gap-2">
                <button class="btn btn-primary d-flex align-items-center">
                  <i class="bi bi-plus-lg me-1"></i>
                  Thêm mới
                </button>
                <button class="btn btn-success d-flex align-items-center">
                  <i class="bi bi-collection me-1"></i>
                  Gộp đơn
                </button>
                <div class="dropdown">
                  <button class="btn btn-outline-secondary dropdown-toggle" type="button" id="fileDropdown" data-bs-toggle="dropdown">
                    <i class="bi bi-file-earmark me-1"></i>
                    File
                  </button>
                  <ul class="dropdown-menu shadow">
                    <li><a class="dropdown-item" href="#"><i class="bi bi-download me-2"></i>Xuất Excel</a></li>
                    <li><a class="dropdown-item" href="#"><i class="bi bi-printer me-2"></i>In đơn hàng</a></li>
                  </ul>
                </div>
              </div>
            </div>

            <!-- Add above the table -->
            <div class="row mb-3">
              <div class="col-md-8 d-flex gap-2 align-items-center">
                <div class="search-box flex-grow-1">
                  <div class="input-group">
                      <span class="input-group-text bg-light">
                        <i class="bi bi-search"></i>
                      </span>
                    <input type="text" class="form-control" id="searchInput" placeholder="Tìm kiếm theo mã đơn hàng, khách hàng...">
                  </div>
                </div>
                <select class="form-select" style="width: auto;">
                  <option value="">Tất cả trạng thái</option>
                  <option value="pending">Chờ xử lý</option>
                  <option value="confirmed">Đã xác nhận</option>
                  <option value="shipping">Đang giao hàng</option>
                  <option value="completed">Hoàn thành</option>
                  <option value="cancelled">Đã hủy</option>
                  <option value="returned">Đã trả hàng</option>
                </select>
                <input type="date" class="form-control" style="width: auto;" title="Lọc theo ngày đặt hàng">
              </div>
            </div>

            <div class="table-responsive">
              <table class="table table-hover">
                <thead class="table-light">
                <tr>
                  <th class="text-center">
                    <input type="checkbox" class="form-check-input" id="selectAll" title="Chọn tất cả đơn hàng">
                  </th>
                  <th class="bi bi-headerstar text-center">★</th>
                  <th class="text-start">Mã hóa đơn</th>
                  <th class="text-center">Thời gian</th>
                  <th class="text-center">Mã trả hàng</th>
                  <th class="text-start">Khách hàng</th>
                  <th class="text-end">Tổng tiền hàng</th>
                  <th class="text-end">Giảm giá</th>
                  <th class="text-end">Khách đã trả</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                  <td class="text-center"><input type="checkbox" class="form-check-input row-checkbox" title="Chọn đơn hàng này"></td>
                  <td class="text-center"><i class="bi bi-star text-warning"></i></td>
                  <td class="text-start"><a href="#" class="text-primary">HD000055</a></td>
                  <td class="text-center">20/04/2025 15:30</td>
                  <td class="text-center"><span class="badge bg-success">TH000132</span></td>
                  <td class="text-start">Chị Lan - Hà Nội</td>
                  <td class="text-end">1,250,000</td>
                  <td class="text-end text-danger">50,000</td>
                  <td class="text-end text-success">1,200,000</td>
                </tr>

                <tr>
                  <td class="text-center"><input type="checkbox" class="form-check-input row-checkbox" title="Chọn đơn hàng này"></td>
                  <td class="text-center"><i class="bi bi-star text-warning"></i></td>
                  <td class="text-start"><a href="#" class="text-primary">HD000054</a></td>
                  <td class="text-center">19/04/2025 14:45</td>
                  <td class="text-center"><span class="badge bg-secondary">-</span></td>
                  <td class="text-start">Anh Tuấn - Đà Nẵng</td>
                  <td class="text-end">2,800,000</td>
                  <td class="text-end text-danger">100,000</td>
                  <td class="text-end text-success">2,700,000</td>
                </tr>

                <tr>
                  <td class="text-center"><input type="checkbox" class="form-check-input row-checkbox" title="Chọn đơn hàng này"></td>
                  <td class="text-center"><i class="bi bi-star text-warning"></i></td>
                  <td class="text-start"><a href="#" class="text-primary">HD000053</a></td>
                  <td class="text-center">18/04/2025 11:20</td>
                  <td class="text-center"><span class="badge bg-success">TH000131</span></td>
                  <td class="text-start">Chị Hương - Hải Phòng</td>
                  <td class="text-end">3,500,000</td>
                  <td class="text-end text-danger">150,000</td>
                  <td class="text-end text-success">3,350,000</td>
                </tr>

                <tr>
                  <td class="text-center"><input type="checkbox" class="form-check-input row-checkbox" title="Chọn đơn hàng này"></td>
                  <td class="text-center"><i class="bi bi-star text-warning"></i></td>
                  <td class="text-start"><a href="#" class="text-primary">HD000052</a></td>
                  <td class="text-center">17/04/2025 09:15</td>
                  <td class="text-center"><span class="badge bg-secondary">-</span></td>
                  <td class="text-start">Anh Nam - Cần Thơ</td>
                  <td class="text-end">1,800,000</td>
                  <td class="text-end text-danger">0</td>
                  <td class="text-end text-success">1,800,000</td>
                </tr>

                <tr>
                  <td class="text-center"><input type="checkbox" class="form-check-input row-checkbox" title="Chọn đơn hàng này"></td>
                  <td class="text-center"><i class="bi bi-star text-warning"></i></td>
                  <td class="text-start"><a href="#" class="text-primary">HD000051</a></td>
                  <td class="text-center">16/04/2025 16:40</td>
                  <td class="text-center"><span class="badge bg-secondary">-</span></td>
                  <td class="text-start">Chị Mai - Nha Trang</td>
                  <td class="text-end">2,100,000</td>
                  <td class="text-end text-danger">100,000</td>
                  <td class="text-end text-success">2,000,000</td>
                </tr>

                <tr>
                  <td class="text-center"><input type="checkbox" class="form-check-input row-checkbox" title="Chọn đơn hàng này"></td>
                  <td class="text-center"><i class="bi bi-star text-warning"></i></td>
                  <td class="text-start"><a href="#" class="text-primary">HD000050</a></td>
                  <td class="text-center">15/04/2025 13:25</td>
                  <td class="text-center"><span class="badge bg-secondary">-</span></td>
                  <td class="text-start">Anh Dũng - Huế</td>
                  <td class="text-end">4,200,000</td>
                  <td class="text-end text-danger">200,000</td>
                  <td class="text-end text-success">4,000,000</td>
                </tr>

                <tr>
                  <td class="text-center"><input type="checkbox" class="form-check-input row-checkbox" title="Chọn đơn hàng này"></td>
                  <td class="text-center"><i class="bi bi-star text-warning"></i></td>
                  <td class="text-start"><a href="#" class="text-primary">HD000049</a></td>
                  <td class="text-center">14/04/2025 10:50</td>
                  <td class="text-center"><span class="badge bg-secondary">-</span></td>
                  <td class="text-start">Chị Linh - Vũng Tàu</td>
                  <td class="text-end">1,550,000</td>
                  <td class="text-end text-danger">50,000</td>
                  <td class="text-end text-success">1,500,000</td>
                </tr>

                <tr>
                  <td class="text-center"><input type="checkbox" class="form-check-input row-checkbox" title="Chọn đơn hàng này"></td>
                  <td class="text-center"><i class="bi bi-star text-warning"></i></td>
                  <td class="text-start"><a href="#" class="text-primary">HD000048</a></td>
                  <td class="text-center">13/04/2025 14:15</td>
                  <td class="text-center"><span class="badge bg-secondary">-</span></td>
                  <td class="text-start">Anh Thành - Bình Dương</td>
                  <td class="text-end">2,900,000</td>
                  <td class="text-end text-danger">100,000</td>
                  <td class="text-end text-success">2,800,000</td>
                </tr>

                <tr>
                  <td class="text-center"><input type="checkbox" class="form-check-input row-checkbox" title="Chọn đơn hàng này"></td>
                  <td class="text-center"><i class="bi bi-star text-warning"></i></td>
                  <td class="text-start"><a href="#" class="text-primary">HD000047</a></td>
                  <td class="text-center">12/04/2025 09:30</td>
                  <td class="text-center"><span class="badge bg-secondary">-</span></td>
                  <td class="text-start">Chị Thảo - Đồng Nai</td>
                  <td class="text-end">3,300,000</td>
                  <td class="text-end text-danger">150,000</td>
                  <td class="text-end text-success">3,150,000</td>
                </tr>

                <tr>
                  <td class="text-center"><input type="checkbox" class="form-check-input row-checkbox" title="Chọn đơn hàng này"></td>
                  <td class="text-center"><i class="bi bi-star text-warning"></i></td>
                  <td class="text-start"><a href="#" class="text-primary">HD000046</a></td>
                  <td class="text-center">11/04/2025 16:20</td>
                  <td class="text-center"><span class="badge bg-secondary">-</span></td>
                  <td class="text-start">Anh Phong - Long An</td>
                  <td class="text-end">1,700,000</td>
                  <td class="text-end text-danger">0</td>
                  <td class="text-end text-success">1,700,000</td>
                </tr>
                </tbody>
              </table>
            </div>

          </div>
        </div>
      </div>
    </div>
  </section>
</main>
<!-- Thêm CSS -->
<style>
  .status-select option[value="pending"] {
    background-color: #fff3cd;
    color: #856404;
  }

  .status-select option[value="processing"] {
    background-color: #cff4fc;
    color: #055160;
  }

  .status-select option[value="completed"] {
    background-color: #d4edda;
    color: #155724;
  }

  .status-select option[value="returned"] {
    background-color: #e2e3e5;
    color: #383d41;
  }

  .status-select option[value="cancelled"] {
    background-color: #f8d7da;
    color: #721c24;
  }

  /* Style cho select khi được chọn */
  .status-select {
    font-weight: 500;
  }

  .status-select:has(option[value="pending"]:checked) {
    color: #856404;
    background-color: #fff3cd;
  }

  .status-select:has(option[value="processing"]:checked) {
    color: #055160;
    background-color: #cff4fc;
  }

  .status-select:has(option[value="completed"]:checked) {
    color: #155724;
    background-color: #d4edda;
  }

  .status-select:has(option[value="returned"]:checked) {
    color: #383d41;
    background-color: #e2e3e5;
  }

  .status-select:has(option[value="cancelled"]:checked) {
    color: #721c24;
    background-color: #f8d7da;
  }
</style>
<style>
  /* Style cho select trạng thái */
  .form-select {
    padding: 0.375rem 2.25rem 0.375rem 0.75rem;
    font-weight: 500;
  }

  .form-select option {
    padding: 8px 12px;
  }

  /* Chờ xử lý */
  .form-select option[value="pending"] {
    background-color: #fff3cd;
    color: #664d03;
  }

  /* Đã xác nhận */
  .form-select option[value="confirmed"] {
    background-color: #cff4fc;
    color: #084298;
  }

  /* Đang giao hàng */
  .form-select option[value="shipping"] {
    background-color: #e8f4f8;
    color: #055160;
  }

  /* Hoàn thành */
  .form-select option[value="completed"] {
    background-color: #d1e7dd;
    color: #0f5132;
  }

  /* Đã hủy */
  .form-select option[value="cancelled"] {
    background-color: #f8d7da;
    color: #842029;
  }

  /* Đã trả hàng */
  .form-select option[value="returned"] {
    background-color: #e2e3e5;
    color: #41464b;
  }

  /* Style khi option được chọn */
  .form-select:has(option[value="pending"]:checked) {
    background-color: #fff3cd;
    color: #664d03;
    border-color: #ffecb5;
  }

  .form-select:has(option[value="confirmed"]:checked) {
    background-color: #cff4fc;
    color: #084298;
    border-color: #b6effb;
  }

  .form-select:has(option[value="shipping"]:checked) {
    background-color: #e8f4f8;
    color: #055160;
    border-color: #b6effb;
  }

  .form-select:has(option[value="completed"]:checked) {
    background-color: #d1e7dd;
    color: #0f5132;
    border-color: #badbcc;
  }

  .form-select:has(option[value="cancelled"]:checked) {
    background-color: #f8d7da;
    color: #842029;
    border-color: #f5c2c7;
  }

  .form-select:has(option[value="returned"]:checked) {
    background-color: #e2e3e5;
    color: #41464b;
    border-color: #d3d6d8;
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
  document.addEventListener('DOMContentLoaded', function() {
    const selectAll = document.getElementById('selectAll');
    const rowCheckboxes = document.getElementsByClassName('row-checkbox');

    selectAll.addEventListener('change', function() {
      const isChecked = this.checked;

      Array.from(rowCheckboxes).forEach(checkbox => {
        checkbox.checked = isChecked;
      });
    });

    // Cập nhật trạng thái của checkbox "Chọn tất cả" khi các checkbox riêng lẻ thay đổi
    Array.from(rowCheckboxes).forEach(checkbox => {
      checkbox.addEventListener('change', function() {
        const allChecked = Array.from(rowCheckboxes).every(cb => cb.checked);
        selectAll.checked = allChecked;
      });
    });

    // Lấy các element cần thiết
    const orderModal = document.getElementById('orderDetailModal');
    const statusSelect = orderModal.querySelector('.form-select');
    const originalStatus = statusSelect.value;

    // Nút Cập nhật
    const updateBtn = orderModal.querySelector('.btn-success');
    updateBtn.addEventListener('click', function() {
      // Reload dữ liệu đơn hàng từ server
      alert('Đang tải lại thông tin đơn hàng...');
    });

    // Nút Lưu
    const saveBtn = orderModal.querySelector('.btn-primary');
    saveBtn.addEventListener('click', function() {
      if(statusSelect.value !== originalStatus) {
        const confirm = window.confirm('Bạn có chắc muốn thay đổi trạng thái đơn hàng?');
        if(confirm) {
          alert('Đã lưu thay đổi trạng thái đơn hàng!');
        }
      }
    });

    // Nút Trả hàng
    const returnBtn = orderModal.querySelector('.btn-warning');
    returnBtn.addEventListener('click', function() {
      // Kiểm tra trạng thái đơn hàng
      if(statusSelect.value === 'completed') {
        window.location.href = '#return-order'; // Chuyển đến trang trả hàng
      } else {
        alert('Chỉ có thể trả hàng với đơn hàng đã hoàn thành!');
      }
    });

    // Nút In
    const printBtn = orderModal.querySelector('.btn-secondary');
    printBtn.addEventListener('click', function() {
      window.print(); // Mở hộp thoại in
    });

    // Nút Xuất file
    const exportBtn = orderModal.querySelector('.btn-info');
    exportBtn.addEventListener('click', function() {
      // Tạo menu xuất file
      const format = prompt('Chọn định dạng xuất (pdf/excel):', 'pdf');
      if(format) {
        alert(`Đang xuất file ${format.toUpperCase()}...`);
      }
    });

    // Nút Sao chép
    const copyBtn = orderModal.querySelector('.btn:nth-last-child(2)');
    copyBtn.addEventListener('click', function() {
      const confirm = window.confirm('Bạn có muốn tạo đơn hàng mới từ đơn hàng này?');
      if(confirm) {
        // Reset trạng thái và tạo mã đơn mới
        statusSelect.value = 'pending';
        alert('Đã tạo đơn hàng mới!');
      }
    });

    // Nút Hủy bỏ
    const cancelBtn = orderModal.querySelector('.btn-danger');
    cancelBtn.addEventListener('click', function() {
      if(statusSelect.value !== 'cancelled') {
        const reason = prompt('Nhập lý do hủy đơn:');
        if(reason) {
          statusSelect.value = 'cancelled';
          alert('Đã hủy đơn hàng!');
        }
      } else {
        alert('Đơn hàng đã được hủy trước đó!');
      }
    });

    // Thêm class cho trạng thái
    statusSelect.addEventListener('change', function() {
      const status = this.value;
      this.className = 'form-select';
      switch(status) {
        case 'pending':
          this.classList.add('text-warning');
          break;
        case 'confirmed':
        case 'shipping':
          this.classList.add('text-primary');
          break;
        case 'completed':
          this.classList.add('text-success');
          break;
        case 'cancelled':
        case 'returned':
          this.classList.add('text-danger');
          break;
      }
    });

    // Xử lý nút ngôi sao
    const starButtons = document.querySelectorAll('.bi-star');
    starButtons.forEach(star => {
      star.addEventListener('click', function(e) {
        e.preventDefault();

        // Toggle class để đổi màu sao
        if(this.classList.contains('bi-star-fill')) {
          this.classList.remove('bi-star-fill');
          this.classList.add('bi-star');
        } else {
          this.classList.remove('bi-star');
          this.classList.add('bi-star-fill');
        }

        // Lưu trạng thái vào localStorage
        const orderId = this.closest('tr').querySelector('a').textContent;
        const isFavorite = this.classList.contains('bi-star-fill');
        localStorage.setItem(`favorite_${orderId}`, isFavorite);
      });

      // Khôi phục trạng thái từ localStorage khi load trang
      const orderId = star.closest('tr').querySelector('a').textContent;
      const isFavorite = localStorage.getItem(`favorite_${orderId}`) === 'true';
      if(isFavorite) {
        star.classList.remove('bi-star');
        star.classList.add('bi-star-fill');
      }
    });

    // Thêm style cho ngôi sao
    const style = document.createElement('style');
    style.textContent = `
        .bi-star, .bi-star-fill {
          cursor: pointer;
          transition: all 0.2s;
          user-select: none;  /* Thêm dòng này */
        }
        .bi-star:hover, .bi-star-fill:hover {
          transform: scale(1.2);
        }
        .bi-star-fill {
          color: #ffc107 !important;
        }
        td.text-center {
          cursor: default;  /* Thêm dòng này */
        }
      `;
    document.head.appendChild(style);

  });

  // Add this JavaScript for search functionality
  document.addEventListener('DOMContentLoaded', function() {
    const searchInput = document.getElementById('searchInput');
    const tableRows = document.querySelectorAll('table tbody tr');

    searchInput.addEventListener('keyup', function() {
      const searchTerm = this.value.toLowerCase();

      tableRows.forEach(row => {
        const orderCode = row.querySelector('td:nth-child(3)').textContent.toLowerCase();
        const customer = row.querySelector('td:nth-child(6)').textContent.toLowerCase();

        if (orderCode.includes(searchTerm) || customer.includes(searchTerm)) {
          row.style.display = '';
        } else {
          row.style.display = 'none';
        }
      });
    });
  });
</script>

<!-- Order Detail Modal -->
<div class="modal fade" id="orderDetailModal" tabindex="-1">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Chi tiết đơn hàng</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <div class="row mb-3">
          <div class="col-md-6">
            <div class="mb-2">
              <label class="form-label">Mã đơn hàng:</label>
              <input type="text" class="form-control" value="HD000045" readonly title="Mã đơn hàng">
            </div>
            <div class="mb-2">
              <label class="form-label">Thời gian:</label>
              <input type="text" class="form-control" value="14/04/2025 08:33" readonly title="Thời gian đặt hàng">
            </div>
            <div class="mb-2">
              <label class="form-label">Khách hàng:</label>
              <input type="text" class="form-control" value="KH000004 - Anh Hoàng - Sài Gòn" readonly title="Khách hàng">
            </div>
            <div class="mb-2">
              <label class="form-label">Bảng giá:</label>
              <input type="text" class="form-control" value="Bảng giá chung" readonly title="Bảng giá áp dụng">
            </div>
          </div>
          <div class="col-md-6">
            <div class="mb-2">
              <label class="form-label">Trạng thái:</label>
              <select class="form-select" title="Chọn trạng thái đơn hàng">
                <option value="pending" selected>Chờ xử lý</option>
                <option value="confirmed">Đã xác nhận</option>
                <option value="shipping">Đang giao hàng</option>
                <option value="completed">Hoàn thành</option>
                <option value="cancelled">Đã hủy</option>
              </select>
            </div>
            <div class="mb-2">
              <label class="form-label">Chi nhánh:</label>
              <input type="text" class="form-control" value="Chi nhánh trung tâm" readonly title="Chi nhánh bán hàng">
            </div>
            <div class="mb-2">
              <label class="form-label">Người tạo:</label>
              <input type="text" class="form-control" value="Lê Thị Bảo Trân" readonly title="Người tạo đơn">
            </div>
          </div>
        </div>

        <div class="table-responsive mb-3">
          <table class="table table-bordered">
            <thead class="table-light">
            <tr>
              <th>Mã hàng</th>
              <th>Tên hàng</th>
              <th class="text-center">Số lượng</th>
              <th class="text-end">Đơn giá</th>
              <th class="text-end">Giảm giá</th>
              <th class="text-end">Giá bán</th>
              <th class="text-end">Thành tiền</th>
            </tr>
            </thead>
            <tbody>
            <tr>
              <td>BG0003</td>
              <td>Váy cao cấp hồng</td>
              <td class="text-center">12</td>
              <td class="text-end">140,000</td>
              <td class="text-end">140,000</td>
              <td class="text-end">140,000</td>
              <td class="text-end">1,680,000</td>
            </tr>
            <tr>
              <td>BG0004</td>
              <td>Váy đầm Kitty bé gái 4 tuổi</td>
              <td class="text-center">13</td>
              <td class="text-end">28,000</td>
              <td class="text-end">28,000</td>
              <td class="text-end">28,000</td>
              <td class="text-end">364,000</td>
            </tr>
            </tbody>
            <tfoot>
            <tr>
              <td colspan="2" class="text-end">Tổng số lượng:</td>
              <td class="text-center">25</td>
              <td colspan="3" class="text-end">Tổng tiền hàng:</td>
              <td class="text-end">2,044,000</td>
            </tr>
            <tr>
              <td colspan="6" class="text-end">Giảm giá hóa đơn:</td>
              <td class="text-end">0</td>
            </tr>
            <tr>
              <td colspan="6" class="text-end">Khách cần trả:</td>
              <td class="text-end">2,044,000</td>
            </tr>
            <tr>
              <td colspan="6" class="text-end">Khách đã trả:</td>
              <td class="text-end">2,044,000</td>
            </tr>
            </tfoot>
          </table>
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-success d-flex align-items-center">
          <i class="bi bi-arrow-clockwise me-1"></i>
          Cập nhật
        </button>
        <button type="button" class="btn btn-primary d-flex align-items-center">
          <i class="bi bi-save me-1"></i>
          Lưu
        </button>
        <button type="button" class="btn btn-warning d-flex align-items-center">
          <i class="bi bi-arrow-counterclockwise me-1"></i>
          Trả hàng
        </button>
        <button type="button" class="btn btn-secondary d-flex align-items-center">
          <i class="bi bi-printer me-1"></i>
          In
        </button>
        <button type="button" class="btn btn-info d-flex align-items-center">
          <i class="bi bi-file-earmark me-1"></i>
          Xuất file
        </button>
        <button type="button" class="btn btn-primary d-flex align-items-center">
          <i class="bi bi-files me-1"></i>
          Sao chép
        </button>
        <button type="button" class="btn btn-danger d-flex align-items-center">
          <i class="bi bi-trash me-1"></i>
          Hủy bỏ
        </button>
      </div>
    </div>
  </div>
</div>

<script>
  // Add after existing script
  document.addEventListener('DOMContentLoaded', function() {
    // Chỉ chọn các link mã đơn hàng (có class text-primary trong cột mã hóa đơn)
    document.querySelectorAll('td.text-start a.text-primary').forEach(link => {
      link.addEventListener('click', (e) => {
        e.preventDefault();
        const modal = new bootstrap.Modal(document.getElementById('orderDetailModal'));
        modal.show();
      });
    });
  });

  document.addEventListener('DOMContentLoaded', function() {
    // Fix click handler for order links
    document.querySelectorAll('td.text-start a.text-primary').forEach(link => {
      link.addEventListener('click', function(e) {
        e.preventDefault();

        // Get data from clicked row
        const row = this.closest('tr');
        const orderData = {
          id: this.textContent,
          date: row.cells[3].textContent,
          returnId: row.querySelector('.badge').textContent,
          customer: row.cells[5].textContent,
          total: row.cells[6].textContent,
          discount: row.cells[7].textContent,
          paid: row.cells[8].textContent
        };

        // Get modal and update content
        const modal = document.getElementById('orderDetailModal');

        // Update header information
        modal.querySelector('input[value^="HD"]').value = orderData.id;
        modal.querySelector('input[value$="08:33"]').value = orderData.date;
        modal.querySelector('input[value^="KH"]').value = orderData.customer;

        // Update amounts in footer
        const tfoot = modal.querySelector('table tfoot');
        tfoot.rows[0].cells[6].textContent = orderData.total; // Tổng tiền hàng
        tfoot.rows[1].cells[1].textContent = orderData.discount; // Giảm giá
        tfoot.rows[2].cells[1].textContent = orderData.total; // Khách cần trả
        tfoot.rows[3].cells[1].textContent = orderData.paid; // Khách đã trả

        // Show modal
        const bsModal = new bootstrap.Modal(modal);
        bsModal.show();
      });
    });

    // Calculate totals in modal table
    function updateModalTotals() {
      const modal = document.getElementById('orderDetailModal');
      const tbody = modal.querySelector('table tbody');
      let totalQty = 0;
      let totalAmount = 0;

      // Sum up quantities and amounts
      tbody.querySelectorAll('tr').forEach(row => {
        totalQty += parseInt(row.cells[2].textContent);
        totalAmount += parseInt(row.cells[6].textContent.replace(/,/g, ''));
      });

      // Update footer totals
      const tfoot = modal.querySelector('table tfoot');
      tfoot.rows[0].cells[2].textContent = totalQty;
      tfoot.rows[0].cells[6].textContent = totalAmount.toLocaleString();
    }

    // Call this after populating table data
    updateModalTotals();
  });
</script>

<script>
  document.addEventListener('DOMContentLoaded', function() {
    // Get buttons
    const addNewBtn = document.querySelector('.btn-primary');
    const mergeOrderBtn = document.querySelector('.btn-success');

    // Thêm mới button handler
    addNewBtn.addEventListener('click', function() {
      const newOrderModal = `
            <div class="modal fade" id="newOrderModal">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title">Tạo đơn hàng mới</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                        </div>
                        <div class="modal-body">
                            <div class="row mb-3">
                                <div class="col-md-6">
                                    <div class="mb-3">
                                        <label class="form-label">Khách hàng</label>
                                        <select class="form-select" required>
                                            <option value="">Chọn khách hàng</option>
                                            <option>KH000001 - Anh Hoàng - Sài Gòn</option>
                                            <option>KH000002 - Chị Lan - Hà Nội</option>
                                        </select>
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label">Bảng giá</label>
                                        <select class="form-select">
                                            <option>Bảng giá chung</option>
                                            <option>Bảng giá sỉ</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-6">
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
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Đóng</button>
                            <button type="button" class="btn btn-primary" onclick="createNewOrder()">Tạo đơn</button>
                        </div>
                    </div>
                </div>
            </div>
        `;
      document.body.insertAdjacentHTML('beforeend', newOrderModal);
      const modal = new bootstrap.Modal(document.getElementById('newOrderModal'));
      modal.show();
    });

    // Gộp đơn button handler
    mergeOrderBtn.addEventListener('click', function() {
      // Check if any orders are selected
      const selectedOrders = document.querySelectorAll('tbody input[type="checkbox"]:checked');

      if (selectedOrders.length < 2) {
        alert('Vui lòng chọn ít nhất 2 đơn hàng để gộp!');
        return;
      }

      // Get selected order IDs
      const orderIds = Array.from(selectedOrders).map(checkbox =>
              checkbox.closest('tr').querySelector('a.text-primary').textContent
      );

      const mergeModal = `
            <div class="modal fade" id="mergeOrderModal">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title">Gộp đơn hàng</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                        </div>
                        <div class="modal-body">
                            <p>Bạn đang gộp ${selectedOrders.length} đơn hàng:</p>
                            <ul class="list-group mb-3">
                          {orderIds.map(id => (
                              <li key={id} className="list-group-item d-flex justify-content-between align-items-center">
                                  {id}
                                  <span className="badge bg-primary rounded-pill">
                                      {(() => {
                                          const linkElement = document.querySelector(`
                                          a[href="#"][text="${id}"]`);
                                          return linkElement
                                              ? linkElement.closest('tr')?.querySelector('td:nth-child(7)')?.textContent || ''
                                              : '';
                                      })()}
                                  </span>
                              </li>
                          ))}
                            </ul>
                            <div class="mb-3">
                                <label class="form-label">Ghi chú</label>
                                <textarea class="form-control" rows="2" placeholder="Nhập ghi chú cho đơn gộp..."></textarea>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Đóng</button>
                            <button type="button" class="btn btn-success" onclick="mergeOrders('${orderIds.join(',')}')">
                                Xác nhận gộp
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        `;
      document.body.insertAdjacentHTML('beforeend', mergeModal);
      const modal = new bootstrap.Modal(document.getElementById('mergeOrderModal'));
      modal.show();
    });
  });

  // Helper functions
  function createNewOrder() {
    const modal = bootstrap.Modal.getInstance(document.getElementById('newOrderModal'));
    const customer = modal.element.querySelector('select').value;

    if (!customer) {
      alert('Vui lòng chọn khách hàng!');
      return;
    }

    alert('Đã tạo đơn hàng mới!');
    modal.hide();
    // Add logic to create new order here
  }

  function mergeOrders(orderIds) {
    const modal = bootstrap.Modal.getInstance(document.getElementById('mergeOrderModal'));
    const note = modal.element.querySelector('textarea').value;

    alert(`Đã gộp ${orderIds.split(',').length} đơn hàng thành công!`);
    modal.hide();
    // Add logic to merge orders here
  }
</script>

<script>
  document.addEventListener('DOMContentLoaded', function() {
    // Get filter elements
    const statusFilter = document.querySelector('select[value=""]');
    const dateFilter = document.querySelector('input[type="date"]');
    const tableRows = document.querySelectorAll('tbody tr');

    // Add filter change handlers
    statusFilter.addEventListener('change', filterOrders);
    dateFilter.addEventListener('change', filterOrders);

    function filterOrders() {
      const selectedStatus = statusFilter.value;
      const selectedDate = dateFilter.value ? new Date(dateFilter.value) : null;

      tableRows.forEach(row => {
        // Get row data
        const rowStatus = row.querySelector('.badge')?.textContent || '';
        const rowDate = new Date(row.cells[3].textContent);

        // Format date for comparison (remove time part)
        const rowDateOnly = new Date(rowDate.getFullYear(), rowDate.getMonth(), rowDate.getDate());
        const selectedDateOnly = selectedDate ? new Date(selectedDate.getFullYear(), selectedDate.getMonth(), selectedDate.getDate()) : null;

        // Check if row matches filters
        const matchesStatus = !selectedStatus || rowStatus.toLowerCase().includes(selectedStatus.toLowerCase());
        const matchesDate = !selectedDate || rowDateOnly.getTime() === selectedDateOnly.getTime();

        // Show/hide row based on filters
        row.style.display = (matchesStatus && matchesDate) ? '' : 'none';
      });

      // Update total count
      updateFilteredCount();
    }

    function updateFilteredCount() {
      const visibleRows = document.querySelectorAll('tbody tr:not([style*="none"])').length;
      const totalRows = tableRows.length;

      // Add or update counter element
      let counter = document.querySelector('.filter-counter');
      if (!counter) {
        counter = document.createElement('div');
        counter.className = 'filter-counter text-muted mt-2';
        document.querySelector('.table-responsive').insertAdjacentElement('beforebegin', counter);
      }
      counter.textContent = `Hiển thị ${visibleRows} / ${totalRows} đơn hàng`;
    }

    // Reset filters button
    const resetButton = document.createElement('button');
    resetButton.className = 'btn btn-outline-secondary';
    resetButton.innerHTML = '<i class="bi bi-x-circle me-1"></i>Xóa bộ lọc';
    resetButton.addEventListener('click', function() {
      statusFilter.value = '';
      dateFilter.value = '';
      tableRows.forEach(row => row.style.display = '');
      updateFilteredCount();
    });

    // Add reset button after filters
    dateFilter.insertAdjacentElement('afterend', resetButton);

    // Initialize counter
    updateFilteredCount();
  });
</script>
