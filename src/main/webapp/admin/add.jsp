<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="p1.DBConnect" %>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String iname=request.getParameter("iname");		
String img=request.getParameter("img");
String price =request.getParameter("price"); // Default value, you can change it to another appropriate default
try{
	
    Connection conn=DBConnect.getConn();
	String sql="insert into items(iname,price,img) values(?,?,?)";
	PreparedStatement ps=conn.prepareStatement(sql);
	ps.setString(1, iname);
	ps.setString(2, price);
	ps.setString(3, img);
	
	int a=ps.executeUpdate();

	if(a>0){
		out.println("Item added");
		response.sendRedirect("home.jsp");
		}
	else{
		out.println("Item not added");
		response.sendRedirect("add.html");
	}
	}	
catch(Exception e){
	out.println("error");
	out.println(e);
}
%>
</body>
</html>