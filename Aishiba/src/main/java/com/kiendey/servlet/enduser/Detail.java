package com.kiendey.servlet.enduser;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;

@WebServlet("/enduser/detail")
public class Detail extends HttpServlet {
    @Override
    protected void doGet(jakarta.servlet.http.HttpServletRequest req, jakarta.servlet.http.HttpServletResponse resp) throws jakarta.servlet.ServletException, java.io.IOException {
        jakarta.servlet.RequestDispatcher detail = req.getRequestDispatcher("/user/detail.jsp");
        if (detail != null) {
            detail.include(req, resp);
        }
    }
}