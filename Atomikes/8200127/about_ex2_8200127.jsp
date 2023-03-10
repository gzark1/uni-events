<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="error_ex2_8200127.jsp"%>
<%@ page import="exercise2_2022_2023_8200127.User" %>
<%@ page import="exercise2_2022_2023_8200127.UserDAO" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html lang="en">

     <head>
          <!-- Header -->       
		<%@ include file="header_ex2_8200127.jsp" %>
		<!-- End header -->
     </head>

     <body>
          <%
          User usr = (User) session.getAttribute("userObj2022");
          if(session.getAttribute("userObj2022") != null) { %>
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
						<li><a href="index_ex2_8200127.jsp">Home</a></li>										
						<li class="active"><a href="about_ex2_8200127.jsp">About</a></li>				
						<li ><a href="dashboard_ex2_8200127.jsp">Dashboard</a></li>
										
					</ul>				 
					<ul class="nav navbar-nav navbar-right">
                        <li>
							<p class="navbar-text">Signed in as <%=usr.getUsername() %></p>
						</li>
						<li>
							<a href="logout_ex2_8200127.jsp"><span class="glyphicon glyphicon-log-out"></span> Sign out</a>
						</li>								        	
			        </ul>		
		
				</div>
				<!--/.nav-collapse -->
			</div>
		</nav>

          <%  
          } else {
          %>
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
                              <li><a href="index_ex2_8200127.jsp">Home</a></li>										
                              <li class="active"><a href="about_ex2_8200127.jsp">About</a></li>				
                              
                                                  
                         </ul>				 
                         <ul class="nav navbar-nav navbar-right">
                              <li><a href="register_ex2_8200127.jsp">Register</a></li>
                              <li>
                                   <a href="login_ex2_8200127.jsp"> Sign in</a>
                              </li>								        	
                         </ul>		
          
                    </div>
                    <!--/.nav-collapse -->
               </div>
          </nav>

          <%
          }
          %>

          <div class="container theme-showcase" role="main">

               <!-- Main jumbotron for a primary marketing message or call to action -->
               <div class="jumbotron">
                    <h1>Group 68</h1>
               </div>

               <!-- Page Title -->
               <div class="page-header">
                    <h1>Group Members</h1>
               </div>

               <div class='media'>
                    <div class='media-left'>
                         <a href='#'>
                              <img class="media-object" src="images/member1.png" alt="...">
                         </a>
                    </div>
                    <div class='media-body'>
                         <br>
                         <h4 class="media-heading">Agapitos Oikonomidis<small> 8200127</small></h4>
                         <span class="glyphicon glyphicon-envelope">t8200127@aueb.gr</span>
                    </div>
               </div>

               <div class='media'>
                    <div class='media-left'>
                         <a href='#'>
                              <img class="media-object" src="images/member1.png" alt="...">
                         </a>
                    </div>
                    <div class='media-body'>
                         <br>
                         <h4 class="media-heading">Efthimis Karagounis<small> 8200057</small></h4>
                         <span class="glyphicon glyphicon-envelope">t8200057@aueb.gr</span>
                    </div>
               </div>

               <div class='media'>
                    <div class='media-left'>
                         <a href='#'>
                              <img class="media-object" src="images/member1.png" alt="...">
                         </a>
                    </div>
                    <div class='media-body'>
                         <br>
                         <h4 class="media-heading">Giorgos Zarkadas<small> 8200043</small></h4>
                         <span class="glyphicon glyphicon-envelope">t8200043@aueb.gr</span>
                    </div>
               </div>
               <br>

          </div>
          <!-- /container -->

          <!-- footer -->
		<%@ include file="footer_ex2_8200127.jsp"  %>
		<!-- End footer -->
     </body>

</html>