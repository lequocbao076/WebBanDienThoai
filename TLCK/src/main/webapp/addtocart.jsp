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
	String product_id = request.getParameter("txtMaSP");
	int quantity = 1; 
	int product_price = 0;
	int product_total = 0;
	int cart_total = 0;
	int z = 0;
	try {
		Connection con = database.conn();
		Statement st = con.createStatement();
		String sql = "select * from sanpham where MASP = " + product_id + "";
		ResultSet rs = st.executeQuery(sql);
		while (rs.next()) {
			product_price = rs.getInt(3);
			product_total = product_price;
		}
		String sql1 = "select * from giohang where MASP = " + product_id + "";
		ResultSet rs1 = st.executeQuery(sql1);
		while (rs1.next()) {
			cart_total += rs1.getInt(3) * rs1.getInt(5); // Calculate previous cart total
			quantity = rs1.getInt(5) + 1; // Increment quantity by 1
			z = 1;
		}
		cart_total += product_price; // Add current item total to cart_total
		if (z == 1) {
			st.executeUpdate("update giohang set SOLUONG=" + quantity + ",TONGTIEN=" + (product_price * quantity) + " where MASP = " + product_id + "");
			response.sendRedirect("cart.jsp");
		}
		if (z == 0) {
			PreparedStatement ps = con.prepareStatement("insert into giohang(MASP,DONGIA,SOLUONG,TONGTIEN) values(?,?,?,?)");
			ps.setString(1, product_id);
			ps.setInt(2, product_price);
			ps.setInt(3, quantity);
			ps.setInt(4, cart_total);
			ps.executeUpdate();
			response.sendRedirect("cart.jsp");
		}
		rs.close();
		rs1.close();
		st.close();
		con.close();
	} catch (Exception e) {
		out.println(e);
	}
%>


</body>
</html>