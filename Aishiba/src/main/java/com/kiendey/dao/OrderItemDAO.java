package com.kiendey.dao;

import com.kiendey.model.OrderItem;

public interface OrderItemDAO {
    // Define methods for CRUD operations on OrderItem entities
    void createOrderItem(String orderId, String toyId, int quantity);
    OrderItem readOrderItem(String orderId, String toyId);
    void updateOrderItem(String orderId, String toyId, int quantity);
    void deleteOrderItem(String orderId, String toyId);
    void clearOrderItems(String orderId);
    // Additional methods can be added as needed
}
