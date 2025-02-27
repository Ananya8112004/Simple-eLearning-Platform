package com.amity.servlet;

import java.io.IOException;
import java.sql.*;

import com.amity.db.DatabaseConnection; // Assuming your DBConnection class is in this package.

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class SignupServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmPassword");

        if (!password.equals(confirmPassword)) {
            response.sendRedirect("signup.jsp?error=Passwords do not match");
            return;
        }

        Connection conn = null;
        try {
            // Retrieve database connection from DBConnection utility class
            conn = DatabaseConnection.getConnection();

            // Check if the username already exists
            PreparedStatement checkUser = conn.prepareStatement("SELECT * FROM users WHERE username = ?");
            checkUser.setString(1, username);
            ResultSet rs = checkUser.executeQuery();

            if (rs.next()) {
                response.sendRedirect("signup.jsp?error=Username already exists");
            } else {
                // Insert new user into the database
                PreparedStatement insertUser = conn.prepareStatement("INSERT INTO users (username, password) VALUES (?, ?)");
                insertUser.setString(1, username);
                insertUser.setString(2, password);
                insertUser.executeUpdate();
                response.sendRedirect("login.jsp");
            }
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendRedirect("signup.jsp?error=Database error");
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}
