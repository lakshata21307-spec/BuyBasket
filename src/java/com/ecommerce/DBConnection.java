package com.ecommerce;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {

    private static final String URL
            = "jdbc:mysql://" + System.getenv("DB_HOST")
            + ":" + System.getenv("DB_PORT")
            + "/" + System.getenv("DB_NAME")
            + "?useSSL=true&requireSSL=true";

    private static final String USER = System.getenv("DB_USER");
    private static final String PASSWORD = System.getenv("DB_PASSWORD");

    public static Connection getConnection() {
        Connection con = null;

        try {
            Class.forName("com.mysql.jdbc.Driver");

            con = DriverManager.getConnection(
                    URL, USER, PASSWORD
            );

            System.out.println("Database Connected Successfully!");

        } catch (Exception e) {
            e.printStackTrace();
        }

        return con;
    }

    public static void main(String[] args) {
        getConnection();
    }
}