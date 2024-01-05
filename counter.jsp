<%@ page import = "java.sql.*"%>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>

<%
int count = 0;
String countString;

// 獲取資料庫連接
Connection con = null;
try {
    Class.forName("com.mysql.jdbc.Driver");
    String url = "jdbc:mysql://localhost/website";
    con = DriverManager.getConnection(url, "root", "1234");

    // 使用 website 資料庫
    String useSql = "USE `website`";
    con.createStatement().execute(useSql);

    // 獲取計數器數值
    String selectSql = "SELECT * FROM `counter`";
    ResultSet rs = con.createStatement().executeQuery(selectSql);
    if (rs.next()) {
        countString = rs.getString(1);
        count = Integer.parseInt(countString);
    }

    // 每次刷新頁面都增加計數器
    count = count + 1;
    countString = String.valueOf(count);
    String updateSql = "UPDATE `counter` SET `counter` = " + countString;
    con.createStatement().execute(updateSql);
} catch (SQLException | ClassNotFoundException e) {
    e.printStackTrace();
} finally {
    // 關閉資料庫連接
    if (con != null) {
        try {
            con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
%>

<input type="text" id="numberInput" name="numberInput" value="<%= count %>" readonly>
</p>
