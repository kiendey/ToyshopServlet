package com.kiendey.servlet.enduser;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;

@WebServlet("/enduser/checkout")
public class Checkout extends HttpServlet {
    @Override
    protected void doGet(jakarta.servlet.http.HttpServletRequest req, jakarta.servlet.http.HttpServletResponse resp) throws jakarta.servlet.ServletException, java.io.IOException {
        jakarta.servlet.RequestDispatcher header = req.getRequestDispatcher("/user/header.jsp");
        if (header != null) {
            header.include(req, resp);
        }
        jakarta.servlet.RequestDispatcher checkout = req.getRequestDispatcher("/user/checkout.jsp");
        if (checkout != null) {
            checkout.include(req, resp);
        }
        jakarta.servlet.RequestDispatcher footer = req.getRequestDispatcher("/user/footer.jsp");
        if (footer != null) {
            footer.include(req, resp);
        }

    }
}
