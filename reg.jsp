<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="config.jsp" %>

<%
    Connection databaseConnection = null;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");

        // 修改變數名稱，避免與之前的代碼重複聲明
        String dbUrl = "jdbc:mysql://localhost/members?serverTimezone=UTC";
        String dbUser = "root";
        String dbPassword = "1234";

        databaseConnection = DriverManager.getConnection(dbUrl, dbUser, dbPassword);

        // 存放連線物件在應用程式範圍中
        application.setAttribute("con", databaseConnection);
    } catch (ClassNotFoundException | SQLException e) {
        // 處理異常
        e.printStackTrace();
        out.println("資料庫連線初始化失敗！");
    }
%>

<%
    // 接收表單提交的數據
    String id = request.getParameter("id");
    String name = request.getParameter("name");
    String age = request.getParameter("age");
    String birthday = request.getParameter("birthday");
    String number = request.getParameter("number");
    String address = request.getParameter("address");
    String pwd = request.getParameter("pwd");
    String checkpwd = request.getParameter("checkpwd");

    // 將數據插入到資料庫中
    String insertQuery = "INSERT INTO members (id, name, age, birthday, number, address, pwd, checkpwd) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
    
    try (PreparedStatement pstmt = databaseConnection.prepareStatement(insertQuery)) {
        pstmt.setString(1, id);
        pstmt.setString(2, name);
        pstmt.setString(3, age);
        pstmt.setString(4, birthday);
        pstmt.setString(5, number);
        pstmt.setString(6, address);
        pstmt.setString(7, pwd);
        pstmt.setString(8, checkpwd);

        pstmt.executeUpdate();

        // 插入成功的操作
        out.println("<script language='javascript'>alert('註冊成功!');window.location.href='loginform.html';</script>");
    } catch (SQLException e) {
        // 處理SQL異常
        e.printStackTrace();
        out.println("註冊失敗，請檢查輸入的數據！");
    }
%>
