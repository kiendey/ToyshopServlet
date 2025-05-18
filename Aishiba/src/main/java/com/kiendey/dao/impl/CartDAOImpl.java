package com.kiendey.dao.impl;

import com.kiendey.dao.CartDAO;
import com.kiendey.model.Cart;
import com.kiendey.model.CartItem;
import com.kiendey.utils.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.Transaction;
import java.util.List;

public class CartDAOImpl implements CartDAO {

    @Override
    public void createCart(String userId) {
        Transaction transaction = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            transaction = session.beginTransaction();

            Cart cart = new Cart();
            session.persist(cart);
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            throw new RuntimeException("Error creating Cart: " + e.getMessage(), e);
        }
    }

    @Override
    public Cart readCart(String userId) {
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            String hql = "FROM Cart c WHERE c.userId = :userId";
            return session.createQuery(hql, Cart.class)
                    .setParameter("userId", userId)
                    .uniqueResult();
        } catch (Exception e) {
            throw new RuntimeException("Error reading Cart: " + e.getMessage(), e);
        }
    }

    @Override
    public void updateCart(Cart cart) {
        Transaction transaction = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            transaction = session.beginTransaction();
            session.merge(cart);
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            throw new RuntimeException("Error updating Cart: " + e.getMessage(), e);
        }
    }

    @Override
    public void addItemToCart(String userId, String toyId, int quantity) {
        Transaction transaction = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            transaction = session.beginTransaction();

            Cart cart = readCart(userId);
            if (cart == null) {
                createCart(userId);
                cart = readCart(userId);
            }

            CartItem cartItem = new CartItem();
            cartItem.getId().setCartId(cart.getId());
            cartItem.getId().setToyId(toyId);
            cartItem.setQuantity(quantity);

            session.persist(cartItem);
            updateCartTotal(cart.getId());

            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            throw new RuntimeException("Error adding item to Cart: " + e.getMessage(), e);
        }
    }

    @Override
    public void removeItemFromCart(String userId, String toyId) {
        Transaction transaction = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            transaction = session.beginTransaction();

            Cart cart = readCart(userId);
            if (cart != null) {
                String hql = "DELETE FROM CartItem ci WHERE ci.id.cartId = :cartId AND ci.id.toyId = :toyId";
                session.createQuery(hql)
                        .setParameter("cartId", cart.getId())
                        .setParameter("toyId", toyId)
                        .executeUpdate();

                updateCartTotal(cart.getId());
            }

            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            throw new RuntimeException("Error removing item from Cart: " + e.getMessage(), e);
        }
    }

    @Override
    public void updateItemQuantity(String userId, String toyId, int quantity) {
        Transaction transaction = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            transaction = session.beginTransaction();

            Cart cart = readCart(userId);
            if (cart != null) {
                String hql = "UPDATE CartItem ci SET ci.quantity = :quantity " +
                        "WHERE ci.id.cartId = :cartId AND ci.id.toyId = :toyId";
                session.createQuery(hql)
                        .setParameter("quantity", quantity)
                        .setParameter("cartId", cart.getId())
                        .setParameter("toyId", toyId)
                        .executeUpdate();

                updateCartTotal(cart.getId());
            }

            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            throw new RuntimeException("Error updating item quantity: " + e.getMessage(), e);
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
            throw new RuntimeException("Error getting Cart items: " + e.getMessage(), e);
        }
    }

    @Override
    public double getCartTotal(String cartId) {
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            String hql = "SELECT SUM(ci.quantity * t.price) FROM CartItem ci " +
                    "JOIN Toy t ON ci.id.toyId = t.id " +
                    "WHERE ci.id.cartId = :cartId";
            Double total = session.createQuery(hql, Double.class)
                    .setParameter("cartId", cartId)
                    .uniqueResult();
            return total != null ? total : 0.0;
        } catch (Exception e) {
            throw new RuntimeException("Error calculating Cart total: " + e.getMessage(), e);
        }
    }

    @Override
    public void clearCart(String userId) {
        Transaction transaction = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            transaction = session.beginTransaction();

            Cart cart = readCart(userId);
            if (cart != null) {
                String hql = "DELETE FROM CartItem ci WHERE ci.id.cartId = :cartId";
                session.createQuery(hql)
                        .setParameter("cartId", cart.getId())
                        .executeUpdate();

                session.merge(cart);
            }

            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            throw new RuntimeException("Error clearing Cart: " + e.getMessage(), e);
        }
    }

    private void updateCartTotal(String cartId) {
        double total = getCartTotal(cartId);
        Transaction transaction = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            transaction = session.beginTransaction();

            String hql = "UPDATE Cart c SET c.total = :total WHERE c.id = :cartId";
            session.createQuery(hql)
                    .setParameter("total", total)
                    .setParameter("cartId", cartId)
                    .executeUpdate();

            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            throw new RuntimeException("Error updating Cart total: " + e.getMessage(), e);
        }
    }
}