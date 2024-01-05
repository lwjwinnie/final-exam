<%@ page import="java.sql.*, java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
// 获取商品ID和其他信息
int productId = Integer.parseInt(request.getParameter("product_id"));
String productName = null;
String price = null;

try {
    Class.forName("com.mysql.cj.jdbc.Driver");
    String url = "jdbc:mysql://localhost/website?serverTimezone=UTC";

    try (Connection con = DriverManager.getConnection(url, "root", "1234")) {
        if (con.isClosed()) {
            out.println("連線建立失敗！");
        } else {
            // 查询特定的产品信息
            String getProductSql = "SELECT * FROM `product` WHERE Product_Id = ?";
            try (PreparedStatement pstmtProduct = con.prepareStatement(getProductSql)) {
                pstmtProduct.setInt(1, productId);

                try (ResultSet rs = pstmtProduct.executeQuery()) {
                    if (rs.next()) {
                        productName = rs.getString("productName");
                        price = rs.getString("price");
                    }
                }
            }

            // 将商品加入购物车
            String sql1 = "INSERT INTO `incar` (`productName`, `price`, `num`, `totalPrice`) VALUES (?, ?, ?, ?)";
            // 使用 PreparedStatement 设置参数，防止 SQL 注入
            try (PreparedStatement pstmt = con.prepareStatement(sql1)) {
                pstmt.setString(1, productName);
                pstmt.setString(2, price);
                pstmt.setString(3, "1"); // 预设数量为1，你可能需要根据实际情况修改
                pstmt.setString(4, price); // 预设总价为商品单价，你可能需要根据实际情况修改
                pstmt.executeUpdate();
            }

            // 重定向到 showcart.jsp
            response.sendRedirect("incar.jsp");
        }
    } catch (SQLException sExec) {
        out.println("MySQL 錯誤！" + sExec.toString());
    }
} catch (ClassNotFoundException err) {
    out.println("class 錯誤！" + err.toString());
}
%>
