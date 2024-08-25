<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="p1.DBConnect"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String email="21eg105f33@gmail.com";
int itemId = Integer.parseInt(request.getParameter("id"));
try{
	 Connection conn=DBConnect.getConn();
	 String sql = "SELECT * FROM items ";
	    PreparedStatement ps = conn.prepareStatement(sql);

	    // Execute query
	    ResultSet rs = ps.executeQuery();
		if (rs.next()) {	
		int id= itemId;
		
		String iname=rs.getString(2);
		String price= rs.getString(4);
		String img=rs.getString(3);
		
		String sql1 = "INSERT INTO cart VALUES (?, ?, ?, ?,?)";
		    PreparedStatement ps1 = conn.prepareStatement(sql1);
		    // Assuming itemId, pname, quantity, price, address, aname, email, cate, img are variables with appropriate values.
		    ps1.setInt(1, itemId);
		    ps1.setString(2, iname);
		    ps1.setString(4,price );
		    ps1.setString(3, img);
		    ps1.setString(5,email);

		    int rowsAffected = ps1.executeUpdate();
		    response.sendRedirect("index.jsp");
}
}
catch(Exception e){
	out.println("error");
	out.println(e);
}
%>
</body>
</html>