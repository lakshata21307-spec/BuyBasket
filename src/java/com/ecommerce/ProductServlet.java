package com.ecommerce;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

@WebServlet("/products")
public class ProductServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        try {
            Connection con = DBConnection.getConnection();

            if (con == null) {
                out.println("<h3>Database connection is NULL</h3>");
                return;
            }

            String sql = "SELECT * FROM products";
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<meta charset='UTF-8'>");
            out.println("<title>BuyBasket - Products</title>");

            out.println("<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css'>");

            out.println("<style>");

            out.println("*{margin:0;padding:0;box-sizing:border-box;}");

            out.println("body{font-family:Arial;background:#f5f7fb;color:#222;}");

            out.println(".navbar{background:linear-gradient(90deg,#6a11cb,#2575fc);"
                    + "padding:18px 60px;display:flex;justify-content:space-between;"
                    + "align-items:center;color:white;}");

            out.println(".logo{font-size:28px;font-weight:bold;}");

            out.println(".nav-links a{color:white;text-decoration:none;"
                    + "margin-left:25px;font-size:16px;}");

            out.println(".nav-links a:hover{color:#ffe082;}");

            out.println(".heading{text-align:center;padding:45px 20px 25px;}");

            out.println(".heading h1{font-size:38px;color:#333;margin-bottom:10px;}");

            out.println(".heading p{color:#666;font-size:17px;}");

            out.println(".container{display:flex;justify-content:center;"
                    + "gap:25px;flex-wrap:wrap;padding:25px 60px 60px;}");

            out.println(".card{background:white;width:270px;padding:25px;"
                    + "border-radius:15px;text-align:center;"
                    + "box-shadow:0 5px 20px rgba(0,0,0,0.12);"
                    + "transition:0.3s;}");

            out.println(".card:hover{transform:translateY(-8px);}");

            out.println(".icon{font-size:55px;margin-bottom:15px;}");

            out.println(".card h2{color:#333;margin-bottom:10px;}");

            out.println(".description{color:#666;min-height:40px;}");

            out.println(".price{color:#6a11cb;font-size:24px;"
                    + "font-weight:bold;margin:15px 0 5px;}");

            out.println(".quantity{color:#777;margin-bottom:18px;}");

            out.println(".btn{display:inline-block;padding:9px 15px;"
                    + "border-radius:6px;text-decoration:none;color:white;"
                    + "margin:4px;font-size:14px;}");

            out.println(".edit{background:#2575fc;}");

            out.println(".delete{background:#e53935;}");

            out.println(".add{display:inline-block;background:#ff9800;"
                    + "color:white;padding:12px 22px;border-radius:25px;"
                    + "text-decoration:none;font-weight:bold;margin-top:10px;}");

            out.println("footer{background:#222;color:white;text-align:center;"
                    + "padding:20px;margin-top:20px;}");

            out.println("</style>");
            out.println("</head>");

            out.println("<body>");

            out.println("<div class='navbar'>");

            out.println("<div class='logo'>"
                    + "<i class='fa-solid fa-bag-shopping'></i> BuyBasket"
                    + "</div>");

            out.println("<div class='nav-links'>");
            out.println("<a href='index.jsp'>Home</a>");
            out.println("<a href='products'>Products</a>");
            out.println("<a href='addProduct.jsp'>Add Product</a>");
            out.println("<a href='login.jsp'>Login</a>");
            out.println("</div>");

            out.println("</div>");

            out.println("<div class='heading'>");

            out.println("<h1>Our Products</h1>");

            out.println("<p>Explore our latest products</p>");

            out.println("<a class='add' href='addProduct.jsp'>"
                    + "+ Add New Product</a>");

            out.println("</div>");

            out.println("<div class='container'>");

            while (rs.next()) {

                String name = rs.getString("name");

                String icon = "fa-box";

                if (name.toLowerCase().contains("laptop")) {
                    icon = "fa-laptop";
                } else if (name.toLowerCase().contains("phone")) {
                    icon = "fa-mobile-screen-button";
                } else if (name.toLowerCase().contains("headphone")) {
                    icon = "fa-headphones";
                } else if (name.toLowerCase().contains("watch")) {
                    icon = "fa-clock";
                }

                out.println("<div class='card'>");

                out.println("<div class='icon'>"
                        + "<i class='fa-solid " + icon + "'></i>"
                        + "</div>");

                out.println("<h2>" + rs.getString("name") + "</h2>");

                out.println("<p class='description'>"
                        + rs.getString("description")
                        + "</p>");

                out.println("<div class='price'>₹"
                        + rs.getDouble("price")
                        + "</div>");

                out.println("<div class='quantity'>Stock: "
                        + rs.getInt("quantity")
                        + "</div>");

                out.println("<a class='btn edit' href='editProduct?id="
                        + rs.getInt("id")
                        + "'>"
                        + "<i class='fa-solid fa-pen-to-square'></i> Edit"
                        + "</a>");

                out.println("<a class='btn delete' href='deleteProduct?id="
                        + rs.getInt("id")
                        + "'>"
                        + "<i class='fa-solid fa-trash'></i> Delete"
                        + "</a>");

                out.println("</div>");
            }

            out.println("</div>");

            out.println("<footer>");
            out.println("© 2026 BuyBasket | Online Shopping Website");
            out.println("</footer>");

            out.println("</body>");
            out.println("</html>");

            rs.close();
            ps.close();
            con.close();

        } catch (Exception e) {

            e.printStackTrace();

            out.println("<h3>Error: "
                    + e.toString()
                    + "</h3>");
        }
    }
}