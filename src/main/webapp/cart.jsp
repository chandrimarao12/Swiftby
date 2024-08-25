<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="p1.DBConnect" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <%@ include file="allcomponents/allCss.jsp"%>
</style>
</head>
<body>
<%@ include file="allcomponents/navbar.jsp"%>

<br>
	<div class="container-fluid">
		<h3 class="text-center">Home/Utility</h3>
		<div class="row">
		
<%

String email = "chandrimarao2512@gmail.com";
try {
    Connection conn = DBConnect.getConn();

    // Use a PreparedStatement to avoid SQL injection
    PreparedStatement ps = conn.prepareStatement("SELECT id FROM cart WHERE email=?");
    ps.setString(1, email);
    ResultSet rs = ps.executeQuery();
    
    while (rs.next()) {
        int itemId = rs.getInt(1);
        
        // Use a PreparedStatement to avoid SQL injection
        PreparedStatement preparedStatement = conn.prepareStatement("SELECT * FROM items WHERE id=?");
        preparedStatement.setInt(1, itemId);
        
        ResultSet rs1 = preparedStatement.executeQuery();
        while (rs1.next()) {
            int id = rs1.getInt(1);
            String iname = rs1.getString(2);
            String img = rs1.getString(3);
            String price = rs1.getString(4);
            %>
            <div class="col-md-3">
				<div class="card">
					<div class="card-body text-center">
						<img alt="" src=<%=img %>
							style="width: 150px; height: 200px;">
						<p class="text-info"><%= iname%></p>
						<div class="row">
						<a href="" class="btn btn-info btn-sm ml-2"><i class="fa-solid fa-cart-plus"></i>Add Cart</a>
						<a href="" class="btn btn-secondary btn-sm ml-1">View Details</a>
						<a href="" class="btn btn-info btn-sm ml-1"><%=price %></a>
						
						</div>
					</div>
				</div>
			</div>
            <% 
            // Output the retrieved data as needed
             }

        // Close the inner ResultSet and PreparedStatement
        rs1.close();
        preparedStatement.close();
    }

    // Close the outer ResultSet and PreparedStatement
    rs.close();
    ps.close();
    conn.close();
} catch(Exception e) {
    out.println("error");
    out.println(e);
}
%>
</div></div>
</body>
</html>
