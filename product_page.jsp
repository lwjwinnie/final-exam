
<!DOCTYPE html>
<%@ page import = "java.sql.*"%>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>

<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Libertà</title>
    <script src="js/product_page.js" defer></script>
    <link rel="stylesheet" href="css/product_page.css">
    <link rel="preconnect" href="https9://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Agbalumo&family=Dancing+Script&family=Lobster&display=swap"
        rel="stylesheet">
    <script src="https://code.iconify.design/3/3.1.1/iconify.min.js"></script>
    <script src="https://code.iconify.design/iconify-icon/1.0.7/iconify-icon.min.js"></script>
</head>

<style>

</style>
</head>
<script src="https://code.iconify.design/iconify-icon/1.0.7/iconify-icon.min.js"></script>

<body>

    <header class="header">
        <a class="text123" href="index.html">
            <h1>Libertà</h1>
        </a>
        <nav class="heads">

            <ul>
                <a class="menu" href="necklace.html">項鍊Necklace</a>
                <a class="menu" href="bracelet.html">手鍊Bracelet</a>
                <a class="menu" href="ring.html">戒指Ring</a>
                <a class="menu" href="earring.html">耳環Earrings</a>
            </ul>

        </nav>
        <nav class="nav">
            <a href="incar.jsp">
                <span class="iconify-inline" data-icon="bi:cart-fill"
                    style="color:#cb9b8f;width:50px;height: 27px;"></span>
            </a>
            <a href="loginform.html">
                <span class="iconify-inline" data-icon="mdi:user" style="color:#cb9b8f;width:50px;height: 27px;"></span>
            </a>
            <a href="basic_information.html">
                <span class="iconify-inline" data-icon="carbon:book"
                    style="color:#cb9b8f;width:50px;height: 27px;"></span></a>
            <a href="">
                <span class="iconify-inline" data-icon="material-symbols:search"
                    style="color:#cb9b8f;width:50px;height: 27px;"></span>
            </a>
        </nav>
    </header>

    <div class="product-container" id="product-container">

        <section class="product-details" id="product-details">
            <img src="images/accessory/necklace1..png" alt="Product Image">
        </section>

        <section class="product-reviews" id="product-reviews">
            <div class="review">
                <p><b>商品描述:</b> <br>波光粼粼的清水碎鑽<br>加上湛藍通透的月亮</p><br>
                <p><b>價格:</b> NT$450</p><br>
                <p><b>庫存狀態:</b> 999</p><br>
                <p><b>數量:</b></p><br>
            </div>
            <div class="product-button">
                <input type="button" value="-" class="decrement" onclick="decrementQuantity(this)">
                <input type="text" value="1" class="quantity">
                <input type="button" value="+" class="increment" onclick="incrementQuantity(this)">
            </div>
            <div class="item_txt_button">
                <input type="button" value="加入購物車" name="" id="addToCartBtn1" onclick="addToCart('已加入購物車 ! !')">
            </div>

            
                <div class="customer-reviews">
                    <h3>顧客評價：</h3><%@ include file="board.jsp"%>
                   
                        
                        
                    </form>

                </div>




        </section>

    </div>




    <footer
        style=" display:flex;flex-direction:column; gap:10px;height:400px;max-height:500px;min-height: fit-content;">
        <div class="bottom">
            <h3>Libertà</h3>
        </div>
        <div class="detail">
            <P>320桃園市中壢區中北路200號</P>
            <P>03-1234567</P>
            <P>Mon ~ Fri | 10：00~22：00</P>
            <a href="store_intro.html" target="_self"><span class="iconify-inline" data-icon="bx:store"
                    style="color:#cb9b8f;width:70px;height: 70px;"></span></a>
            <a href="contact_us.html" target="_self"><span class="iconify-inline" data-icon="mingcute:question-line"
                    style="color:#cb9b8f;width:70px;height: 70px;"></span></a>

                    <p><b>Copyright @ 2024 Libertà</b> <label for="numberInput">瀏覽次數
                   
                    </p>
        </div>
    </footer>
</body>

</html>