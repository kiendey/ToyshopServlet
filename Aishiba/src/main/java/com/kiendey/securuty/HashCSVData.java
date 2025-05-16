package com.kiendey.securuty;

import at.favre.lib.crypto.bcrypt.BCrypt;
import java.io.*;
import java.util.UUID;

public class HashCSVData {
    public static void main(String[] args) {
        String inputFile = "C:/path/to/brands.csv";
        String outputFile = "C:/path/to/brands_hashed.csv";

        try (BufferedReader reader = new BufferedReader(new FileReader(inputFile));
             BufferedWriter writer = new BufferedWriter(new FileWriter(outputFile))) {

            // Đọc dòng tiêu đề
            String header = reader.readLine();
            writer.write(header);
            writer.newLine();

            // Đọc từng dòng dữ liệu
            String line;
            while ((line = reader.readLine()) != null) {
                if (line.trim().isEmpty()) continue; // Bỏ qua dòng trống

                // Tách các cột
                String[] columns = line.split(",");
                if (columns.length < 5) continue; // Đảm bảo có đủ cột

                // Lấy các giá trị từ các cột
                String brandName = columns[1];
                String origin = columns[2];
                String password = columns.length > 5 ? columns[3].trim() : "";
                String email = columns.length > 6 ? columns[4].trim() : "";

                // Mã hóa password và email bằng bcrypt từ at.favre.lib
                String hashedPassword = password.isEmpty() ? "" : BCrypt.withDefaults().hashToString(12, password.toCharArray());
                String hashedEmail = email.isEmpty() ? "" : BCrypt.withDefaults().hashToString(12, email.toCharArray());

                // Ghi dòng mới vào file
                String newLine = String.join(",", brandName, origin, hashedPassword, hashedEmail);
                writer.write(newLine);
                writer.newLine();
            }

            System.out.println("File đã được mã hóa và lưu tại: " + outputFile);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}