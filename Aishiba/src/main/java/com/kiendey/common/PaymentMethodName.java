package com.kiendey.common;

import lombok.Getter;

@Getter
public enum PaymentMethodName {
    CREDIT_CARD("Thẻ tín dụng"),       // Thẻ tín dụng
    DEBIT_CARD("Thẻ ghi nợ"),          // Thẻ ghi nợ     // PayPal
    BANK_TRANSFER("Chuyển khoản ngân hàng"), // Chuyển khoản ngân hàng
    CASH("Tiền mặt"),                   // Tiền mặt
    MOBILE_PAYMENT("Thanh toán di động"); // Thanh toán di động

    private final String displayName;

    PaymentMethodName(String displayName) {
        this.displayName = displayName;
    }

}
