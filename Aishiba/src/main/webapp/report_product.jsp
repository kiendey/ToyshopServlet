<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 5/9/2025
  Time: 12:07 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
<main id="main" class="main">
  <div class="pagetitle">
    <h1>Báo cáo hàng hoá</h1>
    <nav>
      <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="#">Trang chủ</a></li>
        <li class="breadcrumb-item"><a href="#">Thống kê</a></li>
        <li class="breadcrumb-item active">Hàng hoá</li>
      </ol>
    </nav>
  </div>

  <div class="row">
    <!-- Sidebar -->
    <div class="col-lg-3 col-md-4 sidebar-main">
      <div class="sidebar-section">
        <h5 class="mb-3">Kiểu hiển thị</h5>
        <div class="form-check">
          <input class="form-check-input" type="radio" name="displayType" id="chart" checked>
          <label class="form-check-label" for="chart">Biểu đồ</label>
        </div>
        <div class="form-check">
          <input class="form-check-input" type="radio" name="displayType" id="report">
          <label class="form-check-label" for="report">Báo cáo</label>
        </div>
        <div class="form-check">
          <input class="form-check-input" type="radio" name="displayType" id="group">
          <label class="form-check-label" for="group">Gộp hàng hoá cùng loại</label>
        </div>
      </div>

      <div class="sidebar-section">
        <h5 class="mb-3">Mối quan tâm</h5>
        <div class="form-check">
          <input class="form-check-input" type="radio" name="focus" id="sales" checked>
          <label class="form-check-label" for="sales">Bán hàng</label>
        </div>
        <div class="form-check">
          <input class="form-check-input" type="radio" name="focus" id="profit">
          <label class="form-check-label" for="profit">Lợi nhuận</label>
        </div>
        <div class="form-check">
          <input class="form-check-input" type="radio" name="focus" id="inventory">
          <label class="form-check-label" for="inventory">Giữ tồn kho</label>
        </div>
        <div class="form-check">
          <input class="form-check-input" type="radio" name="focus" id="import">
          <label class="form-check-label" for="import">Xuất nhập tồn</label>
        </div>
      </div>

      <div class="sidebar-section">
        <h5 class="mb-3">Thời gian</h5>
        <div class="form-check">
          <input class="form-check-input" type="radio" name="time" id="thisWeek" checked>
          <label class="form-check-label" for="thisWeek">Tuần này</label>
        </div>
        <div class="form-check">
          <input class="form-check-input" type="radio" name="time" id="custom">
          <label class="form-check-label" for="custom">Lựa chọn khác</label>
        </div>
        <input type="date" class="form-control mt-2" id="customDate">
      </div>
    </div>

    <!-- Main Content -->
    <div class="col-lg-9 col-md-8">
      <div class="card p-4">
        <h5 class="text-center">Top 10 sản phẩm bán chạy theo số lượng (đã trừ trả hàng)</h5>
        <div id="chart1" style="height: 300px;"></div>
      </div>

      <div class="card p-4 mt-4">
        <h5 class="text-center">Top 10 sản phẩm doanh thu cao nhất (đã trừ trả hàng)</h5>
        <div id="chart2" style="height: 300px;"></div>
      </div>
    </div>
  </div>
</main>

<style>
  /* Định vị sidebar trong main */
  .sidebar-main {
    position: fixed;
    /* Cố định vị trí */
    top: 70px;
    /* Khoảng cách từ trên xuống để không chèn lên header */
    right: 0;
    /* Sát cạnh phải màn hình */
    width: 20%;
    /* Chiếm 20% chiều rộng màn hình */
    height: calc(100vh - 70px);
    /* Chiều cao toàn màn hình trừ chiều cao của header */
    z-index: 1020;
    /* Đảm bảo nằm trên các phần tử khác */
    overflow-y: auto;
    /* Cuộn dọc nếu nội dung quá dài */
    background-color: #ffffff;
    /* Màu nền trắng */
    border-left: 1px solid #e0e0e0;
    /* Viền bên trái */
    box-shadow: -2px 0 6px rgba(0, 0, 0, 0.1);
    /* Đổ bóng bên trái */
    padding: 16px;
    /* Khoảng cách bên trong */
  }

  /* Đảm bảo nội dung chính không bị chồng lấn */
  .main-content {
    margin-right: 20%;
    /* Đẩy nội dung chính sang trái để nhường chỗ cho sidebar */
  }

  /* Tùy chỉnh khung sidebar */
  .sidebar-wrapper {
    padding: 16px;
    /* Khoảng cách bên trong */
    background-color: #ffffff;
    /* Màu nền trắng */
    border-radius: 8px;
    /* Bo góc */
  }

  /* Khung nhỏ cho từng phần */
  .card {
    background-color: #ffffff;
    /* Màu nền sáng hơn */
    border: 1px solid #e0e0e0;
    /* Viền màu xám nhạt */
    border-radius: 8px;
    /* Bo góc nhẹ */
    padding: 24px;
    /* Tăng khoảng cách bên trong khung */
    margin-bottom: 24px;
    /* Tăng khoảng cách giữa các khung */
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.05);
  }

  /* Tiêu đề của từng phần */
  .card h5 {
    font-size: 18px;
    /* Tăng cỡ chữ tiêu đề */
    font-weight: bold;
    /* In đậm tiêu đề */
    color: #012970;
    /* Màu chữ tiêu đề */
    margin-bottom: 16px;
    /* Khoảng cách dưới tiêu đề */
    text-align: center;
  }

  /* Tùy chỉnh từng phần trong sidebar */
  .sidebar-section {
    margin-bottom: 16px;
    /* Khoảng cách giữa các phần */
    padding: 16px;
    background-color: #ffffff;
    /* Nền trắng */
    border: 1px solid #e0e0e0;
    /* Viền màu xám nhạt */
    border-radius: 8px;
    /* Bo góc */
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.05);
    /* Đổ bóng nhẹ */
  }

  /* Tiêu đề của từng phần */
  .sidebar-section h5 {
    font-size: 16px;
    font-weight: bold;
    color: #012970;
    margin-bottom: 12px;
  }

  /* Input và select */
  .sidebar-section .form-control,
  .sidebar-section .form-select {
    margin-top: 8px;
    border-radius: 4px;
  }

  /* Radio button và nhãn */
  .sidebar-section .form-check {
    margin-bottom: 8px;
  }

  .sidebar-section .form-check-label {
    font-size: 14px;
    color: #6c757d;
  }

  .text-center .btn {
    padding: 10px 20px;
    /* Tăng kích thước nút */
    font-size: 14px;
    /* Cỡ chữ */
    border-radius: 5px;
    /* Bo góc nhẹ */
  }

  .gap-3>* {
    margin-left: 10px;
    /* Khoảng cách giữa các nút */
  }

  .d-flex.justify-content-end .btn {
    padding: 10px 20px;
    /* Tăng kích thước nút */
    font-size: 14px;
    /* Cỡ chữ */
    border-radius: 5px;
    /* Bo góc nhẹ */
  }

  .d-flex.justify-content-end .btn+.btn {
    margin-left: 10px;
    /* Khoảng cách giữa các nút */
  }

  .d-flex.justify-content-end {
    margin-top: -10px;
    /* Điều chỉnh khoảng cách với tiêu đề */
  }

  .d-flex.justify-content-end .btn {
    padding: 8px 16px;
    /* Kích thước nút */
    font-size: 14px;
    /* Cỡ chữ */
    border-radius: 5px;
    /* Bo góc nhẹ */
  }

  .d-flex.justify-content-end .btn+.btn {
    margin-left: 10px;
    /* Khoảng cách giữa các nút */
  }

  #chart1,
  #chart2 {
    height: 400px;
    /* Tăng chiều cao biểu đồ */
    background-color: #f9f9f9;
    border-radius: 8px;
    padding: 16px;
    /* Thêm khoảng cách bên trong */
  }

  .card+.card {
    margin-top: 100px;
    /* Tăng khoảng cách giữa các khung biểu đồ */
  }
</style>

<script>
  // Biểu đồ 1
  var options1 = {
    series: [{
      data: [60, 40]
    }],
    chart: {
      type: 'bar',
      height: 300
    },
    plotOptions: {
      bar: {
        horizontal: true
      }
    },
    dataLabels: {
      enabled: false // Tắt hiển thị số liệu trên cột
    },
    xaxis: {
      categories: ['Cặp đa khóa số', 'Ví nhớ dùng card Synapse']
    }
  };

  var chart1 = new ApexCharts(document.querySelector("#chart1"), options1);
  chart1.render();

  // Biểu đồ 2
  var options2 = {
    series: [{
      data: [90000000, 20000000]
    }],
    chart: {
      type: 'bar',
      height: 300
    },
    plotOptions: {
      bar: {
        horizontal: true
      }
    },
    dataLabels: {
      enabled: false // Tắt hiển thị số liệu trên cột
    },
    xaxis: {
      categories: ['Cặp đa khóa số', 'Ví nhớ dùng card Synapse']
    }
  };

  var chart2 = new ApexCharts(document.querySelector("#chart2"), options2);
  chart2.render();
</script>
