package com.kiendey.utils;

import at.favre.lib.bytes.Bytes;
import at.favre.lib.crypto.bcrypt.BCrypt;

public class PasswordUtil {

    // Số vòng lặp cost factor (càng cao càng bảo mật nhưng càng tốn tài nguyên)
    private static final int COST_FACTOR = 12;

    // Sử dụng BCrypt.Version.VERSION_2A là phổ biến nhất
    private static final BCrypt.Version VERSION = BCrypt.Version.VERSION_2A;

    // Một số thiết lập bảo mật theo mặc định
    private static final BCrypt.Hasher HASHER = BCrypt.withDefaults();

    // Trình xác minh mật khẩu với tùy chọn bảo mật
    private static final BCrypt.Verifyer VERIFYER = BCrypt.verifyer();

    /**
     * Mã hóa mật khẩu bằng BCrypt
     * @param plainPassword Mật khẩu gốc
     * @return Mật khẩu đã được mã hóa
     */
    public static String hashPassword(String plainPassword) {
        // Chuyển đổi mật khẩu thành mảng byte
        byte[] passwordBytes = plainPassword.getBytes();

        // Tạo hash với cost factor và phiên bản đã chỉ định
        byte[] hashedBytes = HASHER.hash(COST_FACTOR, passwordBytes);

        // Chuyển đổi kết quả sang chuỗi có thể đọc được
        return new String(hashedBytes);
    }

    /**
     * Kiểm tra mật khẩu gốc có khớp với mật khẩu đã được mã hóa không
     * @param plainPassword Mật khẩu gốc
     * @param hashedPassword Mật khẩu đã được mã hóa
     * @return true nếu mật khẩu khớp, ngược lại là false
     */
    public static boolean checkPassword(String plainPassword, String hashedPassword) {
        // Chuyển đổi dữ liệu thành mảng byte
        byte[] passwordBytes = plainPassword.getBytes();
        byte[] hashedBytes = hashedPassword.getBytes();

        // Xác minh mật khẩu
        BCrypt.Result result = VERIFYER.verify(passwordBytes, hashedBytes);

        // Trả về kết quả xác minh
        return result.verified;
    }

    /**
     * Tạo mật khẩu ngẫu nhiên với độ dài chỉ định
     * @param length Độ dài mật khẩu mong muốn
     * @return Mật khẩu ngẫu nhiên
     */
    public static String generateRandomPassword(int length) {
        // Tạo mật khẩu ngẫu nhiên với các ký tự chữ và số
        return Bytes.random(length).encodeHex();
    }

    /**
     * Kiểm tra độ mạnh của mật khẩu
     * @param password Mật khẩu cần kiểm tra
     * @return true nếu mật khẩu đủ mạnh, ngược lại là false
     */
    public static boolean isStrongPassword(String password) {
        // Kiểm tra độ dài tối thiểu
        if (password.length() < 8) {
            return false;
        }

        // Kiểm tra có chữ hoa
        if (!password.matches(".*[A-Z].*")) {
            return false;
        }

        // Kiểm tra có chữ thường
        if (!password.matches(".*[a-z].*")) {
            return false;
        }

        // Kiểm tra có số
        if (!password.matches(".*[0-9].*")) {
            return false;
        }

        // Kiểm tra có ký tự đặc biệt
        if (!password.matches(".*[!@#$%^&*()_+\\-=\\[\\]{};':\"\\\\|,.<>/?].*")) {
            return false;
        }

        return true;
    }
}

