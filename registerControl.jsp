<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="teampackage.*"%>
<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
	<meta name="viewport" content="width=device-width,initial-scale=1">

	<title>UniEvents Register Page</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet">


<body>

    <%
     boolean flag = false;
     String username = request.getParameter("name");
     String email = request.getParameter("email");
     String password = request.getParameter("password");
     String cpassword = request.getParameter("cpassword");
     String preference = request.getParameter("pref");
    %>
    
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
						<div class="card-body p-5 text-center">
                            
                            <!-- Correct Input -->
                            <% if(username.length() >= 8 && password.length() >= 8 && password.equals(cpassword) && preference != null) { 
                                User user = new User(username, password, email, preference);
                                UserDAO dao = new UserDAO();
                                try {
                                    dao.register(user);
                                } catch( Exception e) { %>
                                    <div class="alert alert-danger text-center" role="alert">
                                        Sorry, username or email already registered
                                    </div>
                                    <a href="register.jsp" class="btn btn-info" role="button"><span
                                        class="glyphicon glyphicon-chevron-left"></span>Back to register</a>
                                <%
                                flag = true; 
                                }
                                
                                if(flag == false) { %>
                                    <div class="page-header">
                                    <h5>Registration Almost Done!</h5>
                                    </div>
                                    <div class="alert alert-success text-center" role="alert">
                                    A verification link has been sent to your Email!
                                    </div>
                                    <b>Username:</b> <%=username%> <br> 
                                    <b>Email:</b> <%=email%> <br>
                                    <b>Preference:</b> <%=preference%> <br>
                                <%
                                }
                                %>

                            <!--Wrong Input-->
                            <%
                            } else { %>
                                <div class="page-header">
                                    <h5>Registration Has Errors!</h5>
                                 </div>
                                 <div class="alert alert-danger text-center" role="alert">
                                    <ol>
                                        <% if (username.length() < 8) { %>
                                            <li>Username must be at least 8 characters long</li>
                                        <% } %>
                                        <% if (password.length() != 8 || cpassword.length() != 8) { %>
                                            <li>Password must be 8 characters long</li>
                                        <% } %>
                                        <% if (!password.equals(cpassword)) { %>
                                            <li>Password and confirmation do not match</li>
                                        <% } %>
                                    </ol>
                                 </div>
                                 <a href="register.jsp" class="btn btn-info" role="button"><span
                                    class="glyphicon glyphicon-chevron-left"></span>Back to the form</a>
                                <% } %>
                         </div>
                        
                    </div>
                </div>
            </div>
        </div>
        
    </section>    
    <div class="text-center mt-5 text-muted">
        Copyright &copy; 2022 &mdash; UniEvents
    </div>

</body>