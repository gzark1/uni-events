<%@ page language="java" contentType="text/html;
charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="registerController_ex3_8200057.jsp" %>

<!DOCTYPE html>
<html>

    <%@ include file="header_ex3_8200057.jsp" %>

    <body>

        <!-- Fixed navbar -->
        <nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                        aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span> <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">8200057</a>
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li><a href="index_ex3_8200057.jsp">Home</a></li>
                        <li class="active"><a href="register_ex3_8200057.jsp">Register</a></li>
                        <li><a href="about_ex3_8200057.jsp">About</a></li>
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
                Please fill in the following form to create an account.
            </div>
            <form action="registerController_ex3_8200057.jsp" method="POST" class="form-horizontal ">
                <div class="form-group">
                    <label for="name" class="col-sm-2 control-label">Name</label>
                    <div class="col-sm-10">
                        <input type="name" name="name" class="form-control" id="name" placeholder="your name">
                    </div>
                </div>
                <div class="form-group">
                    <label for="surname" class="col-sm-2 control-label">Surname</label>
                    <div class="col-sm-10">
                        <input type="surname" name="lastname" class="form-control" id="surname" placeholder="your surname">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputEmail" class="col-sm-2 control-label">Email</label>
                    <div class="col-sm-10">
                        <input type="email" name="email" class="form-control" id="inputEmail" placeholder="your email">
                    </div>
                </div>
                <div class="form-group">
                    <label for="username" class="col-sm-2 control-label">Username</label>
                    <div class="col-sm-10">
                        <input type="username" name="username" class="form-control" id="username" placeholder="your username">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputPassword" class="col-sm-2 control-label">Password</label>
                    <div class="col-sm-10">
                        <input type="password" name="passone" class="form-control" id="inputPassword" placeholder="your password">
                    </div>
                </div>
                <div class="form-group">
                    <label for="confirmPassword" class="col-sm-2 control-label">Confirm</label>
                    <div class="col-sm-10">
                        <input type="password" name="passtwo" class="form-control" id="confirmPassword"
                            placeholder="confirm your password">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" name="checkbox"> I agree to the terms and conditions
                            </label>
                        </div>
                    </div>
                    <br><br>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <button type="submit"
                                class="btn btn-success">Submit</button>
                            <button type="reset" class="btn btn-danger">Cancel</button>
                        </div>
                    </div>
                </div>
            </form>
        </div>

        <!-- /container -->

        <!-- footer -->
        <%@ include file="footer_ex3_8200057.jsp" %>
        <!-- End footer -->

        <!-- =================== Place all javascript at the end of the document so the pages load faster =================== -->
        <!-- jQuery library -->
        <script src="js/jquery.min.js"></script>
        <!-- Bootstrap core JavaScript -->
        <script src="js/bootstrap.min.js"></script>
    </body>

    </html>