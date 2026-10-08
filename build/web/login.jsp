<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>

    <meta charset="UTF-8">

    <title>BuyBasket - Login</title>

    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

    <style>

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #667eea, #764ba2);
            min-height: 100vh;
        }

        /* ================= NAVBAR ================= */

        .navbar {
            background: linear-gradient(90deg, #6a11cb, #2575fc);
            padding: 18px 60px;

            display: flex;
            justify-content: space-between;
            align-items: center;

            color: white;
        }

        .logo {
            font-size: 28px;
            font-weight: bold;
        }

        .nav-links {
            display: flex;
            align-items: center;
        }

        .nav-links a {
            color: white;
            text-decoration: none;
            margin-left: 25px;
            font-size: 15px;
        }

        .nav-links a:hover {
            text-decoration: underline;
        }

        /* ================= LOGIN BOX ================= */

        .login-box {
            width: 400px;
            background: white;

            padding: 35px;

            margin: 70px auto;

            border-radius: 15px;

            box-shadow: 0 8px 30px rgba(0, 0, 0, 0.2);
        }

        .login-icon {
            text-align: center;

            font-size: 50px;

            color: #6a11cb;

            margin-bottom: 10px;
        }

        h1 {
            text-align: center;

            color: #333;

            margin-bottom: 25px;
        }

        /* ================= FORM ================= */

        label {
            display: block;

            margin-top: 15px;

            font-weight: bold;

            color: #333;
        }

        input {
            width: 100%;

            padding: 12px;

            margin-top: 7px;

            border: 1px solid #ddd;

            border-radius: 7px;

            font-size: 14px;
        }

        input:focus {
            outline: none;

            border-color: #6a11cb;

            box-shadow: 0 0 5px rgba(106, 17, 203, 0.2);
        }

        /* ================= LOGIN BUTTON ================= */

        button {
            width: 100%;

            padding: 13px;

            margin-top: 25px;

            border: none;

            border-radius: 25px;

            background: linear-gradient(90deg, #6a11cb, #2575fc);

            color: white;

            font-size: 16px;

            font-weight: bold;

            cursor: pointer;
        }

        button:hover {
            opacity: 0.9;
        }

        /* ================= BACK LINK ================= */

        .back {
            display: block;

            text-align: center;

            margin-top: 20px;

            color: #2575fc;

            text-decoration: none;
        }

        .back:hover {
            text-decoration: underline;
        }

        /* ================= ERROR MESSAGE ================= */

        .error {
            background: #ffe5e5;

            color: #d60000;

            padding: 10px;

            border-radius: 7px;

            text-align: center;

            margin-bottom: 15px;
        }

    </style>

</head>


<body>


<!-- ================= NAVBAR ================= -->

<div class="navbar">


    <!-- LOGO -->

    <div class="logo">

        <i class="fa-solid fa-bag-shopping"></i>

        BuyBasket

    </div>


    <!-- NAVIGATION -->

    <div class="nav-links">

        <a href="${pageContext.request.contextPath}/index.jsp">
            Home
        </a>

        <a href="${pageContext.request.contextPath}/products">
            Products
        </a>

        <a href="${pageContext.request.contextPath}/addProduct.jsp">
            Add Product
        </a>

        <a href="${pageContext.request.contextPath}/login.jsp">
            Login
        </a>

    </div>

</div>


<!-- ================= LOGIN BOX ================= -->

<div class="login-box">


    <!-- USER ICON -->

    <div class="login-icon">

        <i class="fa-solid fa-user"></i>

    </div>


    <!-- TITLE -->

    <h1>Login</h1>


    <!-- ERROR MESSAGE -->

    <%

        String error = request.getParameter("error");

        if ("invalid".equals(error)) {

    %>

        <div class="error">
            Invalid email or password.
        </div>

    <%

        } else if ("empty".equals(error)) {

    %>

        <div class="error">
            Please enter your email and password.
        </div>

    <%

        }

    %>


    <!-- ================= LOGIN FORM ================= -->

    <form action="${pageContext.request.contextPath}/login"
          method="post">


        <!-- EMAIL -->

        <label for="email">
            Email
        </label>

        <input
            type="email"
            id="email"
            name="email"
            placeholder="Enter your email"
            required
        >


        <!-- PASSWORD -->

        <label for="password">
            Password
        </label>

        <input
            type="password"
            id="password"
            name="password"
            placeholder="Enter your password"
            required
        >


        <!-- LOGIN BUTTON -->

        <button type="submit">

            <i class="fa-solid fa-right-to-bracket"></i>

            Login

        </button>


    </form>


    <!-- BACK TO HOME -->

    <a
        class="back"
        href="${pageContext.request.contextPath}/index.jsp"
    >

        <i class="fa-solid fa-arrow-left"></i>

        Back to Home

    </a>


</div>


</body>
</html>