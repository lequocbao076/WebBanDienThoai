<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
     <%@page import="java.sql.*" %>
	<%@page import="cosodulieu.database" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
			request.setCharacterEncoding("UTF-8");
			String name=request.getParameter("txtTenSP");
			String price=request.getParameter("txtGiaSP");
			String image=request.getParameter("txtHinhSP");
			try
			{
				Connection con = database.conn();
				Statement st= con.createStatement();
				String sql="insert into giohang values(N'"+ name +"',"+ price +","+ image +")";
				st.executeUpdate(sql);
				out.println("Thành công");
				response.sendRedirect("cart.jsp");
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