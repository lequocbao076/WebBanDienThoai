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
			request.setCharacterEncoding("UTF-8");
	        String name2=request.getParameter("txtTenKH");
	        String password2=request.getParameter("txtPassword");
	        String email2=request.getParameter("txtMail");
			String sdt2=request.getParameter("txtSoDT");
		
			
			try
			{
				Connection con = database.conn();
				Statement st= con.createStatement();
				String sql=	"update taikhoan set TENKH=N'" + name2 + "',MATKHAU=" + password2 +",EMAIL="+email2+ " where SODT=" + sdt2;
				st.executeUpdate(sql);
				out.println("sql = "+sql);
				response.sendRedirect("thongtintaikhoan.jsp");
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