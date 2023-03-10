<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="error_ex3_8200127.jsp"%>
<%@ page import="exercise3_2022_2023_8200057.User" %>
<%@ page import="exercise3_2022_2023_8200057.UserDAO" %>
<%@ page import ="java.util.ArrayList"%>
<%@ page import ="java.util.List"%>

       

            <!DOCTYPE html>
            <html>

                <%@ include file="header_ex3_8200057.jsp" %>
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
                    <% boolean flag = false; 
                     String name=request.getParameter("name"); 
                    String lname=request.getParameter("lastname"); 
                    String uname=request.getParameter("username"); 
                    String email=request.getParameter("email"); 
                    String passone=request.getParameter("passone"); 
                    String passtwo=request.getParameter("passtwo"); 
                    String [] check = request.getParameterValues("checkbox"); %>

                    <!-- Page Title -->
                    <% if (name.length() >= 3 && lname.length() >= 3 && uname.length() >= 5 && passone.length() >= 6 && passone.equals(passtwo) && check != null) { %>
                       <% UserDAO udao = new UserDAO();
                          User userr = new User(name, lname, email, uname, passone );
                          try {
                            udao.register(userr);

                          } catch (Exception e) { %>
                            <div class="page-header">
                                <h1>Registration form has errors</h1>
                           </div>
                           <div class="alert alert-danger" role="alert">
                                Sorry, username or email already registered
                           </div>
                           <a href="register_ex3_8200057.jsp" class="btn btn-info" role="button"><span
                                class="glyphicon glyphicon-chevron-left"></span>Back to the form</a>
                       <%
                        flag = true;
                        } 
                       if (flag == false) {
                       %>
                        <div class="page-header">
                            <h1>Registration Almost Done!</h1>
                        </div>
                        <div class="alert alert-success text-center" role="alert">
                            Note: A verification link has been sent to the Email: <%=email%>
                        </div>
                              <b>Name:</b> <%=name%> <br>
                              <b>Surame:</b> <%=lname%> <br>
                              <b>Email:</b> <%=email%> <br>
                              <b>Username:</b> <%=uname%> <br>

                        <% }
                           
                           } else { %>
                            <div class="page-header">
                                <h1>Registration form has errors</h1>
                            </div>
                            <div class="alert alert-danger" role="alert">
                                1. Surname must be at least 3 characters long<br>
                                2. Username must be at least 5 characters long<br>
                                3. Password must be at least 6 characters long<br>
                                4. Password must and confirm do not match<br>
                                5. You must agree to terms and conditions
                            </div>
                            <a href="register_ex3_8200057.jsp" type="button" class="btn btn-primary">Back to the
                                form</button>
                                <% } %>
                </div>
            </body>
            <%@ include file="footer_ex3_8200057.jsp" %>

            </html>