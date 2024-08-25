 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>
<%@ include file="allcomponents/allCss.jsp" %>
</head>
<body style="background-color:#f0f1f2;">
<%@ include file="allcomponents/navbar.jsp" %>
<div class="container p-2">
<div class="row">
<div class="col-md-4 offset-md-4">
<div class="card">
<div class="card-body">
<h4 class="text-center">Register
</h4>




<form action="register" method="post">
<div class="form-group">
    <label for="exampleInputEmail1">Enter Full Name</label>
    <input type="text" class="form-control" name="fname" id="exampleInputEmail1" aria-describedby="emailHelp" required="required" placeholder="Enter full Name">
    
    </div>

  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input type="email" class="form-control"name="email" id="exampleInputEmail1" aria-describedby="emailHelp" required="required" placeholder="Enter email">
    
    </div>
    <div class="form-group">
    <label for="exampleInputEmail1">Phone No</label>
    <input type="number" class="form-control" name="phno" id="exampleInputEmail1" aria-describedby="emailHelp"  placeholder="Enter Phone no">
    
    </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" class="form-control" name="password" id="exampleInputPassword1" required="required" placeholder="Password">
  </div>
  <div class="form-check">
    <input type="checkbox" class="form-check-input" name="check" id="exampleCheck1">
    <label class="form-check-label" for="exampleCheck1">Agree terms & Conditions</label>
  </div>
  <div class="text-center">
  <button type="submit" class="btn btn-info">Register</button>
  
  </div>
</form>


</div>
</div></div>
 </div></div>
</body>
</html>