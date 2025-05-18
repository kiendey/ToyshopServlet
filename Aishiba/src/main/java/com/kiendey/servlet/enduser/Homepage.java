package com.kiendey.servlet.enduser;


import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;

@WebServlet("/enduser/homepage")
public class Homepage extends HttpServlet {
    @Override
    protected void doGet(jakarta.servlet.http.HttpServletRequest req, jakarta.servlet.http.HttpServletResponse resp) throws jakarta.servlet.ServletException, java.io.IOException {
        jakarta.servlet.RequestDispatcher homepage = req.getRequestDispatcher("/user/index.jsp");
        if (homepage != null) {
            homepage.include(req, resp);
        }
    }
}