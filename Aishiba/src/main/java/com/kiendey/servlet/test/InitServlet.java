package com.kiendey.servlet.test;

import com.kiendey.model.Permission;
import com.kiendey.model.Role;
import com.kiendey.model.User;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.HashSet;
import java.util.Set;

@WebServlet("/init")
public class InitServlet extends HttpServlet {
    private EntityManagerFactory emf;

    @Override
    public void init() throws ServletException {
        // Khởi tạo EntityManagerFactory khi servlet được tạo
        this.emf = Persistence.createEntityManagerFactory("myPersistenceUnit");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try (EntityManager em = emf.createEntityManager()) {
            em.getTransaction().begin();

            // Tạo Permission
            Permission viewPermission = new Permission();
            viewPermission.setName("VIEW");
            viewPermission.setDescription("Permission to view content");

            // Kiểm tra permission
            Permission existingPermission = em.createQuery("SELECT p FROM Permission p WHERE p.name = :name", Permission.class)
                    .setParameter("name", "VIEW")
                    .getResultList()
                    .stream()
                    .findFirst()
                    .orElse(null);

            if (existingPermission == null) {
                em.persist(viewPermission);
            } else {
                viewPermission = existingPermission;
            }

            // Tạo Role với Permission
            Role userRole = new Role();
            userRole.setName("USER");
            userRole.setDescription("Regular user role");

            // Kiểm tra role
            Role existingRole = em.createQuery("SELECT r FROM Role r WHERE r.name = :name", Role.class)
                    .setParameter("name", "USER")
                    .getResultList()
                    .stream()
                    .findFirst()
                    .orElse(null);

            if (existingRole == null) {
                // Thiết lập permission cho role
                Set<Permission> permissions = new HashSet<>();
                permissions.add(viewPermission);
                userRole.setPermissions(permissions);

                em.persist(userRole);
            } else {
                userRole = existingRole;
            }

            // Kiểm tra xem User đã tồn tại hay chưa
            User existingUser = em.createQuery("SELECT u FROM User u WHERE u.id = :id", User.class)
                    .setParameter("id", "Kien01")
                    .getResultList()
                    .stream()
                    .findFirst()
                    .orElse(null);

            User user;
            if (existingUser == null) {
                // Nếu chưa tồn tại, tạo mới
                user = new User();
                //ID tự sinh UUID
                user.setName("Kien01");
                user.setRole(userRole);
                em.merge(user);
            } else {
                // Nếu đã tồn tại, cập nhật
                user = existingUser;
                user.setName("Test User");
                user.setRole(userRole);
                // Không cần gọi merge ở đây vì đối tượng đã được quản lý
            }


            em.getTransaction().commit();
            resp.getWriter().write("Complete user data created successfully!");
        } catch (Exception e) {
            e.printStackTrace();
            resp.getWriter().write("Error: " + e.getMessage());
        }
    }


    @Override
    public void destroy() {
        emf.close();
    }
}
