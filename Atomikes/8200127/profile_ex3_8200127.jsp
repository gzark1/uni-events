<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="error_ex3_8200127.jsp"%>
<%@ page import="exercise3_2022_2023_8200127.User" %>
<%@ page import="exercise3_2022_2023_8200127.UserDAO" %>
<%@ page import ="java.util.ArrayList"%>
<%@ page import ="java.util.List"%>

<!DOCTYPE html>
<html lang="en">
	<head>        
		<!-- Header -->       
		<%@ include file="header_ex3_8200127.jsp" %>
		<!-- End header -->		
	</head>

     <body>
          <%
		String username;
          String un;
          un = request.getParameter("uname");          
          UserDAO dao1 = new UserDAO();
		%>

          <% if(session.getAttribute("userObj2022") == null) {
			request.setAttribute("message", "You are not authorized to access this recource. Please login."); %>
			<jsp:forward page="login_ex3_8200127.jsp"/>
		<%
		} else {
			User usr = (User) session.getAttribute("userObj2022");
			username = usr.getUsername();	              				
		}
		
		%>

          <!-- Fixed navbar -->
		<nav class="navbar navbar-inverse navbar-fixed-top">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span> <span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#">8200127</a>
				</div>
				<div id="navbar" class="navbar-collapse collapse">
					<ul class="nav navbar-nav">
						<li><a href="index_ex3_8200127.jsp">Home</a></li>										
						<li><a href="about_ex3_8200127.jsp">About</a></li>				
						<li><a href="dashboard_ex3_8200127.jsp">Dashboard</a></li>
										
					</ul>
					<ul class="nav navbar-nav navbar-right">
                        <li>
							<p class="navbar-text">Signed in as <%=username%></p>
						</li>
						<li>
							<a href="logout_ex3_8200127.jsp"><span class="glyphicon glyphicon-log-out"></span> Sign out</a>
						</li>								        	
			        </ul>		
		
				</div>
				<!--/.nav-collapse -->
			</div>
		</nav>

          <div class="container theme-showcase" role="main">

               <!-- Main jumbotron for a primary marketing message or call to action -->
			<div class="jumbotron">
				<h1>3η Ατομική Άσκηση</h1>
			</div>

               <%
               if(dao1.findUser(un) != null) {
                    User user1 = dao1.findUser(un);
                    %>
                    <!-- Page Title -->
			     <div class="page-header">
				     <h1>Profile of: <code><%=user1.getFirstname()%> <%=user1.getLastname()%></code></h1>
			     </div>

                    <b>First Name:</b> <%=user1.getFirstname()%> <br>
                    <b>Last Name:</b> <%=user1.getLastname()%> <br>
                    <b>Email:</b> <%=user1.getEmail()%> <br>
                    <b>Username:</b> <%=user1.getUsername()%> <br>
               <%   
               } else { %>
                    <div class="alert alert-danger text-center" role="alert">
                         <b>User not found!</b>
                    </div>
               <%
               }
               %>
               
          </div>

          <!-- /container -->

          <!-- footer -->
          <%@ include file="footer_ex3_8200127.jsp"  %>
          <!-- End footer -->
     </body>
</html>