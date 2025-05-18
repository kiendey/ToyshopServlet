package com.kiendey.dao;

import java.util.List;

public interface CouponDAO {
    // Define methods for CRUD operations on Coupon entities
    void createCoupon(String couponCode, String description, double discountAmount);
    String readCoupon(String couponCode);
    void updateCoupon(String couponCode, String description, double discountAmount);
    void deleteCoupon(String couponCode);
    List<String> getAllCoupons();
    List<String> searchCouponsByDescription(String description);
}
