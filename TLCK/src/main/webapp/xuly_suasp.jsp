<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="java.sql.*"%>
<%@page import="cosodulieu.database"%>

<%
request.setCharacterEncoding("UTF-8");
String id = request.getParameter("txtMaSP");
String name = request.getParameter("tenSP1");
int price = Integer.parseInt(request.getParameter("giaSP1"));
int quanlity = Integer.parseInt(request.getParameter("slSP1"));
String img = request.getParameter("anhSP1");
String idCategory = request.getParameter("maLoaiSP1");
String description = request.getParameter("motaSP1");
String detail = request.getParameter("chitietSP1");
try {
	Connection con = database.conn();
	Statement st = con.createStatement();
	String sql = "UPDATE `sanpham` SET TENSP='" + name + "',DONGIA='" + price + "',SOLUONG='" + quanlity + "',HINHANH='" + img + "',MALOAI='" + idCategory + "',MOTA='" + description + "',CHITIET='" + detail + "' where MASP='" + id+"'";
	st.executeUpdate(sql);
	out.println("sql" + sql);
	response.sendRedirect("quanlysp.jsp");
	st.close();
	con.close();
} catch (Exception err) {
	out.println(err);
}
%>