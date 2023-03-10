<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="error_ex3_8200127.jsp"%>

<!DOCTYPE html>
<html lang="en">
	<head> 
		<!-- Header -->       
		<%@ include file="header_ex3_8200127.jsp" %>
		<!-- End header -->
		
          <!-- Adding some custom style to page -->
		<style>						
			.form-signin {
				max-width: 330px;
				padding: 15px;
				margin: 0 auto;
			}
			.form-signin .form-signin-heading,
			.form-signin .checkbox {
				margin-bottom: 10px;
			}
			.form-signin .form-control {
				position: relative;
				height: auto;
				-webkit-box-sizing: border-box;
				-moz-box-sizing: border-box;
				box-sizing: border-box;
				padding: 10px;
				font-size: 16px;
			}
			.form-signin .form-control:focus {
				z-index: 2;
			}
			.form-signin input[type="text"] {
				margin-bottom: 10px;
				border-bottom-right-radius: 0;
				border-bottom-left-radius: 0;
			
			}
			.form-signin input[type="password"] {
				margin-bottom: 10px;
				border-top-left-radius: 0;
				border-top-right-radius: 0;
			}
		</style>
	</head>
	
	<body>
		
		<div class="container" role="main">

            <% if(request.getAttribute("message") != null) { %>		
                <div class="alert alert-danger text-center" role="alert"><%=(String)request.getAttribute("message") %></div>
            <% } %>
    
            <form class="form-signin" method="post" action="loginController_ex3_8200127.jsp">
                <h2 class="form-signin-heading text-center">Please sign in</h2>
                <label for="inputusername" class="sr-only">Username</label> 
                <input type="text" name="username" id="inputusername" class="form-control" placeholder="username" required>
                <label for="inputpassword" class="sr-only">Password</label>
                <input name="password" type="password" id="inputpassword" class="form-control" placeholder="password" required>
    
                <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
            </form>
            <div class="alert alert-info"><strong>Help: </strong>
                    <ul>
                        <li>For John Doe: jdoe 1111</li>
                        <li>For Mary Smith: msmith 2222</li>
                        <li>For Bob Jakson: bjakson 3333</li>
                    </ul>
            </div>
    
          </div>
	     <!-- /container -->

		<!-- footer -->
		<%@ include file="footer_ex3_8200127.jsp"  %>
		<!-- End footer -->
	</body>
</html>