<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="allCss.jsp"%>
<style type="text/css">
a{
text-decoration:none;
color:black;
}
a:hover{
text-decoration:none;
}
</style>
</head>
<body>
	<%@ include file="navbar.jsp"%>
<br>
<br>
<br>
<br>
<br>
	<div class="container">
		<div class="row p-5">
			<div class="col-md-3">
				<a href="add.html">
				<div class="card">
					<div class="card-body text-center">
						<i class="fas fa-plus-square fa-3x text-primary" ></i><br>

						<h4>Add Items</h4>
						--------
					</div>
				</div>
				</a>
			</div>
		
		<div class="col-md-3">
		<a href="">
			<div class="card">
				<div class="card-body text-center">
					<i class="fa-solid fa-right-from-bracket fa-3x"></i><br>

					<h4>LogOut</h4>
					--------
				</div>
			</div>
			</a>
		</div>


	<!--	<div class="col-md-3">
			<div class="card">
				<div class="card-body text-center">
					<i class="fas fa-plus-square fa-3x"></i><br>

					<h4>Add Items</h4>
					--------
				</div>
			</div>
		</div>

		<div class="col-md-3">
			<div class="card">
				<div class="card-body text-center">
					<i class="fas fa-plus-square fa-3x"></i><br>

					<h4>Add Items</h4>
					--------
				</div>
			</div>
		</div> -->

</div>

	</div>


</body>
</html>