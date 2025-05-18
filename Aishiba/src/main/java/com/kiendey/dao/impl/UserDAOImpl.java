package com.kiendey.dao.impl;

import com.kiendey.dao.UserDAO;
import com.kiendey.model.User;
import com.kiendey.utils.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.Transaction;
import java.util.List;

public class UserDAOImpl implements UserDAO {

    @Override
    public void createUser(User user) {
        Transaction transaction = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            transaction = session.beginTransaction();
            session.persist(user);
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            throw new RuntimeException("Error creating User: " + e.getMessage(), e);
        }
    }

    @Override
    public User readUser(String id) {
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            return session.get(User.class, id);
        } catch (Exception e) {
            throw new RuntimeException("Error reading User: " + e.getMessage(), e);
        }
    }

    @Override
    public void updateUser(User user) {
        Transaction transaction = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            transaction = session.beginTransaction();
            session.merge(user);
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            throw new RuntimeException("Error updating User: " + e.getMessage(), e);
        }
    }

    @Override
    public void deleteUser(String id) {
        Transaction transaction = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            transaction = session.beginTransaction();
            User user = session.get(User.class, id);
            if (user != null) {
                session.remove(user);
            }
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            throw new RuntimeException("Error deleting User: " + e.getMessage(), e);
        }
    }

    @Override
    public List<User> getAllUsers() {
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            return session.createQuery("FROM User", User.class).list();
        } catch (Exception e) {
            throw new RuntimeException("Error getting all Users: " + e.getMessage(), e);
        }
    }

    @Override
    public List<User> searchUsersByName(String name) {
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            String hql = "FROM User u WHERE u.name LIKE :name";
            return session.createQuery(hql, User.class)
                    .setParameter("name", "%" + name + "%")
                    .list();
        } catch (Exception e) {
            throw new RuntimeException("Error searching Users by name: " + e.getMessage(), e);
        }
    }
}