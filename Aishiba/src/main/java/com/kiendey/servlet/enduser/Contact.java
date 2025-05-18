package com.kiendey.servlet.enduser;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;

@WebServlet("/enduser/contact")
public class Contact extends HttpServlet {
    @Override
    protected void doGet(jakarta.servlet.http.HttpServletRequest req, jakarta.servlet.http.HttpServletResponse resp) throws jakarta.servlet.ServletException, java.io.IOException {
        jakarta.servlet.RequestDispatcher contact = req.getRequestDispatcher("/user/contact.jsp");
        if (contact != null) {
            contact.include(req, resp);
        }
    }
}