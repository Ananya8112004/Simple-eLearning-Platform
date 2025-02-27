package com.amity.servlet;

import com.amity.db.DatabaseConnection;
import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;

public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        
        // Validate login credentials (you can expand this by checking in MySQL database)
        boolean isValidUser = DatabaseConnection.validateUser(username, password);
        
        if (isValidUser) {
            response.sendRedirect("dashboard.jsp");
        } else {
            response.sendRedirect("login.jsp?error=true");
        }
    }
}
