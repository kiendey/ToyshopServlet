<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="container" style="max-width:1100px;">
        <div class="row">
            <!-- Sidebar -->
            <div class="col-md-3 mb-4">
                <div class="sidebar rounded shadow-sm p-3 h-100">
                    <div class="text-center mb-3">
                        <img id="sidebarAvatar" src="${pageContext.request.contextPath}/user/img/user.jpg" alt="avatar" class="sidebar-avatar rounded-circle">
                        <div class="sidebar-username" id="sidebarUsername"></div>
                        <div class="text-muted" style="font-size:0.95rem;"><i class="fas fa-pen"></i> Sửa Hồ Sơ</div>
                    </div>
                    <nav class="nav flex-column sidebar-nav" id="sidebarNav">
                        <a class="nav-link active" href="#" data-tab="profile"><i class="far fa-user mr-2"></i> Hồ Sơ</a>
                        <a class="nav-link" href="#" data-tab="password"><i class="fas fa-key mr-2"></i> Đổi Mật Khẩu</a>
                        <a class="nav-link" href="#" data-tab="address"><i class="fas fa-map-marker-alt mr-2"></i> Địa Chỉ</a>
                        <a class="nav-link" href="#" data-tab="orders"><i class="fas fa-box mr-2"></i> Đơn Mua</a>
                    </nav>
                </div>
            </div>
            <!-- Main Content Tabs -->
            <div class="col-md-9">
                <div class="profile-card">
                    <!-- Tab: Hồ sơ -->
                    <div class="tab-content" id="tab-profile">
                        <div class="profile-title">Hồ Sơ Của Tôi</div>
                        <div class="profile-desc">Quản lý thông tin hồ sơ để bảo mật tài khoản</div>
                        <form id="profileForm" class="profile-form">
                            <div class="form-group row">
                                <label class="col-sm-4 col-form-label">Tên đăng nhập</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" id="username" readonly>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-4 col-form-label">Tên</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" id="fullname">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-4 col-form-label">Email</label>
                                <div class="col-sm-8 pt-2" id="emailView">
                                    <span id="email"></span>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-4 col-form-label">Số điện thoại</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" id="phone" placeholder="Chưa cập nhật">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-4 col-form-label">Giới tính</label>
                                <div class="col-sm-8 pt-2">
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" name="gender" id="genderMale" value="Nam">
                                        <label class="form-check-label" for="genderMale">Nam</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" name="gender" id="genderFemale" value="Nữ">
                                        <label class="form-check-label" for="genderFemale">Nữ</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" name="gender" id="genderOther" value="Khác">
                                        <label class="form-check-label" for="genderOther">Khác</label>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-4 col-form-label">Ngày sinh</label>
                                <div class="col-sm-8">
                                    <input type="date" class="form-control" id="birthday" max="9999-12-31">
                                </div>
                            </div>
                            <div class="form-group row">
                                <div class="col-sm-4 text-center">
                                    <img id="avatarPreview" class="profile-avatar" src="${pageContext.request.contextPath}/user/img/user.jpg" alt="avatar">
                                    <input type="file" id="avatarInput" accept="image/*" class="form-control-file mb-2 mt-2" style="display:none;">
                                    <button type="button" class="btn btn-outline-secondary btn-sm mb-2" onclick="document.getElementById('avatarInput').click()">Chọn Ảnh</button>
                                    <small class="text-muted text-center d-block">Dung lượng file tối đa 1 MB<br>Định dạng: JPEG, PNG</small>
                                </div>
                                <div class="col-sm-8 d-flex align-items-end">
                                    <button type="submit" class="btn btn-save mr-2">Lưu</button>
                                    <button type="button" class="btn btn-outline-secondary" id="logoutBtn">
                                        <i class="fa fa-sign-out-alt mr-1"></i>Đăng xuất
                                    </button>
                                </div>
                            </div>
                            <div id="profileAlert" class="alert mt-3 d-none"></div>
                        </form>
                    </div>
                    <!-- Tab: Đổi mật khẩu -->
                    <div class="tab-content d-none" id="tab-password">
                        <div class="profile-title">Đổi Mật Khẩu</div>
                        <form id="passwordForm">
                            <div class="form-group">
                                <label>Mật khẩu hiện tại</label>
                                <input type="password" class="form-control" id="oldPassword" required>
                            </div>
                            <div class="form-group">
                                <label>Mật khẩu mới</label>
                                <input type="password" class="form-control" id="newPassword" required>
                            </div>
                            <div class="form-group">
                                <label>Nhập lại mật khẩu mới</label>
                                <input type="password" class="form-control" id="confirmPassword" required>
                            </div>
                            <button type="submit" class="btn btn-save">Đổi mật khẩu</button>
                            <div id="passwordAlert" class="alert mt-3 d-none"></div>
                        </form>
                    </div>
                    <!-- Tab: Địa chỉ -->
                    <div class="tab-content d-none" id="tab-address">
                        <div class="profile-title">Địa Chỉ</div>
                        <form id="addressForm">
                            <div class="form-group">
                                <label>Địa chỉ nhận hàng</label>
                                <input type="text" class="form-control" id="address" placeholder="Nhập địa chỉ nhận hàng">
                            </div>
                            <button type="submit" class="btn btn-save">Thêm địa chỉ</button>
                            <div id="addressAlert" class="alert mt-3 d-none"></div>
                        </form>
                        <div class="mt-4">
                            <h6>Danh sách địa chỉ</h6>
                            <ul class="list-group" id="addressList"></ul>
                        </div>
                    </div>
                    <!-- Tab: Đơn mua -->
                    <div class="tab-content d-none" id="tab-orders">
                        <div class="profile-title">Đơn Mua</div>
                        <div id="ordersList">
                            <div class="text-muted">Bạn chưa có đơn hàng nào.</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
    // Tab switching logic
    document.addEventListener('DOMContentLoaded', function() {
        const tabs = document.querySelectorAll('.sidebar-nav .nav-link');
        const tabContents = document.querySelectorAll('.tab-content');
        tabs.forEach(tab => {
            tab.addEventListener('click', function(e) {
                e.preventDefault();
                tabs.forEach(t => t.classList.remove('active'));
                tabContents.forEach(c => c.classList.add('d-none'));
                this.classList.add('active');
                const tabId = this.getAttribute('data-tab');
                document.getElementById('tab-' + tabId).classList.remove('d-none');
                // Nếu chuyển sang tab địa chỉ thì render lại danh sách địa chỉ
                if (tabId === 'address') renderAddressList();
            });
        });
    });

    // Profile logic
    function getUserProfile() {
        const loginData = JSON.parse(localStorage.getItem('rememberLogin') || '{}');
        const userData = JSON.parse(localStorage.getItem('aishibaUser') || '{}');
        const profile = JSON.parse(localStorage.getItem('userProfile') || '{}');
        const address = localStorage.getItem('userAddress') || '';
        let isLoggedIn = false;
        let username = '', fullname = '', email = '', phone = '', gender = '', birthday = '', avatar = '';

        if (
            (loginData.email === 'user1@example.com' && loginData.password === '12345678') ||
            (loginData.email === 'admin' && loginData.password === '123456')
        ) {
            isLoggedIn = true;
            username = loginData.email;
            fullname = loginData.email === 'admin' ? 'Quản trị viên' : 'Người dùng mặc định';
            email = loginData.email;
        } else if (userData.email && loginData.email === userData.email && loginData.password === userData.password) {
            isLoggedIn = true;
            username = userData.email;
            fullname = userData.name || userData.email;
            email = userData.email;
        }
        if (profile && profile.email === email) {
            phone = profile.phone || '';
            gender = profile.gender || '';
            birthday = profile.birthday || '';
            avatar = profile.avatar || '';
            fullname = profile.fullname || fullname;
        }
        return { isLoggedIn, username, fullname, email, phone, gender, birthday, avatar, address };
    }

    function setUserProfile(profile) {
        localStorage.setItem('userProfile', JSON.stringify(profile));
    }

    // Địa chỉ: Lưu và hiển thị danh sách
    function getAddressList() {
        return JSON.parse(localStorage.getItem('userAddresses') || '[]');
    }
    function setAddressList(list) {
        localStorage.setItem('userAddresses', JSON.stringify(list));
    }
    function renderAddressList() {
        const addressList = document.getElementById('addressList');
        const addresses = getAddressList();
        if (addresses.length === 0) {
            addressList.innerHTML = '<li class="list-group-item text-muted">Chưa có địa chỉ nào.</li>';
        } else {
            addressList.innerHTML = addresses.map((addr, idx) =>
                `<li class="list-group-item d-flex justify-content-between align-items-center">
                    <span>${addr}</span>
                    <button class="btn btn-sm btn-danger" onclick="removeAddress(${idx})">Xóa</button>
                </li>`
            ).join('');
        }
    }
    window.removeAddress = function(idx) {
        let addresses = getAddressList();
        addresses.splice(idx, 1);
        setAddressList(addresses);
        renderAddressList();
        // Ẩn alert khi xóa địa chỉ
        const addressAlert = document.getElementById('addressAlert');
        addressAlert.classList.add('d-none');
    };

    document.addEventListener('DOMContentLoaded', function() {
        // Sidebar
        const sidebarUsername = document.getElementById('sidebarUsername');
        const sidebarAvatar = document.getElementById('sidebarAvatar');
        // Profile Form
        const usernameInput = document.getElementById('username');
        const fullnameInput = document.getElementById('fullname');
        const emailSpan = document.getElementById('email');
        const phoneInput = document.getElementById('phone');
        const birthdayInput = document.getElementById('birthday');
        const avatarPreview = document.getElementById('avatarPreview');
        const avatarInput = document.getElementById('avatarInput');
        const genderMale = document.getElementById('genderMale');
        const genderFemale = document.getElementById('genderFemale');
        const genderOther = document.getElementById('genderOther');
        const alertBox = document.getElementById('profileAlert');

        // Password Form
        const passwordForm = document.getElementById('passwordForm');
        const oldPassword = document.getElementById('oldPassword');
        const newPassword = document.getElementById('newPassword');
        const confirmPassword = document.getElementById('confirmPassword');
        const passwordAlert = document.getElementById('passwordAlert');

        // Address Form
        const addressForm = document.getElementById('addressForm');
        const addressInput = document.getElementById('address');
        const addressAlert = document.getElementById('addressAlert');
        const addressList = document.getElementById('addressList');

        // Orders
        const ordersList = document.getElementById('ordersList');

        let profile = getUserProfile();

        if (!profile.isLoggedIn) {
            window.location.href = 'login';
            return;
        }

        // Sidebar info
        sidebarUsername.textContent = profile.fullname || profile.username;
        sidebarAvatar.src = profile.avatar || 'img/user-default.png';

        // Profile tab
        usernameInput.value = profile.username;
        fullnameInput.value = profile.fullname || '';
        emailSpan.textContent = profile.email;
        phoneInput.value = profile.phone || '';
        birthdayInput.value = profile.birthday || '';
        avatarPreview.src = profile.avatar || 'img/user-default.png';
        if (profile.gender === 'Nam') genderMale.checked = true;
        else if (profile.gender === 'Nữ') genderFemale.checked = true;
        else if (profile.gender === 'Khác') genderOther.checked = true;

        avatarInput.addEventListener('change', function() {
            const file = this.files[0];
            if (file) {
                if (!file.type.startsWith('image/')) {
                    alertBox.textContent = 'Vui lòng chọn file ảnh hợp lệ!';
                    alertBox.className = 'alert alert-danger mt-3';
                    alertBox.classList.remove('d-none');
                    return;
                }
                if (file.size > 1024 * 1024) {
                    alertBox.textContent = 'Dung lượng file tối đa 1MB!';
                    alertBox.className = 'alert alert-danger mt-3';
                    alertBox.classList.remove('d-none');
                    return;
                }
                const reader = new FileReader();
                reader.onload = function(e) {
                    avatarPreview.src = e.target.result;
                    sidebarAvatar.src = e.target.result;
                };
                reader.readAsDataURL(file);
            }
        });

        document.getElementById('profileForm').addEventListener('submit', function(e) {
            e.preventDefault();
            const gender = genderMale.checked ? 'Nam' : genderFemale.checked ? 'Nữ' : genderOther.checked ? 'Khác' : '';
            let avatarData = avatarPreview.src;
            if (avatarData.includes('user-default.png')) avatarData = '';
            const updatedProfile = {
                email: profile.email,
                username: profile.username,
                fullname: fullnameInput.value,
                phone: phoneInput.value,
                gender: gender,
                birthday: birthdayInput.value,
                avatar: avatarData
            };
            setUserProfile(updatedProfile);
            alertBox.textContent = 'Cập nhật hồ sơ thành công!';
            alertBox.className = 'alert alert-success mt-3';
            alertBox.classList.remove('d-none');
            sidebarUsername.textContent = updatedProfile.fullname || updatedProfile.username;
            sidebarAvatar.src = avatarData || 'img/user-default.png';
        });

        // Đổi mật khẩu
        passwordForm.addEventListener('submit', function(e) {
            e.preventDefault();
            passwordAlert.classList.add('d-none');
            const loginData = JSON.parse(localStorage.getItem('rememberLogin') || '{}');
            let currentPassword = '';
            if (loginData.email === profile.email) {
                currentPassword = loginData.password;
            } else {
                const userData = JSON.parse(localStorage.getItem('aishibaUser') || '{}');
                if (userData.email === profile.email) currentPassword = userData.password;
            }
            if (oldPassword.value !== currentPassword) {
                passwordAlert.textContent = 'Mật khẩu hiện tại không đúng!';
                passwordAlert.className = 'alert alert-danger mt-3';
                passwordAlert.classList.remove('d-none');
                return;
            }
            if (newPassword.value.length < 6) {
                passwordAlert.textContent = 'Mật khẩu mới phải có ít nhất 6 ký tự!';
                passwordAlert.className = 'alert alert-danger mt-3';
                passwordAlert.classList.remove('d-none');
                return;
            }
            if (newPassword.value !== confirmPassword.value) {
                passwordAlert.textContent = 'Mật khẩu mới nhập lại không khớp!';
                passwordAlert.className = 'alert alert-danger mt-3';
                passwordAlert.classList.remove('d-none');
                return;
            }
            // Cập nhật mật khẩu trong localStorage
            if (loginData.email === profile.email) {
                loginData.password = newPassword.value;
                localStorage.setItem('rememberLogin', JSON.stringify(loginData));
            }
            let userData = JSON.parse(localStorage.getItem('aishibaUser') || '{}');
            if (userData.email === profile.email) {
                userData.password = newPassword.value;
                localStorage.setItem('aishibaUser', JSON.stringify(userData));
            }
            passwordAlert.textContent = 'Đổi mật khẩu thành công!';
            passwordAlert.className = 'alert alert-success mt-3';
            passwordAlert.classList.remove('d-none');
            oldPassword.value = '';
            newPassword.value = '';
            confirmPassword.value = '';
        });

        // Địa chỉ: Lưu và hiển thị danh sách
        renderAddressList();
        addressForm.addEventListener('submit', function(e) {
            e.preventDefault();
            let value = addressInput.value.trim();
            if (!value) {
                addressAlert.textContent = 'Vui lòng nhập địa chỉ!';
                addressAlert.className = 'alert alert-danger mt-3';
                addressAlert.classList.remove('d-none');
                return;
            }
            let addresses = getAddressList();
            addresses.push(value);
            setAddressList(addresses);
            addressInput.value = '';
            addressAlert.textContent = 'Thêm địa chỉ thành công!';
            addressAlert.className = 'alert alert-success mt-3';
            addressAlert.classList.remove('d-none');
            renderAddressList();
        });

        // Đơn mua (demo tĩnh)
        let orders = JSON.parse(localStorage.getItem('userOrders') || '[]');
        if (orders.length === 0) {
            ordersList.innerHTML = '<div class="text-muted">Bạn chưa có đơn hàng nào.</div>';
        } else {
            ordersList.innerHTML = orders.map(order => `
                <div class="border rounded p-3 mb-2">
                    <div><b>Mã đơn:</b> ${order.id}</div>
                    <div><b>Ngày:</b> ${order.date}</div>
                    <div><b>Trạng thái:</b> ${order.status}</div>
                    <div><b>Tổng tiền:</b> ${order.total}₫</div>
                </div>
            `).join('');
        }

        // Ẩn alert khi người dùng thay đổi thông tin
        [fullnameInput, phoneInput, birthdayInput, genderMale, genderFemale, genderOther, avatarInput].forEach(function(el) {
            el.addEventListener('input', function() {
                alertBox.classList.add('d-none');
            });
            el.addEventListener('change', function() {
                alertBox.classList.add('d-none');
            });
        });
        [oldPassword, newPassword, confirmPassword].forEach(function(el) {
            el.addEventListener('input', function() {
                passwordAlert.classList.add('d-none');
            });
            el.addEventListener('change', function() {
                passwordAlert.classList.add('d-none');
            });
        });
        addressInput.addEventListener('input', function() {
            addressAlert.classList.add('d-none');
        });
        addressInput.addEventListener('change', function() {
            addressAlert.classList.add('d-none');
        });

        // Đăng xuất
        document.getElementById('logoutBtn').onclick = function() {
            localStorage.removeItem('rememberLogin');
            alert('Bạn đã đăng xuất thành công!');
            window.location.href = 'login';
        };
    });

    // Bổ sung: cập nhật số lượng sản phẩm trong giỏ hàng trên header khi load trang
    document.addEventListener('DOMContentLoaded', function() {
        // Cập nhật số lượng sản phẩm trong giỏ hàng trên header (tổng số lượng, không phải số dòng)
        function updateCartCount() {
            let cart = JSON.parse(localStorage.getItem('cart') || '[]');
            let total = cart.reduce((sum, item) => sum + (item.quantity || 1), 0);
            document.getElementById('cartCount').textContent = total;
        }

        // Hiển thị userNav (tên tài khoản + đăng xuất) trên navbar nếu đã đăng nhập
        function updateUserNav() {
            const userNav = document.getElementById('userNav');
            const loginData = JSON.parse(localStorage.getItem('rememberLogin') || '{}');
            const userData = JSON.parse(localStorage.getItem('aishibaUser') || '{}');
            let isLoggedIn = false;
            let userName = '';

            if (
                (loginData.email === 'user1@example.com' && loginData.password === '12345678') ||
                (loginData.email === 'admin' && loginData.password === '123456') ||
                (userData.email && loginData.email === userData.email && loginData.password === userData.password)
            ) {
                isLoggedIn = true;
                userName = userData.name || loginData.email;
            }

            if (isLoggedIn && userNav) {
                userNav.innerHTML = `
                    <a href="user_info" class="nav-item nav-link" style="color:#D19C97;">
                        <i class="fa fa-user text-primary mr-2"></i>${userName ? userName : 'Tài khoản của tôi'}
                    </a>
                    <a href="#" class="nav-item nav-link" id="logoutNav" style="color:#D19C97;">
                        <i class="fa fa-sign-out-alt text-primary mr-2"></i>Đăng xuất
                    </a>
                `;
                document.getElementById('logoutNav').addEventListener('click', function(e) {
                    e.preventDefault();
                    localStorage.removeItem('rememberLogin');
                    window.location.href = 'login';
                });
            }
        }

        // Đổi màu các thành phần header cho đồng bộ
        function updateHeaderColor() {
            document.querySelectorAll('.bg-primary').forEach(e => e.style.background = '#D19C97');
            document.querySelectorAll('.text-primary').forEach(e => e.style.color = '#D19C97');
            document.querySelectorAll('.badge-primary').forEach(e => e.style.background = '#D19C97');
            document.querySelectorAll('.nav-link.active').forEach(e => e.style.color = '#D19C97');
        }

        updateCartCount();
        updateUserNav();
        updateHeaderColor();
    });
    </script>