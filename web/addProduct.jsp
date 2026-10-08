<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <link rel="stylesheet"
              href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
        <title>BuyBasket - Add Product</title>

        <style>
            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }

            body {
                font-family: Arial, sans-serif;
                background: #f5f7fb;
            }

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

            .nav-links a {
                color: white;
                text-decoration: none;
                margin-left: 25px;
            }

            .container {
                width: 500px;
                margin: 50px auto;
                background: white;
                padding: 35px;
                border-radius: 15px;
                box-shadow: 0 5px 25px rgba(0,0,0,0.15);
            }

            h1 {
                text-align: center;
                color: #6a11cb;
                margin-bottom: 25px;
            }

            label {
                display: block;
                margin-top: 15px;
                font-weight: bold;
            }

            input, textarea {
                width: 100%;
                padding: 12px;
                margin-top: 7px;
                border: 1px solid #ddd;
                border-radius: 7px;
                font-size: 15px;
            }

            textarea {
                height: 90px;
                resize: none;
            }

            button {
                width: 100%;
                margin-top: 25px;
                padding: 13px;
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

            .back {
                display: block;
                text-align: center;
                margin-top: 18px;
                color: #2575fc;
                text-decoration: none;
            }

            footer {
                margin-top: 80px;
                background: #222;
                color: white;
                text-align: center;
                padding: 20px;
            }
        </style>
    </head>

    <body>

        <div class="navbar">
            <div class="logo">
                <i class="fa-solid fa-bag-shopping"></i> BuyBasket
            </div>

            <div class="nav-links">
                <a href="index.jsp">Home</a>
                <a href="products">Products</a>
                <a href="addProduct.jsp">Add Product</a>
                <a href="login.jsp">Login</a>
            </div>
        </div>

        <div class="container">

            <h1>Add New Product</h1>

            <form action="addProduct" method="post">

                <label>Product Name</label>
                <input type="text" name="name" placeholder="Enter product name" required>

                <label>Description</label>
                <textarea name="description"
                          placeholder="Enter product description"
                          required></textarea>

                <label>Price</label>
                <input type="number" step="0.01" name="price"
                       placeholder="Enter price" required>

                <label>Quantity</label>
                <input type="number" name="quantity"
                       placeholder="Enter quantity" required>

                <button type="submit">Add Product</button>

            </form>

            <a class="back" href="products">? Back to Products</a>

        </div>

        <footer>
            © 2026 BuyBasket | Online Shopping Website
        </footer>

    </body>
</html>