package com.ecommerce;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        if (email != null && password != null
                && !email.trim().isEmpty()
                && !password.trim().isEmpty()) {

            response.sendRedirect("index.jsp");

        } else {

            response.setContentType("text/html;charset=UTF-8");
            response.getWriter().println(
                    "<h3>Please enter email and password.</h3>"
            );
        }
    }
}