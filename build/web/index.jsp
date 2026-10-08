<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">

        <link rel="stylesheet"
              href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

        <title>?? BuyBasket</title>

        <style>

            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }

            body {
                font-family: Arial, sans-serif;
                background: #f5f7fb;
                color: #222;
            }

            /* Navbar */
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
                font-size: 16px;
            }

            .nav-links a:hover {
                color: #ffe082;
            }

            /* Hero */
            .hero {
                background: linear-gradient(135deg, #667eea, #764ba2);
                color: white;
                text-align: center;
                padding: 80px 20px;
            }

            .hero h1 {
                font-size: 48px;
                margin-bottom: 15px;
            }

            .hero p {
                font-size: 20px;
                margin-bottom: 30px;
            }

            .shop-btn {
                display: inline-block;
                background: #ff9800;
                color: white;
                padding: 14px 30px;
                border-radius: 30px;
                text-decoration: none;
                font-weight: bold;
            }

            .shop-btn:hover {
                background: #e68900;
            }

            /* Products */
            .products {
                padding: 50px 60px;
                text-align: center;
            }

            .products h2 {
                font-size: 32px;
                margin-bottom: 35px;
                color: #333;
            }

            .cards {
                display: flex;
                justify-content: center;
                gap: 25px;
                flex-wrap: wrap;
            }

            .card {
                background: white;
                width: 260px;
                padding: 25px;
                border-radius: 15px;
                box-shadow: 0 5px 20px rgba(0,0,0,0.12);
                transition: 0.3s;
            }

            .card:hover {
                transform: translateY(-8px);
            }

            .icon {
                font-size: 55px;
                margin-bottom: 15px;
            }

            .card h3 {
                margin-bottom: 10px;
            }

            .price {
                color: #6a11cb;
                font-size: 22px;
                font-weight: bold;
                margin: 15px 0;
            }

            /* Footer */
            footer {
                background: #222;
                color: white;
                text-align: center;
                padding: 20px;
                margin-top: 30px;
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

        <section class="hero">
            <h1>Welcome to BuyBasket</h1>
            <p>Your Simple & Smart Online Shopping Store</p>
            <a href="products" class="shop-btn">Shop Now</a>
        </section>

        <section class="products">
            <h2>Featured Products</h2>

            <div class="cards">

                <div class="card">
                    <div class="icon"><i class="fa-solid fa-laptop"></i></div>
                    <h3>Laptop</h3>
                    <p>Powerful laptop for study and work.</p>
                    <div class="price"><p> &#8377 55,000</p></div>
                </div>

                <div class="card">
                    <div class="icon"><i class="fa-solid fa-mobile-screen-button"></i></div>
                    <h3>Smartphone</h3>
                    <p>Latest Android smartphone.</p>
                    <div class="price"><p> &#8377 25,000</p></div>
                </div>

                <div class="card">
                    <div class="icon"><i class="fa-solid fa-headphones"></i></div>
                    <h3>Headphones</h3>
                    <p>Wireless headphones with clear sound.</p>
                    <div class="price"><p> &#8377 2,500</p></div>
                </div>

                <div class="card">
                    <div class="icon"><i class="fa-solid fa-clock"></i></div>
                    <h3>Smart Watch</h3>
                    <p>Smart watch with fitness features.</p>
                    <div class="price"></p> &#8377 3,500</p></div>
                </div>

            </div>
        </section>

        <footer>
            © 2026 BuyBasket | Online Shopping Website
        </footer>

    </body>
</html>