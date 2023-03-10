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
               <div class="page-header">
                    <h1>Registration Form</h1>
               </div>

               <div class="alert alert-warning text-center" role="alert">
                    <b>Please fill in the following form to create an account.</b>
               </div>

               <form action="registerController_ex1_8200127.jsp" method="POST" class="form-horizontal">


                    <!-- Name -->
                    <div class="form-group">
                         <label for="name" class="col-sm-2 control-label main-label">Name </label>
                         <div class="col-sm-10">
                              <input type="text" name="name" id="name" class="form-control" placeholder="your name">
                         </div>
                    </div>

                    <!-- Surname -->
                    <div class="form-group">
                         <label for="surname" class="col-sm-2 control-label main-label">Surname </label>
                         <div class="col-sm-10">
                              <input type="text" name="surname" id="surname" class="form-control"
                                   placeholder="your surname">
                         </div>
                    </div>

                    <!-- Email -->
                    <div class="form-group">
                         <label for="email" class="col-sm-2 control-label main-label">Email </label>
                         <div class="col-sm-10">
                              <input type="text" name="email" id="email" class="form-control" placeholder="your email">
                         </div>
                    </div>

                    <!-- Username -->
                    <div class="form-group">
                         <label for="username" class="col-sm-2 control-label main-label">Username </label>
                         <div class="col-sm-10">
                              <input type="text" name="username" id="username" class="form-control"
                                   placeholder="your username">
                         </div>
                    </div>

                    <!-- Password -->
                    <div class="form-group">
                         <label for="password" class="col-sm-2 control-label main-label">Password </label>
                         <div class="col-sm-10">
                              <input type="password" name="password" id="password" class="form-control"
                                   placeholder="your password">
                         </div>
                    </div>

                    <!-- Confirm -->
                    <div class="form-group">
                         <label for="confirm" class="col-sm-2 control-label main-label">Confirm </label>
                         <div class="col-sm-10">
                              <input type="password" name="confirm" id="confirmpassword" class="form-control"
                                   placeholder="confirm your password">
                         </div>
                    </div>


                    <!-- Terms & Conditions -->
                    <div class="form-group">

                         <label class="col-sm-2 control-label main-label"></label>
                         <div class="col-sm-10">

                              <label class="checkbox-inline">
                                   <input type="checkbox" name="agree" value="checked"> <strong class="text-info">I
                                        agree to the terms and conditions</strong>
                              </label>


                         </div>

                    </div>

                    <!-- buttons -->
                    <div class="form-group">
                         <div class="col-sm-10 col-sm-offset-2">
                              <button type="submit" class="btn btn-success">
                                   <span class="glyphicon glyphicon-ok"></span> Submit
                              </button>
                              <button type="reset" class="btn btn-danger">
                                   <span class="glyphicon glyphicon-remove"></span> Cancel
                              </button>
                         </div>
                    </div>

               </form>
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