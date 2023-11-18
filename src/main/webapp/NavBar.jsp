<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<nav class="navbar navbar-expand-lg navbar-dark bg-success">
  <div class="container-fluid">
    <a class="navbar-brand" href="index.jsp"><i class="fa-solid fa-house-medical fa-beat" style="color: #f8f1f1;"></i> Medi Home</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
      
      <c:if test="${empty userObj }">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="AdminLogin.jsp"><i class="fa-solid fa-right-to-bracket" style="color: #f4f5f5;"></i> &nbsp;  Admin</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="DoctorLogin.jsp">Doctor</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Appointment</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="UserLogin.jsp">User</a>
        </li>
        
        </c:if>
        
        
        <c:if test="${not empty userObj }">
        	<li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Appointment</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">View Appointment</a>
        </li>
       
        
         <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            	${userObj.fullName }
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="#">Change Password</a></li>
            <li><a class="dropdown-item" href="userLogout">Logout</a></li>
           
           
          </ul>
        </li> 
       <!--  <li class="nav-item">
          <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
        </li> --->
      </c:if>
      
    </div>
  </div>
</nav>