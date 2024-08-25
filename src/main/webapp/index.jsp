<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page import="p1.DBConnect" %>
	<%@ page import="java.sql.*" %>
	<%@ page import="java.sql.Connection" %>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="allcomponents/allCss.jsp"%>
<style type="text/css">
.back-img {
	background: url("img/b.jpg");
	height: 80vh;
	width: 100%;
	background-repeat: no-repeat;
	background-size: cover;
}
</style>


</head>
<body>
	<%@ include file="allcomponents/navbar.jsp"%>

	<div class="container-fluid back-img"></div>
<br>
<a href="cart.jsp" class="btn btn-info btn-sm ml-1">View Cart</a>
	<div class="container-fluid">
		<h3 class="text-center">Home/Utility</h3>
		<div class="row">
		
		<%
		try{
			 Connection conn=DBConnect.getConn();
			 String sql = "SELECT * FROM items ";
			    PreparedStatement ps = conn.prepareStatement(sql);
			   
			    // Execute query
			    ResultSet rs = ps.executeQuery();
			while (rs.next()) {	
				int id= rs.getInt(1);
				
				String iname=rs.getString(2);
				String price= rs.getString(4);
				String img=rs.getString(3);
				
		%>
		<div class="col-md-3">
				<div class="card">
					<div class="card-body text-center">
						<img alt="" src=<%=img %>
							style="width: 150px; height: 200px;object-fit:cover;">
						<p class="text-info"><%= iname%></p>
						<div class="row">
						<a href="Data.jsp?id=<%= id %>" class="btn btn-info btn-sm ml-2"><i class="fa-solid fa-cart-plus"></i>Add Cart</a>
						<a href="" class="btn btn-secondary btn-sm ml-1">View Details</a>
						<a href="" class="btn btn-info btn-sm ml-1"><%=price %></a>
						
						</div>
					</div>
				</div>
			</div>
		<%
		        
			
		}rs.close();
		        ps.close();
		}
		catch(Exception e){
			out.println("error");
			out.println(e);
		}
		
		%>
	
		
		
			<div class="col-md-3">
				<div class="card">
					<div class="card-body text-center">
						<img alt="" src="img/curtain1.jpg"
							style="width: 150px; height: 200px;">
						<p class="text-info">Curtains</p>
						<div class="row">
						<a href="" class="btn btn-info btn-sm ml-2"><i class="fa-solid fa-cart-plus"></i>Add Cart</a>
						<a href="" class="btn btn-secondary btn-sm ml-1">View Details</a>
						<a href="" class="btn btn-info btn-sm ml-1">500</a>
						
						</div>
					</div>
				</div>
			</div>
			
			
			<div class="col-md-3">
				<div class="card">
					<div class="card-body text-center">
						<img alt="" src="img/sofa2.jpg"
							style="width: 150px; height: 200px;">
						<p class="text-info">Sofa</p>
						<div class="row">
						<a href="" class="btn btn-info btn-sm ml-2"><i class="fa-solid fa-cart-plus"></i>Add Cart</a>
						<a href="" class="btn btn-secondary btn-sm ml-1">View Details</a>
						<a href="" class="btn btn-info btn-sm ml-1">5000</a>
						
						</div>
					</div>
				</div>
			</div>
			
			
			
			<div class="col-md-3">
				<div class="card">
					<div class="card-body text-center">
						<img alt="" src="img/sofa1.jpg"
							style="width: 150px; height: 200px;">
						<p class="text-info">Curtains</p>
						<div class="row">
						<a href="" class="btn btn-info btn-sm ml-2"><i class="fa-solid fa-cart-plus"></i>Add Cart</a>
						<a href="" class="btn btn-secondary btn-sm ml-1">View Details</a>
						<a href="" class="btn btn-info btn-sm ml-1">500</a>
						
						</div>
					</div>
				</div>
			</div>
			

<br>
<hr>
	<div class="container-fluid">
		
		<div class="row">
			<div class="col-md-3">
				<div class="card">
					<div class="card-body text-center">
						<img alt="" src="img/Scarf.jpg"
							style="width: 150px; height: 200px;">
						<p class="text-info">Scarf</p>
						<div class="row">
						<a href="" class="btn btn-info btn-sm ml-2"><i class="fa-solid fa-cart-plus"></i>Add Cart</a>
						<a href="" class="btn btn-secondary btn-sm ml-1">View Details</a>
						<a href="" class="btn btn-info btn-sm ml-1">199</a>
						
						</div>
					</div>
				</div>
			</div>
			
			
			<div class="col-md-3">
				<div class="card">
					<div class="card-body text-center">
						<img alt="" src="img/shirt1.jpg"
							style="width: 150px; height: 200px;">
						<p class="text-info">Shirt</p>
						<div class="row">
						<a href="" class="btn btn-info btn-sm ml-2"><i class="fa-solid fa-cart-plus"></i>Add Cart</a>
						<a href="" class="btn btn-secondary btn-sm ml-1">View Details</a>
						<a href="" class="btn btn-info btn-sm ml-1">500</a>
						
						</div>
					</div>
				</div>
			</div>
			
			
			

	</div>
<br><hr>
	
	</div>


</body>
</html>