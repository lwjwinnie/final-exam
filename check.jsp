<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="config.jsp" %>

<%
if(request.getParameter("id") !=null && !request.getParameter("id").equals("") 
 && request.getParameter("pwd") != null && !request.getParameter("id").equals("")){

    sql = "SELECT * FROM members WHERE `id`='" +request.getParameter("id") + 
       "'  AND `pwd`='" + request.getParameter("pwd") + "'"  ; 
 
    ResultSet rs =con.createStatement().executeQuery(sql);
    
    if(rs.next()){            
        session.setAttribute("id",request.getParameter("id"));
  con.close();//結束資料庫連結
        response.sendRedirect("basic_information.html") ;
    }
    else{
  con.close();//結束資料庫連結
        out.println("密碼帳號不符 !! <a href='loginform.jsp'>按此</a>重新登入") ;
 }
}
else
 response.sendRedirect("login.html");
%>
