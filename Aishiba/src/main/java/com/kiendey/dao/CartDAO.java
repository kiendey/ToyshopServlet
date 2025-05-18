package com.kiendey.dao;

import com.kiendey.model.Cart;
import com.kiendey.model.CartItem;

import java.util.List;
import java.util.Optional;

public interface CartDAO {
    // Define methods for CRUD operations on Cart entities
    void createCart(String userId);
    void updateCart(Cart cart);
    void addItemToCart(String userId, String toyId, int quantity);
    void removeItemFromCart(String userId, String toyId);
    void updateItemQuantity(String userId, String toyId, int quantity);
    List<CartItem> getCartItems(String cartId);
    double getCartTotal(String cartId);
    void clearCart(String userId);
    Cart readCart(String userId);
}
