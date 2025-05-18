package com.kiendey.common;

import lombok.Getter;

@Getter
public enum PaymentMethodName {
//    CREDIT_CARD("Thẻ tín dụng"),       // Thẻ tín dụng
//    DEBIT_CARD("Thẻ ghi nợ"),          // Thẻ ghi nợ     // PayPal
//    BANK_TRANSFER("Chuyển khoản ngân hàng"), // Chuyển khoản ngân hàng
//    CASH("Tiền mặt");                   // Tiền mặt

    Thẻ_tín_dụng("Thẻ tín dụng"),       // Thẻ tín dụng
    Thẻ_ghi_nợ("Thẻ ghi nợ"),          // Thẻ ghi nợ     // PayPal
    Chuyển_khoản_ngân_hàng("Chuyển khoản ngân hàng"), // Chuyển khoản ngân hàng
    Tiền_mặt("Tiền mặt");                   // Tiền mặt
    private final String displayName;

    PaymentMethodName(String displayName) {
        this.displayName = displayName;
    }

}
