package com.kiendey.dao;

import com.kiendey.model.Order;

import java.util.List;

public interface OrderDAO {
    // Define methods for CRUD operations on Order entities
    void createOrder(Order order);
    Order readOrder(String id);
    void updateOrder(Order order);
    void deleteOrder(String id);
    List<Order> getAllOrders();
    List<Order> getOrdersByUserId(String userId);
    List<Order> searchOrdersByStatus(String status);
}
