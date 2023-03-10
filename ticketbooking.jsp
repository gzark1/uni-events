<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="teampackage.*"%>
<!DOCTYPE html>
<html lang="en">

<head>
     <title>UniEvents Ticket Checkout</title>
     <meta charset="utf-8">
     <meta name="viewport" content="width=device-width, initial-scale=1">

      <!--bootstrap 5-->
     <link rel="stylesheet" href="css/bootstrap.min.css">
     <link rel="stylesheet" href="css/navbarstyle.css">
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">  
     
     <!--link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" -->  <!--bootstrap 4-->
     <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
     <link rel="stylesheet" href="css/ticketstyle.css">
     <link rel="stylesheet" href="css/style.css">
</head>

<body>

     <%
	     String username = null;
     %>
     <!-- Check if there is a logged in user -->
     <%
     if(session.getAttribute("currentUser") != null) {
        User loggeduser = (User) session.getAttribute("currentUser");
        username = loggeduser.getUsername();
     } else { 
          request.setAttribute("message", "You have to be logged in to access this page."); %>
          <jsp:forward page = "login.jsp"/>
     <%
     }
     %>
     <!-- Check if there is a logged in user -->

     <!-- Navbar -->
     <%@ include file="navbar.jsp" %>
     <!-- Navbar -->


     <!-- Option 1: Bootstrap Bundle with Popper -->
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
          crossorigin="anonymous">
     </script>
     <% String event_id = request.getParameter("event_id");          
        EventDAO edao1 = new EventDAO(); 
     %>
     <%
        if (edao1.findEventById(event_id) != null) {
          Event ev1 = edao1.findEventById(event_id); 
     %>

     <!-- Ticket Form -->
     <main class="page payment-page">
          <section class="payment-form dark">
               <div class="container">
                    <div class="block-heading">
                         <h2>Ticket Checkout</h2>
                         <p>Please fill in your booking's details </p>
                    </div>
                    <form action="ticketControl.jsp?event_id=<%=ev1.getEvent_id()%>" method="POST" class="needs-validation" novalidate="" autocomplete="off">
                         <div class="details">
                              <h3 class="title">Personal Details</h3>
                              <div class="item">

                                   <p class="item-name">First Name</p>
                                   <input type="text" name="first Name" id="first Name" class="form-control"
                                        placeholder="Enter your name">
                                   <p class="item-description"></p>
                              </div>
                              <div class="item">

                                   <p class="item-name">Last Name</p>
                                   <input type="text" name="last Name" id="last Name" class="form-control"
                                        placeholder="Enter your surname">
                                   <p class="item-description"></p>
                              </div>
                              <div class="item">

                                   <p class="item-name">Phone Number</p>
                                   <input type="integer" name="phone Number" id="phone Number" class="form-control"
                                        placeholder="Enter your phone number">
                                   <p class="item-description"></p>
                              </div>
                              <div class="item">

                                   <p class="item-name">Email</p>
                                   <input type="email" name="email" id="email" class="form-control"
                                        placeholder="example@email.com">
                                   <p class="item-description"></p>
                              </div>
                              <div class="item">

                                   <p class="item-name">Billing Address</p>
                                   <input type="text" name="billing address" id="billing address" class="form-control"
                                        placeholder="Enter your address">
                                   <p class="item-description"></p>
                              </div>
                              <div class="item">

                                   <p class="item-name">Post Code</p>
                                   <input type="integer" name="post code" id="post code" class="form-control"
                                        placeholder="e.g 15561">
                                   <p class="item-description"></p>
                              </div>
                              <div class="total">Total Price<span class="price">€<%=ev1.getE_price()%>0</span></div>
                              <div class="total"></div>
                              <% if (ev1.getE_price() != 0) { %>
                             
                              

                         <div class="card-details">
                              <h3 class="title">Credit Card Details</h3>
                              <div class="row">
                                   <div class="form-group col-sm-7">
                                        <label for="card-holder">Card Holder</label>
                                        <input id="card-holder" type="text" class="form-control" name="holder"
                                             placeholder="Card Holder" aria-label="Card Holder"
                                             aria-describedby="basic-addon1">
                                   </div>
                                   <div class="form-group col-sm-5">
                                        <label for="">Expiration Date</label>
                                        <div class="input-group expiration-date">
                                             <input type="text" class="form-control" placeholder="MM" aria-label="MM" name="month"
                                                  aria-describedby="basic-addon1" maxlength="2" minlength="2">
                                             <span class="date-separator">&nbsp;&nbsp;/</span>
                                             <input type="text" class="form-control" placeholder="YY" aria-label="YY" name="hear"
                                                  aria-describedby="basic-addon1" maxlength="2" minlength="2">
                                        </div>
                                   </div>
                                   <div class="form-group col-sm-8">
                                        <label for="card-number">Card Number</label>
                                        <input id="card-number" type="text" class="form-control" name="cardnum"
                                             placeholder="Card Number" aria-label="Card Holder"
                                             aria-describedby="basic-addon1" maxlength="16" minlength="16">
                                   </div>
                                   <div class="form-group col-sm-4">
                                        <label for="cvc">CVC</label>
                                        <input id="cvc" type="text" maxlength="3" minlength="3" class="form-control" placeholder="CVC" name="cvc"
                                             aria-label="Card Holder" aria-describedby="basic-addon1">
                                   </div>
                                   <% } %>
                                   <div class="form-group col-sm-12">
                                        <button type="submit" class="btn btn-primary w-100">Confirm</button>
                                   </div>
                              </div>
                         </div>
                         
                    </form>
               </div>
          </section>
          <% } %>
     </main>
     <!-- Ticket Form -->

     <!-- Footer -->
    <%@ include file="footer.jsp" %>
    <!-- Footer -->
</body>

<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

</html>