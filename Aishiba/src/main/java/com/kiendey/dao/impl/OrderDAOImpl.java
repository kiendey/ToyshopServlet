package com.kiendey.dao.impl;

import com.kiendey.dao.OrderDAO;
import com.kiendey.model.Order;
import com.kiendey.utils.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.Transaction;
import java.util.List;

public class OrderDAOImpl implements OrderDAO {

    @Override
    public void createOrder(Order order) {
        Transaction transaction = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            transaction = session.beginTransaction();
            session.persist(order);
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            throw new RuntimeException("Error creating Order: " + e.getMessage(), e);
        }
    }

    @Override
    public Order readOrder(String id) {
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            return session.get(Order.class, id);
        } catch (Exception e) {
            throw new RuntimeException("Error reading Order: " + e.getMessage(), e);
        }
    }

    @Override
    public void updateOrder(Order order) {
        Transaction transaction = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            transaction = session.beginTransaction();
            session.merge(order);
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            throw new RuntimeException("Error updating Order: " + e.getMessage(), e);
        }
    }

    @Override
    public void deleteOrder(String id) {
        Transaction transaction = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            transaction = session.beginTransaction();
            Order order = session.get(Order.class, id);
            if (order != null) {
                session.remove(order);
            }
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            throw new RuntimeException("Error deleting Order: " + e.getMessage(), e);
        }
    }

    @Override
    public List<Order> getAllOrders() {
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            return session.createQuery("FROM Order", Order.class).list();
        } catch (Exception e) {
            throw new RuntimeException("Error getting all Orders: " + e.getMessage(), e);
        }
    }

    @Override
    public List<Order> getOrdersByUserId(String userId) {
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            String hql = "FROM Order o WHERE o.user.id = :userId";
            return session.createQuery(hql, Order.class)
                    .setParameter("userId", userId)
                    .list();
        } catch (Exception e) {
            throw new RuntimeException("Error getting Orders by userId: " + e.getMessage(), e);
        }
    }

    @Override
    public List<Order> searchOrdersByStatus(String status) {
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            String hql = "FROM Order o WHERE o.status = :status";
            return session.createQuery(hql, Order.class)
                    .setParameter("status", status)
                    .list();
        } catch (Exception e) {
            throw new RuntimeException("Error searching Orders by status: " + e.getMessage(), e);
        }
    }
}