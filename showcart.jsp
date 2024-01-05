<%@ page import = "java.sql.*"%>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>購物車</title>
</head>
<body>

<%
try {
    Class.forName("com.mysql.cj.jdbc.Driver");
    String url = "jdbc:mysql://localhost/website?serverTimezone=UTC";

    try (Connection con = DriverManager.getConnection(url, "root", "1234")) {
        if (con.isClosed()) {
            out.println("連線建立失敗！");
        } else {
            String sql = "USE `website`";
            con.createStatement().execute(sql);
            

            // 查詢購物車內容
            String sqlQuery = "SELECT * FROM incar";
            try (Statement stmt = con.createStatement();
                 ResultSet rs = stmt.executeQuery(sqlQuery)) {

                    out.println("<div class='ctr_shopping_array'>");
                        out.println("<div class='shopping_array'>");
                        
                    
                        while (rs.next()) {
                            String productNameCart = rs.getString("productName");
                            double priceCart = rs.getDouble("price");
                            int numCart = rs.getInt("num");
                            
                    
                            out.println("<div class='shopping_item'>");
                            out.println("<div class='shopping_item_img'>");
                            out.println("<img src='+ rs.getString(7) + ' alt='Product Image'>");
                            out.println("</div>");
                            out.println("<div class='shopping_name'>");
                            out.println("<div>" + productNameCart + "</div>");
                            out.println("</div>");
                            out.println("<div class='shopping_p'>");
                            out.println("<div>$" + priceCart + "</div>");
                            out.println("</div>");
                            out.println("<div class='shopping_num'>");
                            out.println("<input type='button' value='-' class='decrement' onclick='decrementQuantity(this)'>");
                            out.println("<input type='text' value='" + numCart + "' class='quantity'>");
                            out.println("<input type='button' value='+' class='increment' onclick='incrementQuantity(this)'>");
                            out.println("</div>");
                            out.println("<div class='shopping_d'>");
                            out.println("<button onclick='deleteItem(this)'>點我刪除</button>");
                            out.println("</div>");
                            out.println("</div>");
                        }
                    
                        out.println("</div>");
                        out.println("</div>");
                    }
                }   
    } catch (SQLException sExec) {
        out.println("MySQL 錯誤！" + sExec.toString());
    }
} catch (ClassNotFoundException err) {
    out.println("class 錯誤！" + err.toString());
}
%>

</body>
</html>
