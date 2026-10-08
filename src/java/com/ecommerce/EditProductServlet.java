package com.ecommerce;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.io.PrintWriter;

@WebServlet("/editProduct")
public class EditProductServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("id"));

        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        try {
            Connection con = DBConnection.getConnection();

            String sql = "SELECT * FROM products WHERE id = ?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, id);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {

                out.println("<html>");
                out.println("<head>");
                out.println("<title>Edit Product</title>");

                out.println("<style>");
                out.println("body{font-family:Arial;background:#f4f6f8;}");
                out.println(".box{width:450px;margin:50px auto;background:white;padding:30px;border-radius:12px;}");
                out.println("input,textarea{width:100%;padding:10px;margin:8px 0 15px;}");
                out.println("button{padding:12px;width:100%;background:#222;color:white;border:0;border-radius:6px;}");
                out.println("</style>");

                out.println("</head>");
                out.println("<body>");

                out.println("<div class='box'>");
                out.println("<h2>Edit Product</h2>");

                out.println("<form action='updateProduct' method='post'>");

                out.println("<input type='hidden' name='id' value='" +
                        rs.getInt("id") + "'>");

                out.println("Product Name");
                out.println("<input type='text' name='name' value='" +
                        rs.getString("name") + "' required>");

                out.println("Description");
                out.println("<textarea name='description' required>" +
                        rs.getString("description") + "</textarea>");

                out.println("Price");
                out.println("<input type='number' step='0.01' name='price' value='" +
                        rs.getDouble("price") + "' required>");

                out.println("Quantity");
                out.println("<input type='number' name='quantity' value='" +
                        rs.getInt("quantity") + "' required>");

                out.println("<button type='submit'>Update Product</button>");

                out.println("</form>");
                out.println("</div>");

                out.println("</body>");
                out.println("</html>");
            }

            con.close();

        } catch (Exception e) {
            out.println("Error: " + e.getMessage());
        }
    }
}