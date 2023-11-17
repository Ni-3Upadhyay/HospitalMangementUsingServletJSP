<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="Bootstrap.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Login</title>
<style>
	.paint-card{
		box-shadow: 0 0 10px 0 rgba(0,0,0,0.3);
	}

</style>
</head>
<body>
	<%@ include file="NavBar.jsp" %>
	
	
	<div class="container p-5">
		<div class="row">
		<div class="col-md-4 offset-md-4">
			<div class="card paint-card">
				<div class="card-body">
					<p class="fs-4 text-center">Admin Login</p>
					
					<form action="" method="post">
  <div class="mb-3 ">
    <label for="Email1" class="form-label">Email address</label>
    <input type="email" name="email" class="form-control" id="Email1" required>
    </div>
  <div class="mb-3">
    <label for="Password1" class="form-label">Password</label>
    <input type="password" name="password" class="form-control" id="Password1" required>
  </div>
  
  <button type="submit" class="btn bg-success text-white col-md-12">Login</button>
</form>
				</div>
			</div>
		</div>
		</div>
	</div>
	
	
	
</body>
</html>