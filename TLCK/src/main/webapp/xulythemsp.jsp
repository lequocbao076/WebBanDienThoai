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
				String id=request.getParameter("txtMaSP");
				String name=request.getParameter("txtTenSP");
				String price=request.getParameter("txtDonGia");
				String count=request.getParameter("txtSoLuong");
				String image=request.getParameter("txtHinhAnh");
				String type=request.getParameter("txtMaLoai");
				String description=request.getParameter("txtMoTa");
				String detail=request.getParameter("txtChiTiet");
				try{
					Connection con = database.conn();
					Statement st= con.createStatement();
					String sql = "INSERT INTO sanpham VALUES('" + id + "', '" + name + "', " + price + ", " + count + ", '" + image + "', '" + type + "', '" + description + "', '" + detail + "')";
					st.executeUpdate(sql);
					out.println("Thành công");
					response.sendRedirect("index.jsp");
					st.close();
					con.close();
				} catch (Exception e) {
					// TODO: handle exception
					out.println(e);
				}
			%>
</body>
</html>