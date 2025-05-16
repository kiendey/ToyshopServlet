package com.kiendey.servlet;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/supplier")
public class Supplier extends HttpServlet{

    private static final long serialVersionUID = 1L;

    @Override
    public void init() throws ServletException {
        super.init();
        // Initialization code can go here if needed
    }

    @Override
    public void destroy() {
        super.destroy();
        // Cleanup code can go here if needed
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=UTF-8");
        PrintWriter out = resp.getWriter();
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

        RequestDispatcher supplier = req.getRequestDispatcher("/supplier.jsp");
        if (supplier != null){
            supplier.include(req, resp);
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
