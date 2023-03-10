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
    <link rel="stylesheet" type="text/css" href="https://pixinvent.com/stack-responsive-bootstrap-4-admin-template/app-assets/fonts/simple-line-icons/style.min.css">
    <link rel="stylesheet" type="text/css" href="https://pixinvent.com/stack-responsive-bootstrap-4-admin-template/app-assets/css/bootstrap-extended.min.css">
    <link rel="stylesheet" type="text/css" href="https://pixinvent.com/stack-responsive-bootstrap-4-admin-template/app-assets/css/colors.min.css">
</head>

<body>

    <%
		String username = null;
        String event_id = request.getParameter("event_id");          
        EventDAO edao1 = new EventDAO();

    %>
    <!-- Check if there is a logged in user -->
    <%
    if(session.getAttribute("currentUser") != null) {
        User loggeduser = (User) session.getAttribute("currentUser");
        username = loggeduser.getUsername();
    }
    %>
    <!-- Navbar -->
    <%@ include file="navbar.jsp" %>
    <!-- Ticket Info -->
    <div class="container wContainer"> 
        <%
         if (edao1.findEventById(event_id) != null) {
            Event ev1 = edao1.findEventById(event_id);
            LikesDAO likesdao = new LikesDAO();
            Boolean isliked = likesdao.userLikesEvent(username, event_id);

             %>
       
        <br>
        <div style="display:flex; justify-content: center;">
            <img src="<%=ev1.getImage() + event_id + "_big_image.jpg" %>" class="img-fluid width-100" alt="">
        </div>
        <hr>

        <!-- Description -->
        <div class="card">
            <div class="card-header bg-secondary text-white" style="display:flex; justify-content:center; font-weight:700; font-size:17px;">
                <%=ev1.getE_name()%>
            </div>
            <div class="card-body">
                <p class="card-text" style="text-transform: none; color:#2a2a2a"> <%=ev1.getDescription()%> </p>
            </div>
        </div>
        <!-- Description -->
        
        <hr>
        <div class="row">
            <br>
            <article class="card fl-left">
                <section class="date">
                    <time datetime="23th feb">
                        <span><%=ev1.getE_price()%>0€</span>
                    </time>
                </section>
                <section class="card-cont">
                    
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
                    <a href="ticketbooking.jsp?event_id=<%=ev1.getEvent_id() %>">tickets</a>
                </section>
            </article>
            <script>
                const eventInterested = '<%=ev1.getInterested()%>';  
                const isLiked = '<%=isliked%>';
                const username = '<%=username%>';
                localStorage.setItem("numInterested", eventInterested);
                localStorage.setItem("isLiked", isLiked);
                localStorage.setItem("username", username);
                localStorage.setItem("event_id", '<%=event_id%>');
                
            </script>
            
            <div id="interested" style="width: 49%"></div>
            

            
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
    <br>
    <br>
    <br>
    <!-- Footer -->
    <%@ include file="footer.jsp" %>
    
    <!-- Load React, ReactDom and Babel -->
    
    <script src="https://unpkg.com/react@18/umd/react.development.js" crossorigin></script>
    <script src="https://unpkg.com/react-dom@18/umd/react-dom.development.js" crossorigin></script>
    <script src="https://unpkg.com/babel-standalone@6/babel.min.js"></script>
    




    <script src="js/Interested.js" type="text/babel" ></script>
    

    <!-- Load our React component. -->
    <!-- <script src="js/Map.js"></script> -->
</body>

</html>