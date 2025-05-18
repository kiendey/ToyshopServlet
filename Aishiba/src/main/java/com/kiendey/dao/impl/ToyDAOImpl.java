package com.kiendey.dao.impl;

import com.kiendey.dao.ToyDAO;
import com.kiendey.model.Toy;
import com.kiendey.utils.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.util.List;

public class ToyDAOImpl implements ToyDAO {
    // Implement the methods defined in the ToyDAO interface
    
    @Override
    public void createToy(Toy toy) {
        Transaction transaction = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            transaction = session.beginTransaction();
            session.persist(toy); // Lưu đối tượng user
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace(); // Hoặc xử lý exception tốt hơn
        }
        
    }

    @Override
    public Toy readToy(String id) {
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            return session.get(Toy.class, id);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override
    public void updateToy(Toy toy) {
        Transaction transaction = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            transaction = session.beginTransaction();
            session.merge(toy);
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
    }

    @Override
    public void deleteToy(String id) {
        Transaction transaction = null;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            transaction = session.beginTransaction();
            Toy toy = session.get(Toy.class, id);
            if (toy != null) {
                session.remove(toy);
            }
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
    }

    @Override
    public List<Toy> getAllToys() {
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            return session.createQuery("FROM Toy", Toy.class).list();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override
    public List<Toy> getToysByCategory(String categoryId) {
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            String hql = "FROM Toy t WHERE t.category.id = :categoryId";
            return session.createQuery(hql, Toy.class)
                    .setParameter("categoryId", categoryId)
                    .list();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override
    public List<Toy> searchToysByName(String name) {
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            String hql = "FROM Toy t WHERE t.name LIKE :name";
            return session.createQuery(hql, Toy.class)
                    .setParameter("name", "%" + name + "%")
                    .list();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}