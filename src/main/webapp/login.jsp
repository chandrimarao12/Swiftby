<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<%@ include file="allcomponents/allCss.jsp" %>
</head>
<body style="background-color:#f0f1f2;">
<%@ include file="allcomponents/navbar.jsp" %>


<div class="container p-2">
<div class="row">
<div class="col-md-4 offset-md-4">
<div class="card">
<div class="card-body">
<h4 class="text-center">Login
</h4>
<form action="login" method="post">
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input type="email" class="form-control" name="email" id="exampleInputEmail1" aria-describedby="emailHelp" required="required" placeholder="Enter email">
    
     </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" class="form-control" name="password" id="exampleInputPassword1" placeholder="Password">
  </div>
  
  <div class="text-center">
  <button type="submit" class="btn btn-info ">Login</button><br>
<a href="register.jsp">Create Account</a>
</div>
</form>

</div></div></div></div></div>
</body>

</html>