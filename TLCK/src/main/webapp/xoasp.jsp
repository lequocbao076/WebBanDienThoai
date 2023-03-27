<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="java.sql.*"%>
<%@page import="cosodulieu.database"%>

<%
String id = request.getParameter("maSP1");
try {
	Connection con = database.conn();
	Statement st = con.createStatement();
	String sql = "DELETE FROM sanpham WHERE MASP=" + id;
	st.executeUpdate(sql);
	out.println("Xóa thành công");
	response.sendRedirect("quanlysp.jsp");
	st.close();
	con.close();
} catch (Exception e) {
	out.print(e);
}
%>