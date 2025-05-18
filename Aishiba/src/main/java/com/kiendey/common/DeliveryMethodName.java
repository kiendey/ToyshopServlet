package com.kiendey.common;

import lombok.Getter;

@Getter
public enum DeliveryMethodName {
//    STANDARD("Tiêu chuẩn"),        // Giao hàng tiêu chuẩn
//    EXPRESS("Nhanh"),              // Giao hàng nhanh
//    SAME_DAY("Trong ngày"),        // Giao hàng trong ngày
//    STORE_PICKUP("Lấy tại cửa hàng"); // Nhận hàng tại cửa hàng

    Tiêu_chuẩn("Tiêu chuẩn"),        // Giao hàng tiêu chuẩn
    Nhanh("Nhanh"),              // Giao hàng nhanh
    Hỏa_tốc("Hỏa tốc"),        // Giao hàng trong ngày
    Lấy_tại_cửa_hàng("Lấy tại cửa hàng"); // Nhận hàng tại cửa hàng
    private final String displayName;

    DeliveryMethodName(String displayName) {
        this.displayName = displayName;
    }

}
