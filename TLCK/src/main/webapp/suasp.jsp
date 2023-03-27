<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="java.sql.*"%>
<%@page import="cosodulieu.database"%>
<!DOCTYPE html>
<html lang="en">

<head>
<!-- Required meta tags-->
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="Colorlib Templates">
<meta name="author" content="Colorlib">
<meta name="keywords" content="Colorlib Templates">

<!-- Title Page-->
<title>Sửa sản phẩm</title>

<!-- Icons font CSS-->
<link href="vendor/mdi-font/css/material-design-iconic-font.min.css"
	rel="stylesheet" media="all">
<link href="vendor/font-awesome-4.7/css/font-awesome.min.css"
	rel="stylesheet" media="all">
<!-- Font special for pages-->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i"
	rel="stylesheet">

<!-- Vendor CSS-->
<link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
<link href="vendor/datepicker/daterangepicker.css" rel="stylesheet"
	media="all">

<!-- Main CSS-->
<link href="css/main.css" rel="stylesheet" media="all">
</head>

<body>
	<div class="page-wrapper bg-gra-03 p-t-45 p-b-50">
		<div class="wrapper wrapper--w790">
			<div class="card card-5">
				<div class="card-heading">
					<h2 class="title">Sửa sản phẩm</h2>
				</div>
				<div class="card-body">
					<%
					request.setCharacterEncoding("utf-8");

					try {
						Connection con = database.conn();
						Statement st = con.createStatement();
						String id2 = request.getParameter("maSP2");
						String sql = "Select * from sanpham where MASP=" + id2;
						ResultSet rs = st.executeQuery(sql);
						while (rs.next()) {
					%>
					<form action="xuly_suasp.jsp">
						<div class="form-row">
							<div class="name">Mã sản phẩm</div>
							<div class="value">
								<div class="input-group">
									<h3>
										<input class="input--style-5" type="text" name="txtMaSP" readonly="readonly"
										value="<%out.println(rs.getString("MASP"));%>">
									</h3>
								</div>
							</div>
						</div>


						<div class="form-row">
							<div class="name">Tên sản phẩm</div>
							<div class="value">
								<div class="input-group">
									<input class="input--style-5" type="text" name="tenSP1"
										value="<%out.println(rs.getString("TENSP"));%>">
								</div>
							</div>
						</div>
						<div class="form-row">
							<div class="name">Đơn giá</div>
							<div class="value">
								<div class="input-group">
									<input class="input--style-5" type="text" name="giaSP1"
										value="<%out.println(rs.getString("DONGIA"));%>">
								</div>
							</div>
						</div>
						<div class="form-row">
							<div class="name">Số lượng</div>
							<div class="value">
								<div class="input-group">
									<input class="input--style-5" type="text" name="slSP1"
										value="<%out.println(rs.getString("SOLUONG"));%>">
								</div>
							</div>
						</div>
						<div class="form-row">
							<div class="name">
								<label for="anhSP">Chọn ảnh:</label>
							</div>
							<div class="value">
								<div class="input-group">
									<input class="input--style-5" type="file" id="myfile"
										name="anhSP1"
										value="<%out.println(rs.getString("HINHANH"));%>">
								</div>
							</div>
						</div>
						<div class="form-row">
							<div class="name">Mã loại</div>
							<div class="value">
								<div class="input-group">
									<input class="input--style-5" type="text" name="maLoaiSP1"
										value="<%out.println(rs.getString("MALOAI"));%>">
								</div>
							</div>
						</div>
						<div class="form-row">
							<div class="name">Mô tả</div>
							<div class="value">
								<div class="input-group">
									<textarea rows="6" cols="65" name="motaSP1">
										<%
										out.println(rs.getString("MOTA"));
										%>
									</textarea>
								</div>
							</div>
						</div>
						<div class="form-row">
							<div class="name">Chi tiết</div>
							<div class="value">
								<div class="input-group">
									<textarea rows="6" cols="65" name="chitietSP1">
										<%
										out.println(rs.getString("CHITIET"));
										%>
									</textarea>
								</div>
							</div>
						</div>
						<div>
							<button class="btn btn--radius-2 btn--red" type="submit">Sửa</button>
						</div>
					</form>
					<%
					}
					st.close();
					con.close();
					} catch (Exception e) {
					out.println(e);
					}
					%>
				</div>
			</div>
		</div>
	</div>

	<!-- Jquery JS-->
	<script src="vendor/jquery/jquery.min.js"></script>
	<!-- Vendor JS-->
	<script src="vendor/select2/select2.min.js"></script>
	<script src="vendor/datepicker/moment.min.js"></script>
	<script src="vendor/datepicker/daterangepicker.js"></script>

	<!-- Main JS-->
	<script src="js/global.js"></script>

</body>
<!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>
<!-- end document-->