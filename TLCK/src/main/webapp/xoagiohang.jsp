<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="java.sql.*"%>
<%@page import="cosodulieu.database"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	String product_id = request.getParameter("txtMaSP");
	try {
	Connection con = database.conn();
	Statement st = con.createStatement();
	st.executeUpdate("delete from giohang where MASP = " + product_id +"");
	response.sendRedirect("cart.jsp");
	}catch(Exception e){
		System.out.println(e);
	}
%>
</body>
</html>