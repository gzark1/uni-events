<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="teampackage.*"%>
<%@ page import="java.util.Random"%>
<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
	<meta name="viewport" content="width=device-width,initial-scale=1">

	<title>UniEvents Ticket Page</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet">


<body>

    <% String username = null;
    if(session.getAttribute("currentUser") != null) {
        User loggeduser = (User) session.getAttribute("currentUser");
        username = loggeduser.getUsername();
    }
    
    
        String event_id = request.getParameter("event_id");        
        EventDAO edao1 = new EventDAO(); 
     %>
     <%
        if (edao1.findEventById(event_id) != null) {
          Event ev1 = edao1.findEventById(event_id); 
        
     %>

    <%
    boolean flag = false;
    String fn = request.getParameter("first Name");
    String ln = request.getParameter("last Name");
    String pn = request.getParameter("phone Number");
    String em = request.getParameter("email");
    String ba = request.getParameter("billing address");
    String pc = request.getParameter("post code");
    String ch = request.getParameter("holder");
    String mon = request.getParameter("month");
    String ye = request.getParameter("year");
    String cn = request.getParameter("cardnum");
    String cvc = request.getParameter("cvc");

   %>
   <section class="h-100">
		<div class="container h-100">
			<div class="row justify-content-sm-center h-100">
				<div class="col-xxl-4 col-xl-5 col-lg-5 col-md-7 col-sm-9">
					<div class="text-center my-5">
						<a href="index.jsp">
							<img src="images/uni.png" alt="logo" width="100">
						</a>
						<h1 class="h3 mb-3 fw-normal"><strong>UniEvents</strong></h1>
					</div>
                    <% 
                        boolean flagone = false;
                        boolean flagtwo = false;
                        if (fn.length()>=5 && ln.length()>=5 && ba.length()>=5) { 
                           flagone = true; 
                        } 
                        if (ev1.getE_price() != 0 && ch.length() >= 5 && cn.length() == 16 && cvc.length() == 3) {
                            flagtwo = true;
                        }
                    %>

                    <% if (ev1.getE_price() != 0 && flagone == true && flagtwo == true || ev1.getE_price() == 0 && flagone == true ) {
                        Random rando = new Random();
                        int i = rando.nextInt(90000) + 10000;
                        Ticket tick = new Ticket(Integer.toString(i), username, event_id, fn, ln, pn, em, ba, pc, ev1.getE_price());
                        TicketDAO dao = new TicketDAO();
                        try {
                            dao.newticket(tick);
                        } catch( Exception e) { %>
                            <div class="card-body p-5 text-center">
                                <div class="page-header">
                                    <h5>Something went wrong...</h5>
                                </div>
                                <div class="alert alert-danger text-center" role="alert">
                                    <p> You have to go back to the form in order to enter your personal information correctly.</p>
                                    </div>
                                    <a href="ticketbooking.jsp?event_id=<%=ev1.getEvent_id()%>" class="btn btn-info" role="button"><span
                                        class="glyphicon glyphicon-chevron-left"></span>Back to the form</a>
                                </div>
                      <%}
                    %>
                        <div class="card shadow-lg">
                            <div class="card-body p-5 text-center">
                               <div class="page-header">
                                     <h5>Your place has been booked!</h5>
                                </div>
                                <div class="alert alert-success text-center" role="alert">
                                            Here is your ticket's details:
                                </div>
                                    <b>First Name:</b> <%=fn%> <br> 
                                    <b>Last Name:</b> <%=ln%> <br>
                                    <b>Email:</b> <%=em%> <br>
                                    <b>Event:</b> <%=ev1.getE_name() %> <br>
                                    <b>Cost:</b> <%=ev1.getE_price()%>0€ <br>
                            </div>
                        </div>
    
                     <% } else { %>
                        <div class="card-body p-5 text-center">
                        <div class="page-header">
                            <h5>Something went wrong...</h5>
                        </div>
                        <div class="alert alert-danger text-center" role="alert">
                            <p>Incorrect Input.</p>
                            <p> You have to go back to the form in order to enter your personal information correctly.</p>
                            </div>
                            <a href="ticketbooking.jsp?event_id=<%=ev1.getEvent_id()%>" class="btn btn-info" role="button"><span
                                class="glyphicon glyphicon-chevron-left"></span>Back to the form</a>
                        </div>
                     
                    <%}%>
                </div>
            </div>
        </div>
   </section>
   <%}%>