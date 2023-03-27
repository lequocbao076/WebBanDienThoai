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
			String email=request.getParameter("txtMail");
			String sdt=request.getParameter("txtSoDT");
			try
			{
				Connection con = database.conn();
				Statement st= con.createStatement();
				String sql="insert into taikhoan values("+ name +","+ pass +","+ email +","+ sdt +")";
				PreparedStatement ps = con.prepareStatement("select TENKH from taikhoan where TENKH=? and MATKHAU=? and EMAIL=?");
				ps.setString(1,name);
				ps.setString(2,pass);
				ps.setString(3,email);
				ResultSet rs = ps.executeQuery();
				if(rs.next()){
					out.println("<meta http-equiv='refresh' content='3;URL=dangky.jsp'>");
					 out.println("<h1 style='color:red;'>Tài khoản không hợp lệ vui lòng đăng ký lại! Tự động quay về trang đăng nhập sau 3 giây</h1>");
				 }else{
					 st.executeUpdate(sql);
					 response.sendRedirect("index.jsp");
				 }
				
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