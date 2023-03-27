<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
     <%@page import="java.sql.*" %>
	 <%@page import="cosodulieu.database" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<%
		String sdt=request.getParameter("sdt");
		try
		{
			Connection con = database.conn();
			Statement st= con.createStatement();
			String sql="delete from taikhoan where SODT="+sdt;
			out.println("<h1 style='color:red;'>Bạn đã xóa tài khoản </h1>");
			st.executeUpdate(sql);	
			response.sendRedirect("dangky.jsp");
			st.close();
			con.close();
		}
		catch (Exception e) {
			// TODO: handle exception
			out.println(e);
		}
	%>
</body>
</html>