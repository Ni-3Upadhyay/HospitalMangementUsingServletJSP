<%@page import="com.Connection.DBConnection"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>

<%@ include file="Bootstrap.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index Page</title>

<style>
	.paint-card{
		box-shadow: 0 0 10px 0 rgba(0,0,0,0.3);
	}

</style>

</head>
<body>
	<%@ include file="NavBar.jsp"%>



	<div id="carouselExampleIndicators" class="carousel slide"
		data-bs-ride="carousel">
		<div class="carousel-indicators">
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="0" class="active" aria-current="true"
				aria-label="Slide 1"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="1" aria-label="Slide 2"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="2" aria-label="Slide 3"></button>
		</div>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="Img/first.webp" class="d-block w-100" alt="..."
					height="500px">
			</div>
			<div class="carousel-item">
				<img src="Img/second.webp" class="d-block w-100" alt="..."
					height="500px">
			</div>
			<div class="carousel-item">
				<img src="Img/third.webp" class="d-block w-100" alt="..."
					height="500px">
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>


	<div class="container p-3">
		<p class="text-center fs-2 ">Key Features of our Hospital</p>

		<div class="row">
			<div class="col-md-8 p-5">
				<div class="row">
					<div class="col-md-6">
						<div class="card paint-card">
							<div class="card-body">
							<p class="fs-5">100% Safety</p>
								<p>Lorem ipsum pharetra scelerisque ac scelerisque
									suspendisse adipiscing platea, lectus ac</p>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="card paint-card">
							<div class="card-body">
							<p class="fs-5">Clean Ennviroment</p>
								<p>Lorem ipsum pharetra scelerisque ac scelerisque
									suspendisse adipiscing platea, lectus ac</p>
							</div>
						</div>
					</div>
					<div class="col-md-6 mt-2">
						<div class="card paint-card">
							<div class="card-body">
							<p class="fs-5">Friendly Doctors</p>
								<p>Lorem ipsum pharetra scelerisque ac scelerisque
									suspendisse adipiscing platea, lectus ac</p>
							</div>
						</div>
					</div>
					<div class="col-md-6 mt-2">
						<div class="card paint-card">
							<div class="card-body">
							<p class="fs-5">Medical Research</p>
								<p>Lorem ipsum pharetra scelerisque ac scelerisque
									suspendisse adipiscing platea, lectus ac</p>
							</div>
						</div>
					</div>
				</div>
				
			</div>
			<div class="col-md-4 ">
				<img src="Img/four.webp" width="100%" height="100%">
			</div>	
			
		</div>

	</div>


<hr>

	<div class="container p-2">
		<p class="text-center fs-2 ">Our Team</p>
		<div class = "row">
			<div class="col-md-3">
				<div class="card-body text-center">
					<img src="Img/doc2.webp" width="250px" height="300px">
					<p class="fw-bold fs-5">Smuni Simi</p>
					<p class="fs-7">(CEO & chairman)</p>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card-body text-center">
					<img src="Img/doc1.webp" width="250px" height="300px">
					<p class="fw-bold fs-5">Smuni Simi</p>
					<p class="fs-7">(CEO & chairman)</p>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card-body text-center">
					<img src="Img/doc3.webp" width="250px" height="300px">
					<p class="fw-bold fs-5">Smuni Simi</p>
					<p class="fs-7">(CEO & chairman)</p>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card-body text-center">
					<img src="Img/doc4.webp" width="250px" height="300px">
					<p class="fw-bold fs-5">Smuni Simi</p>
					<p class="fs-7">(CEO & chairman)</p>
				</div>
			</div>
		</div>
	</div>

	<%@ include file="footer.jsp" %>

</body>
</html>