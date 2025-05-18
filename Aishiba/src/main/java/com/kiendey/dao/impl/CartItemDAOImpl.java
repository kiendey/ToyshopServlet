package com.kiendey.dao.impl;

import com.kiendey.dao.CartItemDAO;
import com.kiendey.model.CartItem;
import com.kiendey.model.CartItemPK;
import com.kiendey.utils.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import java.util.List;

public class CartItemDAOImpl implements CartItemDAO {

    @Override
    public void createCartItem(String cartId, String toyId, int quantity) {
        Transaction transaction = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            transaction = session.beginTransaction();

            CartItemPK id = new CartItemPK(cartId, toyId);
            CartItem cartItem = new CartItem();
            cartItem.setId(id);
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
    public void readCartItem(String cartId, String toyId) {
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            CartItemPK id = new CartItemPK(cartId, toyId);
            session.get(CartItem.class, id);
        } catch (Exception e) {
            throw new RuntimeException("Error reading CartItem: " + e.getMessage(), e);
        }
    }

    @Override
    public List<CartItem> getCartItems(String cartId) {
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            String hql = "FROM CartItem ci WHERE ci.id.cartId = :cartId";
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

            CartItemPK id = new CartItemPK(cartId, toyId);
            CartItem cartItem = session.get(CartItem.class, id);
            if (cartItem != null) {
                cartItem.setQuantity(quantity);
                session.merge(cartItem);
            }

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

            CartItemPK id = new CartItemPK(cartId, toyId);
            CartItem cartItem = session.get(CartItem.class, id);
            if (cartItem != null) {
                session.remove(cartItem);
            }

            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            throw new RuntimeException("Error deleting CartItem: " + e.getMessage(), e);
        }
    }

    @Override
    public void clearCartItems(String cartId) {
        Transaction transaction = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            transaction = session.beginTransaction();

            String hql = "DELETE FROM CartItem ci WHERE ci.id.cartId = :cartId";
            session.createQuery(hql)
                    .setParameter("cartId", cartId)
                    .executeUpdate();

            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            throw new RuntimeException("Error clearing CartItems: " + e.getMessage(), e);
        }
    }

    @Override
    public void deleteByCartId(String cartId) {
        Transaction transaction = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            transaction = session.beginTransaction();

            String hql = "DELETE FROM CartItem ci WHERE ci.id.cartId = :cartId";
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