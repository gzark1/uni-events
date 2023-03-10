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

          <!-- Fixed navbar -->
          <nav class="navbar navbar-inverse navbar-fixed-top">
               <div class="container">
                    <div class="navbar-header">
                         <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                              data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                              <span class="sr-only">Toggle navigation</span>
                              <span class="icon-bar"></span> <span class="icon-bar"></span>
                              <span class="icon-bar"></span>
                         </button>
                         <a class="navbar-brand" href="#">8200127</a>
                    </div>
                    <div id="navbar" class="navbar-collapse collapse">
                         <ul class="nav navbar-nav">
                              <li><a href="index_ex3_8200127.jsp">Home</a></li>
                              <li class="active"><a href="register_ex3_8200127.jsp">Register</a></li>
                              <li><a href="about_ex3_8200127.jsp">About</a></li>
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

               <!-- Page Title -->

               <%
               boolean flag = false;
               String name = request.getParameter("name");
               String surname = request.getParameter("surname");
               String username = request.getParameter("username");
               String password = request.getParameter("password");
               String agree = request.getParameter("agree");
               String confirm = request.getParameter("confirm");
               String email = request.getParameter("email");
               %>
               
               <!-- Check which input is wrong -->
               <%

               if (name.length() >= 3 && surname.length() >= 3 && username.length() >= 5 && password.length() >= 6 && password.equals(confirm) && agree != null) { 
                    UserDAO dao1 = new UserDAO();
                    User user1 = new User(name, surname, email, username, password);
                    try {
                         dao1.register(user1);
                    } catch (Exception e) { %>
                         <div class="page-header">
                              <h1>Registration form has errors</h1>
                         </div>
                         <div class="alert alert-danger" role="alert">
                              Sorry, username or email already registered
                         </div>
                         <a href="register_ex3_8200127.jsp" class="btn btn-info" role="button"><span
                              class="glyphicon glyphicon-chevron-left"></span>Back to the form</a>
                    <%
                    flag = true;
                    }

                    if(flag == false) { %>

                         <div class="page-header">
                              <h1>Registration Almost Done!</h1>
                         </div>
                         <div class="alert alert-success text-center" role="alert">
                              Note: A verification link has been sent to the Email: <%=email%>
                         </div>

                         <b>Name:</b> <%=name%> <br>
                         <b>Surame:</b> <%=surname%> <br>
                         <b>Email:</b> <%=email%> <br>
                         <b>Username:</b> <%=username%> <br>

                    <%
                    }
                                
               } else { %>
                    <div class="page-header">
                         <h1>Registration form has errors</h1>
                    </div>
                    <div class="alert alert-danger" role="alert">
                         <ol>
                         <% if(name.length() < 3) { %>
                              <li> Name must be at leat 3 characters long<br></li>
                         <%}
                         if(surname.length() < 3) { %>
                              <li> Surname must be at leat 3 characters long<br></li>
                         <%}
                         if(username.length() < 5) { %>
                              <li> Username must be at leat 5 characters long<br></li>
                         <%}
                         if(password.length() < 6) { %>
                              <li> Password must be at leat 6 characters long<br></li>
                         <%}
                         if(agree == null) { %>
                              <li> You must agree to terms and conditions<br></li>
                         <%}
                         if(!password.equals(confirm)) { %>
                              <li> Password and confirm do not match<br></li>
                         <%}%>
                         </ol>
                    </div>
                    <a href="register_ex3_8200127.jsp" class="btn btn-info" role="button"><span
                         class="glyphicon glyphicon-chevron-left"></span>Back to the form</a>
               <%}%>

          </div>
          <!-- /container -->

          <!-- footer -->
		<%@ include file="footer_ex3_8200127.jsp"  %>
		<!-- End footer -->
     </body>
</html>

