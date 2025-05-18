package com.kiendey.common;

import lombok.Getter;

@Getter
public enum OrderStatus {
    CHO_XU_LY("Chờ xử lý"),// Đơn hàng vừa được tạo, chưa được xử lý.
    DA_XAC_NHAN("Đã xác nhận"),// Đơn hàng đã được xác nhận bởi hệ thống hoặc nhân viên.
    DANG_GIAO_HANG("Đang giao hàng"),// Đơn hàng đã được gửi đi từ kho.
    HOAN_THANH("Đã giao tới khách"),// Đơn hàng đã đến tay khách hàng.
    DA_HUY("Đã hủy");// Đơn hàng bị hủy bởi khách hàng hoặc hệ thống.

    private final String displayName;

    OrderStatus(String displayName) {
        this.displayName = displayName;
    }

}
