package com.kiendey.dao.impl;

import com.kiendey.dao.CartItemDAO;
import com.kiendey.model.Cart;
import com.kiendey.model.CartItem;
import com.kiendey.model.Toy;
import com.kiendey.utils.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.util.List;

public class CartItemDAOImpl implements CartItemDAO {
    /**
     * Tạo một mục đơn hàng mới và lưu vào cơ sở dữ liệu.
     *
     * @param cartId Đối tượng Order mà mục này thuộc về.
     * @param toyId Đối tượng Product được đặt hàng.
     * @param quantity Số lượng sản phẩm.
     */
    @Override
    public void createCartItem(String cartId, String toyId, int quantity) {
        Transaction transaction = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            transaction = session.beginTransaction();

            Toy toy = session.get(Toy.class, toyId);
            if (toy == null) {
                throw new RuntimeException("Toy not found with ID: " + toyId);
            }
            Cart cart = session.get(Cart.class, cartId);
            if (cart == null) {
                throw new RuntimeException("cart not found with ID: " + cartId);
            }
            CartItem cartItem = new CartItem();
            cartItem.setToy(toy);
            cartItem.setCart(cart);
            cartItem.setQuantity(quantity);

            session.persist(cartItem);
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            throw new RuntimeException("Error creating CartItem: " + e.getMessage(), e);
        }
    }

    @Override
    public CartItem readCartItem(String cartId, String toyId) {
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            Toy toy = session.get(Toy.class, toyId);
            if (toy == null) {
                throw new RuntimeException("Toy not found with ID: " + toyId);
            }
            Cart cart = session.get(Cart.class, cartId);
            if (cart == null) {
                throw new RuntimeException("cart not found with ID: " + cartId);
            }
            CartItem cartItem = new CartItem();
            cartItem.setToy(toy);
            cartItem.setCart(cart);
            return cartItem;
        } catch (Exception e) {
            throw new RuntimeException("Error reading CartItem: " + e.getMessage(), e);
        }
    }

    @Override
    public List<CartItem> getCartItem(String cartId) {
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            String hql = "FROM CartItem ci WHERE ci.id = :cartId";
            return session.createQuery(hql, CartItem.class)
                    .setParameter("cartId", cartId)
                    .list();
        } catch (Exception e) {
            throw new RuntimeException("Error getting CartItems: " + e.getMessage(), e);
        }
    }

    @Override
    public void updateCartItem(String cartId, String toyId, int quantity) {
        Transaction transaction = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            transaction = session.beginTransaction();

            Toy toy = session.get(Toy.class, toyId);
            if (toy == null) {
                throw new RuntimeException("Toy not found with ID: " + toyId);
            }
            Cart cart = session.get(Cart.class, cartId);
            if (cart == null) {
                throw new RuntimeException("cart not found with ID: " + cartId);
            }
            CartItem cartItem = new CartItem();
            cartItem.setToy(toy);
            cartItem.setCart(cart);
            cartItem.setQuantity(quantity);
            session.merge(cartItem);

            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            throw new RuntimeException("Error updating CartItem: " + e.getMessage(), e);
        }
    }

    @Override
    public void deleteCartItem(String cartId, String toyId) {
        Transaction transaction = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            transaction = session.beginTransaction();

            Toy toy = session.get(Toy.class, toyId);
            if (toy == null) {
                throw new RuntimeException("Toy not found with ID: " + toyId);
            }
            Cart cart = session.get(Cart.class, cartId);
            if (cart == null) {
                throw new RuntimeException("cart not found with ID: " + cartId);
            }
            CartItem cartItem = new CartItem();
            cartItem.setToy(toy);
            cartItem.setCart(cart);
            session.remove(cartItem);

            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            throw new RuntimeException("Error deleting CartItem: " + e.getMessage(), e);
        }
    }

    @Override
    public void deleteByCartId(String cartId) {
        Transaction transaction = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            transaction = session.beginTransaction();

            String hql = "DELETE FROM CartItem ci WHERE ci.id = :cartId";
            session.createQuery(hql)
                    .setParameter("cartId", cartId)
                    .executeUpdate();

            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            throw new RuntimeException("Error deleting CartItems by cartId: " + e.getMessage(), e);
        }
    }
}