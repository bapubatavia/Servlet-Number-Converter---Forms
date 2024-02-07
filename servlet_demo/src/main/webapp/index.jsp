<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
	<link rel="stylesheet" type="text/css" href="style.css">
	<title>StudentReg - Home</title>
</head>
<body>
	<nav class="navbar navbar-expand-md bg-light navbar-light pt-0" margin-top=>
		<div class="container">
			<a href="index.jsp" class="navbar-brand"><img src="./img/student_logo.jpg" width="120" height="80" alt="Brand Logo" /></a>

			<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navmenu">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navmenu">
				<ul class="navbar-nav mx-auto fw-semibold fs-5">
					<li class="nav-item me-5">
						<a href="index.jsp" class="nav-link">Home</a>
					</li>
				</ul>	
			    <span class="navbar-text">
					<a class="btn btn-primary text-white me-3" href="login.html" role="button">Login</a>
			    	<a class="btn btn-primary text-white" href="registration.html" role="button">Register</a>
			    </span>		
			</div>
		</div>
	</nav>
	<!-- Number converter part -->
	<div class="container pt-2">
		<h2>Number Converter</h2>
		<form class="w-50 my-3 row g-3 needs-validation" action="./numConv" method="get" novalidate>
			<p class="text-center fs-4 pb-4">Registration Form</p>
		  <div class="col-md-6">
			  <label for="inputFirstName" class="form-label fs-4">Enter Base 10 Number</label>
		  </div>
		  <div class="col-md-6">
			  <input type="number" class="form-control" id="enteredNum" name="num" required>
		  </div>
		  <div class="col-md-6">
			<button type="submit" name="binary" class="btn btn-primary">Binary</button>
			<button type="submit" name="hexa" class="btn btn-primary">Hexa</button>
			<button type="submit" name="octa" class="btn btn-primary">Octa</button>	
			<button type="submit" name="clear" class="btn btn-primary">Clear</button>	
		  </div>		  
	  </form>
	</div>
	<div class="container pt-2" id="conversionResult">
		<h2>Results</h2>
		<p>Number: <%= (request.getAttribute("number") != null) ? request.getAttribute("number") : "" %></p>
		<p>Result: <%= (request.getAttribute("converted") != null) ? request.getAttribute("converted") : "" %></p>
		<p><%= (request.getAttribute("message") != null) ? request.getAttribute("message") : "" %></p>
	</div>
	
	  </footer>

	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>