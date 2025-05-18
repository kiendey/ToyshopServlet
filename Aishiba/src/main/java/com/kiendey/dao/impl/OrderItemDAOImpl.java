package com.kiendey.dao.impl;

import com.kiendey.dao.OrderItemDAO;
import com.kiendey.model.OrderItem;
import com.kiendey.model.OrderItemPK;
import com.kiendey.utils.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

public class OrderItemDAOImpl implements OrderItemDAO {

    @Override
    public void createOrderItem(String orderId, String toyId, int quantity) {
        Transaction transaction = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            transaction = session.beginTransaction();

            OrderItemPK id = new OrderItemPK(orderId, toyId);
            OrderItem orderItem = new OrderItem();
            orderItem.setId(id);
            orderItem.setQuantity(quantity);

            session.persist(orderItem);
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            throw new RuntimeException("Error creating OrderItem: " + e.getMessage(), e);
        }
    }

    @Override
    public OrderItem readOrderItem(String orderId, String toyId) {
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            OrderItemPK id = new OrderItemPK(orderId, toyId);
            return session.get(OrderItem.class, id);
        } catch (Exception e) {
            throw new RuntimeException("Error reading OrderItem: " + e.getMessage(), e);
        }
    }

    @Override
    public void updateOrderItem(String orderId, String toyId, int quantity) {
        Transaction transaction = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            transaction = session.beginTransaction();

            OrderItemPK id = new OrderItemPK(orderId, toyId);
            OrderItem orderItem = session.get(OrderItem.class, id);
            if (orderItem != null) {
                orderItem.setQuantity(quantity);
                session.merge(orderItem);
            }

            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            throw new RuntimeException("Error updating OrderItem: " + e.getMessage(), e);
        }
    }

    @Override
    public void deleteOrderItem(String orderId, String toyId) {
        Transaction transaction = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            transaction = session.beginTransaction();

            OrderItemPK id = new OrderItemPK(orderId, toyId);
            OrderItem orderItem = session.get(OrderItem.class, id);
            if (orderItem != null) {
                session.remove(orderItem);
            }

            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            throw new RuntimeException("Error deleting OrderItem: " + e.getMessage(), e);
        }
    }

    @Override
    public void clearOrderItems(String orderId) {
        Transaction transaction = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            transaction = session.beginTransaction();

            String hql = "DELETE FROM OrderItem oi WHERE oi.id.orderId = :orderId";
            Query<?> query = session.createQuery(hql)
                    .setParameter("orderId", orderId);
            query.executeUpdate();

            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            throw new RuntimeException("Error clearing OrderItems: " + e.getMessage(), e);
        }
    }
}