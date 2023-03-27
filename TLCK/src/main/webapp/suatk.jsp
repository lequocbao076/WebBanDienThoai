<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="java.sql.*"%>
<%@page import="cosodulieu.database"%>

<!DOCTYPE html>
<html>
<head>
<head>
		<meta charset="utf-8">
		<title>Sửa thông tin tài khoản</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">

		<!-- LINEARICONS -->
		<link rel="stylesheet" href="fonts/linearicons/style.css">
		
		<!-- STYLE CSS -->
		<link rel="stylesheet" href="css/styles.css">
	</head>
</head>
<body>


	<%
			request.setCharacterEncoding("UTF-8");
			String sdt2=request.getParameter("sdt2");
			try
			{
				Connection con = database.conn();
				Statement st= con.createStatement();
				String sql="select * from taikhoan where SODT=" + sdt2;
				ResultSet rs = st.executeQuery(sql);
				if(rs.next()){
					
	%>
	
	<form action="xuly_suatk.jsp">
		<table>
		<tr>
			<td><b>Số điện thoại khách hàng:</b>
			<div class="form-holder">
						<span class="lnr lnr-phone-handset"></span>
						<input type="text" class="form-control" value="<%out.println(rs.getString("SODT")); %>" name="txtSoDT" readonly="readonly">
					</div>
					</td>
			</tr>
			<tr>
			<td><b>Tên khách hàng:</b>
			<div class="form-holder">
					<span class="lnr lnr-user"></span>
						<input type="text" class="form-control" value="<%out.println(rs.getString("TENKH")); %>" name="txtTenKH" readonly="readonly">
					</div>
					</td>
			</tr>
			<tr>
			<td><b>Mật khẩu khách hàng:</b>
			<div class="form-holder">
					<span class="lnr lnr-user"></span>
						<input type="text" class="form-control" value="<%out.println(rs.getString("MATKHAU")); %>" name="txtPassword"readonly="readonly">
					</div>
					</td>
			</tr>
			<tr>
			<td><b>Email khách hàng:</b>
			<div class="form-holder">
						<span class="lnr lnr-envelope"></span>
						<input type="text" class="form-control" value="<%out.println(rs.getString("EMAIL")); %>" name="txtMail" readonly="readonly">
					</div>
					</td>
			</tr>
			
			       
			<tr>
				<td colspan="2"> 
				<button>
						<span>Sửa</span>
				</button>
				</td>
			</tr>
		</table>
		</form>
			
		<% 	}
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