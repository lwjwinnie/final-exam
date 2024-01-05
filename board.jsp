<%@ page import = "java.sql.*"%>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>

<html>
<head>
<title>留言版</title>
</head>
<body>

<form name="form1" method="get" action="add.jsp" >
姓名：<input type="text" name="name"><br>
商品：<input type="text" name="subject"><br>
內容：<textarea rows=5 name="content"></textarea><br>
<input type="submit" name="Submit" value="提交評價">
</form>
</body>
</html>
