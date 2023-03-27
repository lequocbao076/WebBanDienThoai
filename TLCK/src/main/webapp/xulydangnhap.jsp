<%@page import="java.awt.Dialog"%>
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
			String name=request.getParameter("txtTenKH");
			String pass=request.getParameter("txtPassword");
			try{
					Connection con = database.conn();
				 PreparedStatement ps = con.prepareStatement("select TENKH from taikhoan where TENKH=? and MATKHAU=?");
				 ps.setString(1,name);
				 ps.setString(2,pass);
				 ResultSet rs = ps.executeQuery();
				 if(rs.next()){
					 RequestDispatcher rd = request.getRequestDispatcher("thongtintaikhoan.jsp");
					 rd.forward(request, response);
				 }else{
					 out.println("<meta http-equiv='refresh' content='3;URL=dangnhap.jsp'>");
					   out.println("<h1 style='color:red;'>Tài khoản hoặc mật khẩu không chính xác! Tự động quay về trang đăng nhập sau 3 giây</h1>");
				 }
			}
				
			catch (Exception e) {
				// TODO: handle exception
				out.println(e);
			}
			
		%>
</body>
</html>