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
	String incdec = request.getParameter("quantity");
	int price = 0;
	int total = 0;
	int quantity = 0;
	int final_total = 0;
	try {
		Connection con = database.conn();
		Statement st = con.createStatement();
		String sql = "select * from giohang where MASP = " + product_id + "";
		ResultSet rs = st.executeQuery(sql);
		while (rs.next()) {
			price = rs.getInt(3);
			total = rs.getInt(6);
			quantity = rs.getInt(5);
		}
		if (quantity == 1 && incdec.equals("dec"))
			response.sendRedirect("cart.jsp");
		else if (quantity != 1 && incdec.equals("dec")) {
			total = total - price;
			quantity = quantity - 1;
			st.executeUpdate(
			"update giohang set SOLUONG=" + quantity + ",TONGTIEN=" + total + " where MASP = " + product_id + "");
			response.sendRedirect("cart.jsp");
		} else {
			total = total + price;
			quantity = quantity + 1;
			st.executeUpdate(
			"update giohang set SOLUONG=" + quantity + ",TONGTIEN=" + total + " where MASP = " + product_id + "");
			response.sendRedirect("cart.jsp");
		}
	} catch (Exception e) {
		out.println(e);
	}
	%>


</body>
</html>