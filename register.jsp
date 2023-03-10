<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="teampackage.*"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width,initial-scale=1">

	<title>UniEvents Register Page</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet">

<body>
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
							<h1 class="fs-4 card-title fw-bold mb-4">Register</h1>
							<form action="registerControl.jsp" method="POST" class="needs-validation" novalidate="" autocomplete="off">
								<div class="mb-3">
									<label class="mb-2 text-muted" for="name">Username</label>
									<input id="name" type="text" class="form-control" name="name" value="" required
										autofocus size="8" maxlength="15">
									<div class="invalid-feedback">
										Username is required
									</div>
									
								</div>

								<div class="mb-3">
									<label class="mb-2 text-muted" for="email">Email</label>
									<input id="email" type="email" class="form-control" name="email" value="" required>
									<div class="invalid-feedback">
										Email is invalid
									</div>
								</div>

								<div class="mb-3">
									<label class="mb-2 text-muted" for="password">Password</label>
									<input id="password" type="password" class="form-control" name="password" required size="8" maxlength="8">
									<div class="invalid-feedback">
										Password is required
									</div>
								</div>

                                <div class="mb-3">
									<label class="mb-2 text-muted" for="password">Password Confirmation</label>
									<input id="cpassword" type="password" class="form-control" name="cpassword" required size="8" maxlength="8">
									<div class="invalid-feedback">
										Confirm your password
									</div>
								</div>

								<div class="mb-3">
									
									<!-- Preference -->
									<div class="form-group">
										<label for="inputDepartment" class="mb-2 text-muted control-label">Choose your favorite Event Category</label>
										<div class="col-sm-10">
										<select class="form-control" name="pref">
											<option id="1">Business</option>
											<option id="2">Sport</option>
											<option id="3">Music</option>
										</select>
										</div>
									</div>
								</div>
                                

								<p class="form-text text-muted mb-3">
									By registering you agree with our terms and condition.
								</p>

								<div class="align-items-center d-flex">
									<button type="submit" class="btn btn-primary ms-auto">
										Register
									</button>
								</div>
							</form>
						</div>
						<div class="card-footer py-3 border-0">
							<div class="text-center">
								Already have an account? <a href="login.jsp" class="text-dark">Login</a>
							</div>
						</div>
					</div>
					<div class="btn-group">
  
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