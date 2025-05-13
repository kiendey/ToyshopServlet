package com.kiendey.servlet;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;

@WebServlet("/report-day")
public class ReportDay extends HttpServlet{
    protected void doGet(jakarta.servlet.http.HttpServletRequest req, jakarta.servlet.http.HttpServletResponse resp) throws jakarta.servlet.ServletException, java.io.IOException {
        resp.setContentType("text/html;charset=UTF-8");
        //Call jsp files
        jakarta.servlet.RequestDispatcher head = req.getRequestDispatcher("/head.jsp");
        if (head != null) {
            head.include(req, resp);
        }
        jakarta.servlet.RequestDispatcher header = req.getRequestDispatcher("/header.jsp");
        if (header != null) {
            header.include(req, resp);
        }
        jakarta.servlet.RequestDispatcher sidebar = req.getRequestDispatcher("/sidebar.jsp");
        if (sidebar != null) {
            sidebar.include(req, resp);
        }
        jakarta.servlet.RequestDispatcher reportDay = req.getRequestDispatcher("/report_day.jsp");
        if (reportDay != null) {
            reportDay.include(req, resp);
        }
        jakarta.servlet.RequestDispatcher footer = req.getRequestDispatcher("/footer.jsp");
        if (footer != null) {
            footer.include(req, resp);
        }
        jakarta.servlet.RequestDispatcher end = req.getRequestDispatcher("/end.jsp");
        if (end != null) {
            end.include(req, resp);
        }
    }
}
