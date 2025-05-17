package com.kiendey.servlet;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/customer")
public class Customer extends  HttpServlet{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=UTF-8");
        PrintWriter out = resp.getWriter();
        //Call jsp files
//        RequestDispatcher head = req.getRequestDispatcher("/head.jsp");
//        if (head != null){
//            head.include(req, resp);
//        }
//        RequestDispatcher header = req.getRequestDispatcher("/header.jsp");
//        if (header != null){
//            header.include(req, resp);
//        }
//        RequestDispatcher sidebar = req.getRequestDispatcher("/sidebar.jsp");
//        if (sidebar != null){
//            sidebar.include(req, resp);
//        }
        RequestDispatcher customer = req.getRequestDispatcher("/customer.jsp");
        if (customer != null){
            customer.include(req, resp);
        }
//        RequestDispatcher footer = req.getRequestDispatcher("/footer.jsp");
//        if (footer != null){
//            footer.include(req, resp);
//        }
//        RequestDispatcher end = req.getRequestDispatcher("/end.jsp");
//        if (end != null){
//            end.include(req, resp);
//        }
    }
}
