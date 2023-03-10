<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="teampackage.*"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width,initial-scale=1">

	<title>UniEvents Login Page</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet">

<body>
	<!-- Check if there is an error while login-->
	
	<section class="h-100">
		<div class="container h-100">
			<div class="row justify-content-sm-center h-100">
				<div class="col-xxl-4 col-xl-5 col-lg-5 col-md-7 col-sm-9">
					<div class="text-center my-5">
						<a href="index.jsp">
							<img src="images/uni.png" alt="logo" width="100">
						  </a>
						<h1 class="h3 mb-3 fw-normal"><strong>UniEvents</strong></h1>
					</div>
					<div class="card shadow-lg">
						<div class="card-body p-5">
							<% if(request.getAttribute("message") != null) { %>		
								<div class="alert alert-danger text-center" role="alert"><%=(String)request.getAttribute("message") %></div>
							 <% } %>
							<h1 class="fs-4 card-title fw-bold mb-4">Login</h1>

							<!--Form-->
							<form method="POST" class="needs-validation" novalidate="" autocomplete="off" action="loginController.jsp">
								<div class="mb-3">
									<label class="mb-2 text-muted" for="email">Email</label>
									<input id="email" type="email" class="form-control" name="email" value="" required
										autofocus>
									<div class="invalid-feedback">
										Email is invalid
									</div>
								</div>

								<div class="mb-3">
									<div class="mb-2 w-100">
										<label class="text-muted" for="password">Password</label>
									</div>
									<input id="password" type="password" class="form-control" name="password" required>
									<div class="invalid-feedback">
										Password is required
									</div>
								</div>
								<% 
								if(request.getAttribute("loginErrorMessage") != null) { 
								%>		
									<br>
									<p class="text-danger text-justify text-center"><%=(String)request.getAttribute("loginErrorMessage")%></p>
									
								<% 	
								} 
								%>								

								<div class="d-flex align-items-center">
									<div class="form-check">
										<input type="checkbox" name="remember" id="remember" class="form-check-input">
										<label for="remember" class="form-check-label">Remember Me</label>
									</div>
									<button type="submit" class="btn btn-primary ms-auto">
										Login
									</button>
								</div>
							</form>
							<!-- End of Form-->

						</div>
						<div class="card-footer py-3 border-0">
							<div class="text-center">
								Don't have an account? <a href="register.jsp" class="text-dark">Create One</a>
							</div>
						</div>
					</div>
					<div class="text-center mt-5 text-muted">
						Copyright &copy; 2022 &mdash; UniEvents
					</div>
				</div>
			</div>
		</div>
	</section>

	<script src="js/login.js"></script>
</body>

</html>