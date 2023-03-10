<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="teampackage.*"%>
<!doctype html>
<html lang="en">

<head>
    <title>UniEvents Event Page</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!--link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet"-->
    <link rel="stylesheet" href="css/navbarstyle.css">
    <link rel="stylesheet" href="css/event.css">        
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">
</head>

<body>

    <%
		String username = null;
        String ev = request.getParameter("ename");          
        EventDAO edao1 = new EventDAO();

    %>
    <!-- Check if there is a logged in user -->
    <%
    if(session.getAttribute("currentUser") != null) {
        User loggeduser = (User) session.getAttribute("currentUser");
        username = loggeduser.getUsername();
    }
    %>
    <!-- Check if there is a logged in user -->

    <!-- Navbar -->
    <%@ include file="navbar.jsp" %>
    <!-- Navbar -->

    <!-- Ticket Info -->
    <div class="container">
        <%
         if (edao1.findEventByName(ev) != null) {
            Event ev1 = edao1.findEventByName(ev); %>
       

        <img src="<%=ev1.getImage()%>" class="img-fluid width-100" alt="">
        <h1><%=ev1.getE_name() %></h1>
        <div class="row">
            <article class="card fl-left">
                <section class="date">
                    <time datetime="23th feb">
                        <span>Uni</span><span>Events</span>
                    </time>
                </section>
                <section class="card-cont">
                    <small><%=ev1.getE_name() %></small>
                    <h3><%=ev1.getE_name() %></h3>
                    <div class="even-date">
                        <i class="fa fa-calendar"></i>
                        <time>
                            <span><%=ev1.getE_date() %></span>
                            <span><%=ev1.getE_time() %></span>
                        </time>
                    </div>
                    <div class="even-info">
                        <i class="fa fa-map-marker"></i>
                        <p>
                            <%=ev1.getE_location() %>
                        </p>
                    </div>
                    <a href="ticketbooking.jsp">tickets</a>
                </section>
            </article>
        </div>

    </div>
    <%
}
%>
    <!-- Ticket Info -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    -->
</body>

</html>