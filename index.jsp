<!DOCTYPE html>
<!--<%@ page import = "java.sql.*"%>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>-->
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=d, initial-scale=1.0">
    <title>Libertà</title>
    <script src="js/index.js" defer></script>
    <link rel="stylesheet" href="css/index.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Agbalumo&family=Dancing+Script&family=Lobster&display=swap"
        rel="stylesheet">
    <script src="https://code.iconify.design/3/3.1.1/iconify.min.js"></script>
    <script src="https://code.iconify.design/iconify-icon/1.0.7/iconify-icon.min.js"></script>
</head>

<body>
    <header class="header">
        <h1>Libertà</h1>
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
            <div id="searchBox" style="display: none;">
                <a href="selectForm.jsp">
                    <input type="text" id="search" name="q" placeholder="輸入搜尋內容...">
            </div></a>
        </nav>
    </header>

    <div id="carousel-container">
        <div id="carousel">
            <div class="carousel-item"><a href="necklace.html">
                    <img src="https://shoplineimg.com/5f7137100d15410018931c9d/6530e1f5f25d5100200a3c0c/2160x.webp?source_format=jpg"
                        alt="Image 1">
                </a></div>
            <div class="carousel-item"><a href="ring.html"><img src="images/advertise picture1.jpg" alt="Image 2"></a>
            </div>
            <div class="carousel-item"><a href="earring.html"><img src="images/advertise picture2.jpg"
                        alt="Image 3"></a></div>

        </div>
        <button id="prevBtn" onclick="prevSlide()">❮</button>
        <button id="nextBtn" onclick="nextSlide()">❯</button>
        <div class="ctr_array">
            <div class="array">

                <% try { Class.forName("com.mysql.jdbc.Driver"); try { String
                    url="jdbc:mysql://localhost/?useUnicode=true&characterEncoding=utf-8&serverTimezone=UTC" ; String
                    sql="" ; Connection con=DriverManager.getConnection(url,"root","1234"); if(con.isClosed())
                    out.println("連線建立失敗！"); else { sql="USE `website`" ; con.createStatement().execute(sql);
                    sql="SELECT * from `product`" ; //讀取所有產品 ResultSet rs=con.createStatement().executeQuery(sql); int
                    count=0; while(rs.next()) { out.print("<form method='post' action='tocart.jsp' class='product'>");

                    out.print("<div class='item'>");
                        out.print("<div class='item_img'>");
                            out.print("<a href='product_page.jsp'><img src='" + rs.getString(7) + "'
                                    alt='Product Image'></a>");//商品圖片

                            out.print("</div>");
                        out.print("<div class='item_txt'>");
                            out.print("<h3 class='item_txt_title'>" + rs.getString(3) + "</h3>" );//商品名稱
                            out.print("<p>" + rs.getString(4) + "</p>" );//商品介紹

                            out.print("<div class='item_txt_button'>");

                                out.print("<div>");

                                    // 添加一个隐藏字段来存储商品ID
                                    out.print("<input type='hidden' name='product_id'
                                        value='" + rs.getString(1) + "'>");
                                    out.print("<p>"+"NT$" + rs.getString(5) + "&nbsp" + "&nbsp"+ "</p>" );
                                    out.println("<input type='submit' value='加入購物車'>" + "<br>" + "<br>");


                                    out.print("</div>");
                                out.print("</div>");
                            out.print("</div>");
                        out.print("</div>");
                    out.print("</form>");
                    count++;

                    }
                    con.close();
                    }}
                    catch (SQLException sExec) {
                    out.println("MySQL 錯誤！"+sExec.toString());
                    }
                    }
                    catch (ClassNotFoundException err) {
                    out.println("class 錯誤！"+err.toString());
                    }

                    %>
            </div>

            <!--<script>
                function minus(n) {
                    var num = Number(document.getElementsByClassName("input_sum")[n].value);
                    if (num > 0) {
                        document.getElementsByClassName("input_sum")[n].value = num - 1;
                    }
                }

                function add(n) {
                    var num = Number(document.getElementsByClassName("input_sum")[n].value);
                    if (num < 10) {
                        document.getElementsByClassName("input_sum")[n].value = num + 1;
                    }
                }
            </script>-->


            <button onclick="topFunction()" id="myBtn" title="Go to top">
                <iconify-icon icon="mdi:arrow-top"></iconify-icon>
            </button>

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

                <p><b>
                        Copyright @ 2024 Libertà</b> <label for="numberInput">瀏覽次數<%@ include file="counter.jsp" %>

                </p>
            </div>


        </footer>
</body>

</html>