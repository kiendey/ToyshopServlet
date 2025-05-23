package com.kiendey.servlet;

import com.kiendey.dao.OrderDAO;
import com.kiendey.dao.impl.OrderDAOImpl;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet("/order")
public class Order extends HttpServlet {

    private OrderDAO orderDAO;

    public void init() {
        orderDAO = new OrderDAOImpl();
    }
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=UTF-8");

        //Call jsp files
        RequestDispatcher head = req.getRequestDispatcher("/head.jsp");
        if (head != null){
            head.include(req, resp);
        }
        RequestDispatcher header = req.getRequestDispatcher("/header.jsp");
        if (header != null){
            header.include(req, resp);
        }
        RequestDispatcher sidebar = req.getRequestDispatcher("/sidebar.jsp");
        if (sidebar != null){
            sidebar.include(req, resp);
        }

        RequestDispatcher order = req.getRequestDispatcher("/order.jsp");
        if (order != null){
            order.include(req, resp);
        }
        RequestDispatcher footer = req.getRequestDispatcher("/footer.jsp");
        if (footer != null){
            footer.include(req, resp);
        }
        RequestDispatcher end = req.getRequestDispatcher("/end.jsp");
        if (end != null){
            end.include(req, resp);
        }
    }
}