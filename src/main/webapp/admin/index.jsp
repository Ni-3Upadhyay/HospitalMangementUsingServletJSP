<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
	.paint-card{
		box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
	}
</style>

</head>
<body>

<%@ include file="navBar.jsp" %>

	<c:if test="${empty adminObj}">
		<c:redirect url="../AdminLogin.jsp"></c:redirect>
	</c:if>


	<div class="container p-5">
		<p class="text-center fs-3">Admin DashBoard</p>
		
		<div class="row">
			<div class="col-md-4">
				<div class="card paint-card">
					<div class="card-body text-center text-success">
						<i class="fa fa-user-md fa-3x" aria-hidden="true"></i><br>
						<p class="fs-4 text-center">
							Doctor <br>4
						</p>
					</div> 
				</div>
			</div>
			<div class="col-md-4">
				<div class="card paint-card">
					<div class="card-body text-center text-success">
						<i class="fa fa-user-circle fa-3x"></i><br>
						<p class="fs-4 text-center">
							User <br> 43
						</p>
					</div> 
				</div>
			</div>
			<div class="col-md-4">
				<div class="card paint-card">
					<div class="card-body text-center text-success">
						<i class="fa fa-calendar fa-3x" aria-hidden="true"></i><br>
						<p class="fs-4 text-center">
							Total Appointment <br> 453
						</p>
					</div> 
				</div>
			</div>
			
			<div class="col-md-4 mt-4">
				<div class="card paint-card">
					<div class="card-body text-center text-success">
						<i class="fa fa-calendar fa-3x" aria-hidden="true"></i><br>
						<p class="fs-4 text-center">
							Specialist <br> 34
						</p>
					</div> 
				</div>
			</div>
		
		</div>
	
	</div>
	
	

</body>
</html>