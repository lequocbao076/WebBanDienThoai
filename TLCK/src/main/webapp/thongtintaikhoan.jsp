<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>
	<%@page import="cosodulieu.database" %>
<!DOCTYPE html>
<html>
<head>
		<meta charset="utf-8">
		<title>Thông tin tài khoản</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">

		<!-- LINEARICONS -->
		<link rel="stylesheet" href="fonts/linearicons/style.css">
		
		<!-- STYLE CSS -->
		<link rel="stylesheet" href="css/styles.css">
	
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>	
         
         	<%
			request.setCharacterEncoding("utf-8");
			try{
				 Connection con = database.conn();
				 Statement st= con.createStatement();
				 String sql="Select * from taikhoan";
				 ResultSet rs = st.executeQuery(sql);
				 while(rs.next())
				 {
			%>	
         			<div class="wrapper">
			<div class="inner">
				<img src="images/image-1.png" alt="" class="image-1">						
					<h3><b>Thông tin khách hàng</b></h3>
							<form action="" method="post" name="name1">
					<div class="form-holder">
						<span class="lnr lnr-user"></span>
						<input type="text" class="form-control" value=<%= rs.getString("TENKH")%>  name="txtTenKH" readonly="readonly">
					</div>
					<div class="form-holder">
						<span class="lnr lnr-phone-handset"></span>
						<input type="text" class="form-control" value=<%= rs.getString("SODT")%> name="txtSoDT" readonly="readonly">
					</div>
					<div class="form-holder">
						<span class="lnr lnr-envelope"></span>
						<input type="text" class="form-control" value=<%= rs.getString("EMAIL")%> name="txtMail">
					</div>
					<div class="form-holder">
						<span class="lnr lnr-lock"></span>
						<input type="text" class="form-control" value=<%= rs.getString("MATKHAU")%> name="txtPassword">
					</div>
					<div class="form-holder">
						 <a href="suatk.jsp?sdt2=<%out.println(rs.getString("SODT"));%>">Sửa tài khoản</a>
					</div>
					<div class="form-holder">
						<a href="xoataikhoan.jsp?sdt=<%out.println(rs.getString("SODT"));%>">Xóa tài khoản</a>
					</div>
			</form>
				<img src="images/image-2.png" alt="" class="image-2">
			</div>
			
		</div>
		
		
         		<%}
			st.close();
			con.close();
		}
		catch(Exception e)
		{
				out.println(e);
		}
		%>
         
</body>
</html>