<%@page contentType="text/html"%>
<%@ page import="java.sql.Connection, java.sql.DriverManager, java.sql.ResultSet, java.sql.SQLException" %>
<%@page pageEncoding="UTF-8"%>
<!-- Step 0: import library -->


<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
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


<html>
    <head><title>查詢主畫面</title></head>
    <body> 
        <form action="product_page.jsp" method="post">
<% try {

    Class.forName("com.mysql.jdbc.Driver");
    try {
 
        String url="jdbc:mysql://localhost/?serverTimezone=UTC";
        Connection con=DriverManager.getConnection(url,"root","1234");
        if(con.isClosed())
           out.println("連線建立失敗");
        else
           {

           String sql="USE `website`";
           con.createStatement().execute(sql);

 
           sql = "SELECT `productName` FROM `product`";
           ResultSet rs=con.createStatement().executeQuery(sql);


           out.println("<select size='1' name = 'name'>");

           while(rs.next())
                out.println("<option>" + rs.getString(1));
           out.println("</select>");
       }

       con.close();
    }
    catch (SQLException sExec) {
           out.println("SQL錯誤"+sExec.toString());
    }
}
catch (ClassNotFoundException err) {
    out.println("class錯誤"+err.toString());
}
        %>   
        <input type="submit" value="開始查詢">
  </form>
    </body>
</html>
