<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

     <head>
          <meta charset="utf-8">
          <meta http-equiv="X-UA-Compatible" content="IE=edge">
          <meta name="viewport" content="width=device-width, initial-scale=1">
          <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
          <meta name="description" content="Lab exercise template 2019-2020">
          <meta name="author" content="sofos@aueb.gr">
          <link rel="icon" href="images/favicon.ico">

          <title>1η Εργαστηριακη Άσκηση</title>

          <!-- Bootstrap core CSS -->
          <link rel="stylesheet" href="css/bootstrap.min.css">
          <!-- Bootstrap Optional theme -->
          <link rel="stylesheet" href="css/bootstrap-theme.min.css">
          <!-- Custom styles for this template -->
          <link href="css/theme_8XXXXXX.css" rel="stylesheet">
          <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
          <!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
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
                              <li><a href="index_ex1_8200127.jsp">Home</a></li>
                              <li class="active"><a href="register_ex1_8200127.jsp">Register</a></li>
                              <li><a href="about_ex1_8200127.jsp">About</a></li>
                         </ul>

                    </div>
                    <!--/.nav-collapse -->
               </div>
          </nav>

          <div class="container theme-showcase" role="main">

               <!-- Main jumbotron for a primary marketing message or call to action -->
               <div class="jumbotron">
                    <h1>1η Ατομική Άσκηση</h1>
               </div>

               <!-- Page Title -->

               <%
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

               if (name.length() >= 3 && surname.length() >= 3 && username.length() >= 5 && password.length() >= 6 && password.equals(confirm) && agree != null) { %>
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
                    <a href="register_ex1_8200127.jsp" class="btn btn-info" role="button"><span
                         class="glyphicon glyphicon-chevron-left"></span>Back to the form</a>
               <%}%>

          </div>

          <!-- footer -->
          <footer class="navbar-inverse">
          <div class="container">
               <div class="row">
                    <div class="col-xs-12">
                         <p class="text-center">&copy; Copyright 2022 by ismgroup68</p>
                    </div>
               </div>
          </div>
          </footer>
     <!-- End footer -->
     </body>
</html>

<!-- Output -->
