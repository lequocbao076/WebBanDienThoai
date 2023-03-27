<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="cosodulieu.database"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Quản lý sản phẩm</title>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round|Open+Sans">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
body {
	color: #404E67;
	background: #F5F7FA;
	font-family: 'Open Sans', sans-serif;
}

.table-wrapper {
	width: 100%;
	margin: 30px auto;
	background: #fff;
	padding: 20px;
	box-shadow: 0 1px 1px rgba(0, 0, 0, .05);
}

.table-title {
	padding-bottom: 10px;
	margin: 0 0 10px;
}

.table-title h2 {
	margin: 6px 0 0;
	font-size: 22px;
}

.table-title .add-new {
	float: right;
	height: 30px;
	font-weight: bold;
	font-size: 12px;
	text-shadow: none;
	min-width: 100px;
	border-radius: 50px;
	line-height: 13px;
}

.table-title .add-new i {
	margin-right: 4px;
}

table.table {
	table-layout: fixed;
}

table.table tr th, table.table tr td {
	border-color: #e9e9e9;
}

table.table th i {
	font-size: 13px;
	margin: 0 5px;
	cursor: pointer;
}

table.table th:last-child {
	width: 100px;
}

table.table td a {
	cursor: pointer;
	display: inline-block;
	margin: 0 5px;
	min-width: 24px;
}

table.table td a.add {
	color: #27C46B;
}

table.table td a.edit {
	color: #FFC107;
}

table.table td a.delete {
	color: #E34724;
}

table.table td i {
	font-size: 19px;
}

table.table td a.add i {
	font-size: 24px;
	margin-right: -1px;
	position: relative;
	top: 3px;
}

table.table .form-control {
	height: 32px;
	line-height: 32px;
	box-shadow: none;
	border-radius: 2px;
}

table.table .form-control.error {
	border-color: #f50000;
}

table.table td .add {
	display: none;
}
</style>

</head>
<body>
	<div class="container">
		<div class="table-wrapper">
			<div class="table-title">
				<div class="row">
					<div class="col-sm-8">
						<h2>
							Prodcuts <b>Manage</b>
						</h2>
					</div>
					<div class="col-sm-4">
						<a href="themsp.jsp">
							<button type="button" class="btn btn-info add-new">
								<i class="fa fa-plus"></i> Thêm sản phẩm
							</button>
						</a>
					</div>
				</div>
			</div>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>Mã sản phẩm</th>
						<th>Tên sản phẩm</th>
						<th>Đơn giá</th>
						<th>Số lượng</th>
						<th width=200>Hình ảnh</th>
						<th>Mã loại</th>
						<th>Mô tả</tth>
						<th>Chi tiết</th>
						<th>Nút lệnh</th>
					</tr>
				</thead>
				<tbody>
					<%
					request.setCharacterEncoding("utf-8");
					try {
						Connection con = database.conn();
						Statement st = con.createStatement();
						String sql = "Select * from sanpham";
						ResultSet rs = st.executeQuery(sql);
						while (rs.next()) {
					%>
					<tr>
						<td style="align-items: center; justify-content: center;"><%=rs.getString("MASP")%></td>
						<td><%=rs.getString("TENSP")%></td>
						<td><%=rs.getString("DONGIA")%></td>
						<td><%=rs.getString("SOLUONG")%></td>
						<td><%=rs.getString("HINHANH")%></td>
						<td><%=rs.getString("MALOAI")%></td>
						<td><%=rs.getString("MOTA")%></td>
						<td><%=rs.getString("CHITIET")%></td>
						<td><a class="add" title="Add" data-toggle="tooltip"><i
								class="material-icons">&#xE03B;</i></a>
								 <a class="edit" title="Edit"
							href="suasp.jsp?maSP2=<%out.println(rs.getString("MASP"));%>"
							data-toggle="tooltip"><i class="material-icons">&#xE254;</i></a>


							<a class="delete" title="Delete" data-toggle="tooltip"
							href="xoasp.jsp?maSP1=<%=rs.getString("MASP")%>"><i
								class="material-icons">&#xE872;</i></a></td>
					</tr>
					<%
					}
					st.close();
					con.close();
					} catch (Exception e) {
					out.println(e);
					}
					%>
				</tbody>
			</table>
			<a href="index.jsp">Quay lại trang chủ</a>
		</div>
		
	</div>
</body>
</html>













