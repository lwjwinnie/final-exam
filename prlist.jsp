<%@ page import = "java.sql.*, java.util.*"%>
<%@page contentType="text/html" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Demo</title>
    <link rel="icon" href="../image/icon.ico">
    <link rel="stylesheet" href="../css/store.css">
</head>
<body>
    <article>
        <div class="product-container">
		<%
		try { 
				Class.forName("com.mysql.jdbc.Driver"); 
				try {	
					String url="jdbc:mysql://localhost/?useUnicode=true&characterEncoding=utf-8&serverTimezone=UTC"; 
					String sql=""; 
					Connection con=DriverManager.getConnection(url,"root","1234"); 
					if(con.isClosed()) 
					   out.println("連線建立失敗！"); 
					else { 
						sql="USE `website`"; 
						con.createStatement().execute(sql); 
						sql="SELECT * from `product`"; //讀取所有產品
						ResultSet rs=con.createStatement().executeQuery(sql); 
				   int count=0;
				   while(rs.next())
				   {
					
                out.print("<form method='post' action='tocart.jsp' class='product'>");
                out.print("<img src='" + rs.getString(7) + "' alt='Product Image'>");//商品圖片
                out.print("<h3>" + rs.getString(3) + "</h3>" + "<br>");//商品名稱
                out.print("<p style='font-size:15px;'>" + rs.getString(4) + "</p>" + "<br>");//商品介紹
                out.print("<div>");
                out.print("<input type='button' value='-' class='btn' onclick='minus(" + count + ")'>");
                out.print("<input type='text' value='1' id='input_sum" + count + "' class='input_sum' name='orderQ'>");
                out.print("<input type='button' value='+' class='btn' onclick='add(" + count + ")'>");
                // 添加一个隐藏字段来存储商品ID
                out.print("<input type='hidden' name='product_id' value='" + rs.getString(1) + "'>");
                out.println("<input type='submit' value='加入購物車'>" + "<br>" + "<br>");
                out.print("價格:" + rs.getString(5) + "&nbsp" + "&nbsp");
                out.print("庫存:" + rs.getString(6));
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
 
    </article>

    <script>
        function minus(n){
            var num = Number(document.getElementsByClassName("input_sum")[n].value);
            if(num>0){
                document.getElementsByClassName("input_sum")[n].value = num -1;
            }
        }

        function add(n){
            var num = Number(document.getElementsByClassName("input_sum")[n].value);
            if(num<10){
                document.getElementsByClassName("input_sum")[n].value = num +1;
            }
        }
    </script>
</body>
</html>