<%@page import="com.Entity.Doctor"%>
<%@page import="com.DAO.DoctorDao"%>
<%@page import="com.Entity.Specialist"%>
<%@page import="java.util.List"%>
<%@page import="com.Connection.DBConnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.DAO.SpecialistDao"%>
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
		
	<div class="container-fluid p-4">
  		<div class="row">
  			<div class="col-md-4">
  				<div class="card paint-card">
 					 <div class="card-body">
    					<p class="fs-3 text-center">Add Doctor</p>
    					
    					<c:if test="${not empty succMsg }">
    					<p class="text-center text-success">${succMsg }</p>
    					<c:remove var="succMsg" scope="session"/>
    					</c:if>
    					
    					<c:if test="${not empty errorMsg }">
    					<p class="text-center text-success">${errorMsg }</p>
    					<c:remove var="errorMsg" scope="session"/>
    					</c:if>
    					
    					
    					<form action="../addDoctor" method="post">
    						
    <div class="mb-3">
    <label for="name" class="form-label">Full Name</label>
    <input type="text" class="form-control" id="name" name="name" required >
  </div>
  <div class="mb-3">
    <label for="DOB" class="form-label">DOB</label>
    <input type="date" class="form-control" id="DOB" name="dob" required >
  </div>
  <div class="mb-3">
    <label for="qual" class="form-label">Qualification</label>
    <input type="text" class="form-control" id="qual" name="qualification" required >
  </div>
  <div class="mb-3">
    <label for="spec" class="form-label">Specialist</label>
    <select name="specialist" >
    	<option>--Select--</option>
    	
    	<%
    		SpecialistDao dao = new SpecialistDao(DBConnection.getConn());
    		
    		List<Specialist> list=dao.getAllSpecialist();
    		for(Specialist s: list)
    		
    		{%>
    			<option>
    			
    			<%= s.getSpecialistName() %>
    			
    			</option>
    			
    			
    		<% }
    	%>
    	
    	
    </select>
  </div>
  
  <div class="mb-3">
    <label for="email" class="form-label">Email</label>
    <input type="email" class="form-control" id="email" name="email" required >
  </div>
  <div class="mb-3">
    <label for="no" class="form-label">Mob No</label>
    <input type="text" class="form-control" id="no" name="num" required >
  </div>
  <div class="mb-3">
    <label for="pass" class="form-label">Password</label>
    <input type="text" class="form-control" id="pass" name="password" required >
  </div>
  
  <button type="submit" class="btn btn-primary">Submit</button>
    					</form>
  					</div>
				</div>
  			</div>
  			
    		<div class="col-sm-8">
    			
    			<div class="card paint-card">
  					<div class="card-body">
						  <p class="fs-3 text-center">Doctor Details</p>
						  
						  <table class="table">
						  		<thead>
						  			<tr>
						  				<th scope="col">Full Name</th>
						  				<th scope="col">DOB</th>
						  				<th scope="col">Qualification</th>
						  				<th scope="col">Specialist</th>
						  				<th scope="col">Email</th>
						  				<th scope="col">Mob No.</th>
						  				<th scope="col">Action</th>			  				
						  			</tr>
						  		</thead>
						  		<tbody>
						  		
						  			<%
						  			DoctorDao dao2 = new DoctorDao(DBConnection.getConn());
    								
    								List<Doctor> list2 = dao2.getAllDoctor();
    		
    								for(Doctor d : list2)
    								
    								{ %>
    									<tr>
    											<td><%= d.getFullName() %></td>
    											<td><%= d.getDob() %></td>
    											<td><%= d.getQualification() %></td>
    											<td><%= d.getSpecialist() %></td>
    											<td><%= d.getEmail() %></td>
    											<td><%= d.getMob() %></td>
    											<td>
    											<a href="#" class="btn btn-sm btn-primary">Edit</a>
    											<a href="#" class="btn btn-sm btn-danger">Delete</a> 
    											</td>
    									
    									</tr>
    									
    								
    									
    								<% }
    		
    								
						  			
						  			%>
						  		
						  		</tbody>
						  
						  </table>
  					</div>
				</div>
    		
    		
    		</div>
    		
  		</div>
  	</div>
		
</body>
</html>