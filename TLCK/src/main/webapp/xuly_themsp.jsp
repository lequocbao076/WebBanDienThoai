<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="java.sql.*"%>
<%@page import="cosodulieu.database"%>

<%
request.setCharacterEncoding("UTF-8");
String id = request.getParameter("maSP");
String name = request.getParameter("tenSP");
int price = Integer.parseInt(request.getParameter("giaSP"));
int quanlity = Integer.parseInt(request.getParameter("slSP"));
String img = request.getParameter("anhSP");
String idCategory = request.getParameter("maLoaiSP");
String description = request.getParameter("motaSP");
String detail = request.getParameter("chitietSP");
String url = request.getParameter("urlSp");
try {
	Connection con = database.conn();
	Statement st = con.createStatement();
	String sql = "insert into sanpham values('" + id + "','" + name + "','" + price + "','" + quanlity + "','" + img + "','" + idCategory + "','" + description + "','" + detail + "')";
	st.executeUpdate(sql);
	out.println("Thành công");
	response.sendRedirect("quanlysp.jsp");
	st.close();
	con.close();
} catch (Exception err) {
	out.println(err);
}
%>