<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="teampackage.*"%>
<!doctype html>
<html lang="en">

<head>
  <title>UniEvents Home Page</title>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/navbarstyle.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">
    <link rel="stylesheet" href="css/events.css">
    <link rel="stylesheet" href="css/style.css">
  <style>
    .event-block:hover {
    box-shadow: 0px 0px 16px 0px rgba(187, 187, 187, 0.8);
    transform: scale(1.03);
    }
  </style>
</head>

<body>

    <%
		String username = null;
        if(session.getAttribute("currentUser") != null) {
        User loggeduser = (User) session.getAttribute("currentUser");
        username = loggeduser.getUsername();
    }
    %>
    <!-- Check if there is a logged in user -->

    <!-- Navbar -->
    <%@ include file="navbar.jsp" %>
    <% 
    String sr = new String(request.getParameter("search").getBytes("ISO-8859-1"), "UTF-8");
     
    %>

    <%
    EventDAO edao = new EventDAO();
    List<Event> events = edao.searchbar(sr);

    %>


   <section class="p-5"> 
        
        <h1 align="center"><b>Αποτελέσματα για: <%=sr%></b></h1><br>
        <div class="container">
                <hr>
   <% int counter = 0;
   for(Event event: events) {
    counter = counter + 1; %>
    
    
    <!--end check for event info-->
    <a href="eventPage.jsp?event_id=<%=event.getEvent_id()%>" style="text-decoration: none;">
        <div class="row align-items-center no-gutters margin-40px-bottom event-block">
            <div class="col-lg-3 col-sm-12">
                <div class="position-relative">
                    <% 
                    String path = event.getImage();
                    %>

                    <img class="eventimg" src="<%=path + event.getEvent_id().toString() +"_logo.jpg" %>" alt="">
                    <!--<div class="events-date">
                        <div class="font-size28">10</div>
                        <div class="font-size14">Mar</div>
                    </div> -->
                </div>
            </div>
            <div class="col-lg-7 col-sm-12">
                <div class="padding-60px-lr md-padding-50px-lr sm-padding-30px-all xs-padding-25px-all" >
                    <h2 class="margin-15px-bottom md-margin-10px-bottom font-size22 md-font-size20 xs-font-size18 font-weight-500" style="font-weight : 700; font-size:1.4em; position:relative; left:5%"><%=event.getE_name() %></h2>
                    <ul class="event-time margin-10px-bottom md-margin-5px-bottom">
                        <li><i class="far fa-clock margin-10px-right"></i> <%=event.getE_time() %></li>
                        <li><i class="fas fa-map-marker-alt margin-5px-right"></i> <%=event.getE_location() %></li>
                        <li><i class="fa fa-calendar margin-5px-right"></i> <%=event.getE_date() %></li>
                    </ul>
                </div>
            </div>
        </div>
    </a>

    <%
    if (counter == 10) {
        break;
    }  
}
%>
        </div>
    </section>
<%@ include file="footer.jsp" %>

</body>