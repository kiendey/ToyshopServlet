package com.kiendey.dao;

import com.kiendey.model.CartItem;

import java.util.List;
import java.util.Optional;

public interface CartItemDAO {
    // Define methods for CRUD operations on CartItem entities
    void createCartItem(String cartId, String toyId, int quantity);
    CartItem readCartItem(String cartId, String toyId);
    List<CartItem> getCartItem(String cartId);
    void updateCartItem(String cartId, String toyId, int quantity);
    void deleteCartItem(String cartId, String toyId);
    void deleteByCartId(String cartId);

}
