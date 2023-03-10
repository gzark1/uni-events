<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="error_ex3_8200127.jsp"%>

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
               <div class="page-header">
                    <h1>Registration Form</h1>
               </div>

               <div class="alert alert-warning text-center" role="alert">
                    <b>Please fill in the following form to create an account.</b>
               </div>

               <form action="registerController_ex3_8200127.jsp" method="POST" class="form-horizontal">


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
          <!-- /container -->

          <!-- footer -->
		<%@ include file="footer_ex3_8200127.jsp"  %>
		<!-- End footer -->
     </body>

</html>