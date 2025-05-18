<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  // Kiểm tra session
  if (session.getAttribute("username") == null) {
    response.sendRedirect("login.jsp");
  }
%>
<main id="main" class="main">

  <div class="pagetitle">
    <h1>Dashboard</h1>
    <nav>
      <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="homepage">Trang chủ</a></li>
        <li class="breadcrumb-item active">Dashboard</li>
      </ol>
    </nav>
  </div><!-- End Page Title -->

  <section class="section dashboard">
    <div class="row">

      <!-- Total Revenue Card -->
      <div class="col-xxl-3 col-md-6">
        <div class="card info-card revenue-card">
          <div class="card-body">
            <h5 class="card-title">Tổng Doanh Thu <span>| Hôm nay</span></h5>
            <div class="d-flex align-items-center">
              <div class="card-icon rounded-circle d-flex align-items-center justify-content-center"
                   style="background-color: #f0f8ff;">
                <i class="bi bi-currency-dollar" style="color: #4154f1;"></i>
              </div>
              <div class="ps-3">
                <h6>$12,099</h6>
                <span class="text-success small pt-1 fw-bold">+0.00%</span>
              </div>
            </div>
            <div id="totalRevenueChart" class="mt-2" style="height: 40px;"></div>
            <script>
              document.addEventListener("DOMContentLoaded", () => {
                if (typeof ApexCharts !== 'undefined' && document.querySelector("#totalRevenueChart")) {
                  new ApexCharts(document.querySelector("#totalRevenueChart"), {
                    chart: { type: 'area', height: 40, sparkline: { enabled: true } },
                    stroke: { curve: 'smooth', width: 2 },
                    colors: ['#4154f1'],
                    fill: { type: 'gradient', gradient: { opacityFrom: 0.5, opacityTo: 0.2 } },
                    series: [{ data: [20, 70, 30, 80, 25, 75, 35, 65, 20] }],
                    tooltip: { enabled: false },
                  }).render();
                }
              });
            </script>
          </div>
        </div>
      </div><!-- End Total Revenue Card -->

      <!-- Affiliate Revenue Card -->
      <div class="col-xxl-3 col-md-6">
        <div class="card info-card">
          <div class="card-body">
            <h5 class="card-title">Doanh Thu Liên Kết <span>| Hôm nay</span></h5>
            <div class="d-flex align-items-center">
              <div class="card-icon rounded-circle d-flex align-items-center justify-content-center"
                   style="background-color: #ffebee;">
                <i class="bi bi-cash-coin" style="color: #dc3545;"></i>
              </div>
              <div class="ps-3">
                <h6>$12,099</h6>
                <span class="text-success small pt-1 fw-bold">+0.00%</span>
              </div>
            </div>
            <div id="affiliateRevenueChart" class="mt-2" style="height: 40px;"></div>
            <script>
              document.addEventListener("DOMContentLoaded", () => {
                if (typeof ApexCharts !== 'undefined' && document.querySelector("#affiliateRevenueChart")) {
                  new ApexCharts(document.querySelector("#affiliateRevenueChart"), {
                    chart: { type: 'area', height: 40, sparkline: { enabled: true } },
                    stroke: { curve: 'smooth', width: 2 },
                    colors: ['#dc3545'],
                    fill: { type: 'gradient', gradient: { opacityFrom: 0.5, opacityTo: 0.2 } },
                    series: [{ data: [30, 75, 25, 85, 30, 70, 40, 60, 25] }],
                    tooltip: { enabled: false },
                  }).render();
                }
              });
            </script>
          </div>
        </div>
      </div><!-- End Affiliate Revenue Card -->

      <!-- Refunds Card -->
      <div class="col-xxl-3 col-md-6">
        <div class="card info-card">
          <div class="card-body">
            <h5 class="card-title"> Tổng sản phẩm bán ra <span>| Hôm nay</span></h5>
            <div class="d-flex align-items-center">
              <div class="card-icon rounded-circle d-flex align-items-center justify-content-center"
                   style="background-color: #e0f7fa;">
                <i class="bi bi-box-seam" style="color: #0dcaf0;"></i>
              </div>
              <div class="ps-3">
                <h6>0.00</h6>
                <span class="text-muted small pt-1">N/A</span>
              </div>
            </div>
            <div id="refundsChart" class="mt-2" style="height: 40px;"></div>
            <script>
              document.addEventListener("DOMContentLoaded", () => {
                if (typeof ApexCharts !== 'undefined' && document.querySelector("#refundsChart")) {
                  new ApexCharts(document.querySelector("#refundsChart"), {
                    chart: { type: 'area', height: 40, sparkline: { enabled: true } },
                    stroke: { curve: 'smooth', width: 2 },
                    colors: ['#0dcaf0'],
                    fill: { type: 'gradient', gradient: { opacityFrom: 0.5, opacityTo: 0.2 } },
                    series: [{ data: [10, 45, 15, 50, 10, 40, 20, 35, 10] }],
                    tooltip: { enabled: false },
                  }).render();
                }
              });
            </script>
          </div>
        </div>
      </div><!-- End Refunds Card -->

      <!-- Avg. Revenue Per User Card -->
      <div class="col-xxl-3 col-md-6">
        <div class="card info-card">
          <div class="card-body">
            <h5 class="card-title">Tổng đơn hàng <span>| Hôm nay</span></h5>
            <div class="d-flex align-items-center">
              <div class="card-icon rounded-circle d-flex align-items-center justify-content-center"
                   style="background-color: #fff8e1;">
                <i class="bi bi-receipt" style="color: #ffc107;"></i>
              </div>
              <div class="ps-3">
                <h6>$28,000</h6>
                <span class="text-danger small pt-1 fw-bold">-0.00%</span>
              </div>
            </div>
            <div id="avgRevenueUserChart" class="mt-2" style="height: 40px;"></div>
            <script>
              document.addEventListener("DOMContentLoaded", () => {
                if (typeof ApexCharts !== 'undefined' && document.querySelector("#avgRevenueUserChart")) {
                  new ApexCharts(document.querySelector("#avgRevenueUserChart"), {
                    chart: { type: 'area', height: 40, sparkline: { enabled: true } },
                    stroke: { curve: 'smooth', width: 2 },
                    colors: ['#ffc107'],
                    fill: { type: 'gradient', gradient: { opacityFrom: 0.5, opacityTo: 0.2 } },
                    series: [{ data: [40, 90, 30, 80, 35, 85, 45, 75, 40] }],
                    tooltip: { enabled: false },
                  }).render();
                }
              });
            </script>
          </div>
        </div>
      </div><!-- End Avg. Revenue Per User Card -->

    </div> <!-- End Top Row -->

    <div class="row mb-4">
      <div class="col-lg-8">
        <div class="card h-100">
          <div class="card-body">
            <h5 class="card-title">Mức độ tăng trưởng bán hàng từng năm </h5>
            <div id="customBarChart"></div>
          </div>
        </div>
      </div>
      <div class="col-lg-4">
        <div class="card h-100">
          <div class="card-body">
            <h5 class="card-title">Tỷ lệ phần trăm sản phẩm theo danh mục</h5>
            <div id="customPieChart"></div>
          </div>
        </div>
      </div>
    </div>
    <script>
      document.addEventListener("DOMContentLoaded", () => {
        if (typeof ApexCharts !== 'undefined') {
          // Biểu đồ miền - Mức độ tăng trưởng bán hàng theo tháng so với năm trước
          new ApexCharts(document.querySelector("#customBarChart"), {
            chart: { type: 'area', height: 250 },
            series: [
              { name: '2025', data: [120, 190, 170, 140, 180, 100, 220, 210, 190, 230, 290, 270] },
              { name: '2024', data: [100, 150, 160, 120, 160, 80, 160, 190, 170, 210, 230, 250] }
            ],
            xaxis: { categories: ['Th1', 'Th2', 'Th3', 'Th4', 'Th5', 'Th6', 'Th7', 'Th8', 'Th9', 'Th10', 'Th11', 'Th12'] },
            stroke: { curve: 'smooth', width: 2 },
            fill: { type: 'gradient', gradient: { opacityFrom: 0.5, opacityTo: 0.2 } },
            dataLabels: { enabled: false }
          }).render();
          // Biểu đồ tròn - Tỷ lệ phần trăm sản phẩm bán ra theo danh mục
          new ApexCharts(document.querySelector("#customPieChart"), {
            chart: { type: 'pie', height: 250 },
            series: [40, 27, 20, 10, 3],
            labels: ['Đồ chơi', 'Sách', 'Quần áo', 'Đồ điện tử', 'Khác'],
            legend: {
              position: 'bottom',
              horizontalAlign: 'center',
              offsetY: 10
            }
          }).render();
        }
      });
    </script>

    <div class="row">
      <!-- Recent Orders Table -->
      <div class="col-lg-8 d-flex">
        <div class="card h-100 w-100">
          <div class="card-body">
            <h5 class="card-title">Đơn Hàng Gần Đây <span>| Hôm nay</span></h5>
            <div class="table-responsive" style="max-height: 350px; overflow-y: auto;">
              <table class="table table-hover">
                <thead>
                <tr>
                  <th scope="col">#</th>
                  <th scope="col">Hình Ảnh</th>
                  <th scope="col">Tên Sản Phẩm</th>
                  <th scope="col">Số Lượng</th>
                  <th scope="col">Giá</th>
                  <th scope="col">Thời Gian Đặt</th>
                  <th scope="col">Khách Hàng</th>
                  <th scope="col">Trạng Thái</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                  <th scope="row">1</th>
                  <td><img src="${pageContext.request.contextPath}/assets/img/product-1.jpg"
                           alt="Product Image"
                           style="width: 40px; height: 40px; object-fit: cover;"></td>
                  <td>Product #1</td>
                  <td>20</td>
                  <td>$60.00</td>
                  <td>27-08-2018 09:22:10</td>
                  <td>Patricia J. King</td>
                  <td><span class="badge bg-warning text-dark">In Transit</span></td>
                </tr>
                <tr>
                  <th scope="row">2</th>
                  <td><img src="${pageContext.request.contextPath}/assets/img/product-2.jpg"
                           alt="Product Image"
                           style="width: 40px; height: 40px; object-fit: cover;"></td>
                  <td>Product #2</td>
                  <td>12</td>
                  <td>$180.00</td>
                  <td>25-08-2018 21:12:54</td>
                  <td>Rachel J. Wicker</td>
                  <td><span class="badge bg-success">Delivered</span></td>
                </tr>
                <tr>
                  <th scope="row">3</th>
                  <td><img src="${pageContext.request.contextPath}/assets/img/product-3.jpg"
                           alt="Product Image"
                           style="width: 40px; height: 40px; object-fit: cover;"></td>
                  <td>Product #3</td>
                  <td>25</td>
                  <td>$200.00</td>
                  <td>24-08-2018 14:12:37</td>
                  <td>Michael K. Ledford</td>
                  <td><span class="badge bg-success">Delivered</span></td>
                </tr>
                <tr>
                  <th scope="row">4</th>
                  <td><img src="${pageContext.request.contextPath}/assets/img/product-4.jpg"
                           alt="Product Image"
                           style="width: 40px; height: 40px; object-fit: cover;"></td>
                  <td>Product #4</td>
                  <td>30</td>
                  <td>$300.00</td>
                  <td>23-08-2018 09:12:03</td>
                  <td>Michael K. Ledford</td>
                  <td><span class="badge bg-success">Delivered</span></td>
                </tr>
                <tr>
                  <th scope="row">5</th>
                  <td><img src="${pageContext.request.contextPath}/assets/img/product-1.jpg"
                           alt="Product Image"
                           style="width: 40px; height: 40px; object-fit: cover;"></td>
                  <td>Product #5</td>
                  <td>15</td>
                  <td>$120.00</td>
                  <td>22-08-2018 10:15:00</td>
                  <td>Anna Nelson</td>
                  <td><span class="badge bg-warning text-dark">In Transit</span></td>
                </tr>
                <tr>
                  <th scope="row">6</th>
                  <td><img src="${pageContext.request.contextPath}/assets/img/product-2.jpg"
                           alt="Product Image"
                           style="width: 40px; height: 40px; object-fit: cover;"></td>
                  <td>Product #6</td>
                  <td>10</td>
                  <td>$90.00</td>
                  <td>21-08-2018 11:30:45</td>
                  <td>David Muldon</td>
                  <td><span class="badge bg-success">Delivered</span></td>
                </tr>
                <tr>
                  <th scope="row">7</th>
                  <td><img src="${pageContext.request.contextPath}/assets/img/product-3.jpg"
                           alt="Product Image"
                           style="width: 40px; height: 40px; object-fit: cover;"></td>
                  <td>Product #7</td>
                  <td>18</td>
                  <td>$150.00</td>
                  <td>20-08-2018 13:45:20</td>
                  <td>Maria Hudson</td>
                  <td><span class="badge bg-warning text-dark">In Transit</span></td>
                </tr>
                <tr>
                  <th scope="row">8</th>
                  <td><img src="${pageContext.request.contextPath}/assets/img/product-4.jpg"
                           alt="Product Image"
                           style="width: 40px; height: 40px; object-fit: cover;"></td>
                  <td>Product #8</td>
                  <td>22</td>
                  <td>$210.00</td>
                  <td>19-08-2018 15:00:00</td>
                  <td>Rachel J. Wicker</td>
                  <td><span class="badge bg-success">Delivered</span></td>
                </tr>
                <tr>
                  <th scope="row">9</th>
                  <td><img src="${pageContext.request.contextPath}/assets/img/product-1.jpg"
                           alt="Product Image"
                           style="width: 40px; height: 40px; object-fit: cover;"></td>
                  <td>Product #9</td>
                  <td>14</td>
                  <td>$110.00</td>
                  <td>18-08-2018 16:10:10</td>
                  <td>Patricia J. King</td>
                  <td><span class="badge bg-warning text-dark">In Transit</span></td>
                </tr>
                <tr>
                  <th scope="row">10</th>
                  <td><img src="${pageContext.request.contextPath}/assets/img/product-2.jpg"
                           alt="Product Image"
                           style="width: 40px; height: 40px; object-fit: cover;"></td>
                  <td>Product #10</td>
                  <td>16</td>
                  <td>$130.00</td>
                  <td>17-08-2018 17:25:30</td>
                  <td>Michael K. Ledford</td>
                  <td><span class="badge bg-success">Delivered</span></td>
                </tr>
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div> <!-- End Recent Orders Table -->

      <!-- Customer Acquisition Chart -->
      <div class="col-lg-4 d-flex">
        <div class="card h-100 w-100">
          <div class="card-body">
            <h5 class="card-title">Thu Hút Khách Hàng <span>| Tuần Này</span></h5>
            <div id="customerAcquisitionChart"></div>
            <script>
              document.addEventListener("DOMContentLoaded", () => {
                if (typeof ApexCharts !== 'undefined' && document.querySelector("#customerAcquisitionChart")) {
                  new ApexCharts(document.querySelector("#customerAcquisitionChart"), {
                    series: [{
                      name: 'Quay Lại',
                      data: [30, 45, 60, 40, 35, 50, 70] // Placeholder
                    }, {
                      name: 'Lần Đầu',
                      data: [20, 25, 30, 50, 70, 80, 90] // Placeholder
                    }],
                    chart: { type: 'area', height: 365, toolbar: { show: false } },
                    colors: ['#4154f1', '#ff771d'], // Blue and Orange/Pink
                    dataLabels: { enabled: false },
                    stroke: { curve: 'smooth', width: 2 },
                    xaxis: {
                      categories: ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"],
                      labels: { style: { colors: '#8c909a', fontSize: '12px' } }
                    },
                    yaxis: {
                      min: 0,
                      labels: { style: { colors: '#8c909a', fontSize: '12px' } }
                    },
                    legend: {
                      position: 'top',
                      horizontalAlign: 'right',
                      floating: true,
                      offsetY: -25,
                      offsetX: -5,
                      labels: { colors: '#333' },
                      markers: { width: 10, height: 10 }
                    },
                    fill: {
                      type: "gradient",
                      gradient: {
                        shadeIntensity: 1,
                        opacityFrom: 0.6,
                        opacityTo: 0.2,
                        stops: [0, 90, 100]
                      }
                    },
                    tooltip: {
                      y: {
                        formatter: function (val) {
                          return val + " customers"
                        }
                      }
                    }
                  }).render();
                }
              });
            </script>
          </div>
        </div>
      </div> <!-- End Customer Acquisition Chart -->
    </div> <!-- End Second Row -->
  </section>

</main><!-- End #main -->