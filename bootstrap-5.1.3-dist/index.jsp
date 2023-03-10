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
  }


  request.setAttribute("thisIsIndex", "1");

  %>
  <!-- Check if there is a logged in user -->

  <!-- Navbar -->
  <%@ include file="navbar.jsp" %>
  <!-- Navbar -->

  <section class="bg-dark text-light p-5 p-lg-0 pt-lg-5 text-center text-sm-start">
    <div class="container">
      <div class="d-sm-flex align-items-center justify-content-between">
        <div>
          <h1><b>Βρες το <span class="text-warning"> Event </span> που <br> θα σε <span class="text-warning">εμπνεύσει </b></span></h1>
          <p class="lead my-4">
              Κάνε τώρα κράτηση στο Φοιτητικό Event του αγαπημένου σου είδους
          </p>
          <!--EDW SEARCHBOX-->
          <div class="row height d-flex align-items-center">
            <div class="col-md-8">
                <div class="form">
                  <i class="fa fa-search"></i>
                  <input type="text" class="form-control form-input" placeholder="Αναζήτηση Event ή περιοχής">
                  <span class="left-pan"><i class="fa fa-microphone"></i></span>
                </div>               
              </div>   
          </div>
                    
        </div>
          <img class="img-fluid w-25 d-none d-sm-block"
              src="https://fsdet.dmst.aueb.gr/wp-content/uploads/2021/12/LOGO-%CE%A6%CE%A3%CE%94%CE%95%CE%A4.png"
              alt="" />
      </div>
    </div>
  </section>

    <section class="p-5"> 
        
              <h1 align="center"><b>Δημοφιλή</b></h1><br>
              <div class="container">
                <hr>
               
                <!-- start event block -->
                <!-- start check for event info-->
                <% 
                EventDAO edao = new EventDAO();
                List<Event> events = edao.getEvent();
                for(Event event: events) { %>
                
                <!--end check for event info-->
                <div class="row align-items-center event-block no-gutters margin-40px-bottom">
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
                        <div class="padding-60px-lr md-padding-50px-lr sm-padding-30px-all xs-padding-25px-all">
                            <h2
                                class="margin-15px-bottom md-margin-10px-bottom font-size22 md-font-size20 xs-font-size18 font-weight-500">
                                <a class="text-theme-color"><%=event.getE_name() %></a></h2>
                            <ul class="event-time margin-10px-bottom md-margin-5px-bottom">
                                <li><i class="far fa-clock margin-10px-right"></i> <%=event.getE_time() %></li>
                                <li><i class="fas fa-map-marker-alt margin-5px-right"></i> <%=event.getE_location() %></li>
                                <li><i class="fa fa-calendar margin-5px-right"></i> <%=event.getE_date() %></li>
                            </ul>
                            <p><% event.getDescription(); %></p>
                            <a class="butn small margin-10px-top md-no-margin-top" href="eventPage.jsp?ename=<%=event.getE_name()%>">Read More
                                <i class="fas fa-long-arrow-alt-right margin-10px-left"></i></a>
                        </div>
                    </div>
                </div>
            <%  }
            %>
                <!-- end event block -->
              
            <!-- start event block 
              <div class="row align-items-center event-block no-gutters margin-40px-bottom">
                  <div class="col-lg-3 col-sm-12">
                      <div class="position-relative">
                          <img class="eventimg" src="images/fsdet.png" alt="">
                          <div class="events-date">
                              <div class="font-size28">10</div>
                              <div class="font-size14">Mar</div>
                          </div>
                      </div>
                  </div>
                  <div class="col-lg-7 col-sm-12">
                      <div class="padding-60px-lr md-padding-50px-lr sm-padding-30px-all xs-padding-25px-all">
                          <h5
                              class="margin-15px-bottom md-margin-10px-bottom font-size22 md-font-size20 xs-font-size18 font-weight-500">
                              <a href="event-details.html" class="text-theme-color">Business Conference</a></h5>
                          <ul class="event-time margin-10px-bottom md-margin-5px-bottom">
                              <li><i class="far fa-clock margin-10px-right"></i> 01:30 PM - 04:30 PM</li>
                              <li><i class="fas fa-user margin-5px-right"></i> Speaker : John Sminth</li>
                          </ul>
                          <p>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat,
                              vel illum dolore</p>
                          <a class="butn small margin-10px-top md-no-margin-top" href="event-details.html">Read More
                              <i class="fas fa-long-arrow-alt-right margin-10px-left"></i></a>
                      </div>
                  </div>
              </div>
              <!-- end event block 
                <!-- start event block 
                <div class="row align-items-center event-block no-gutters margin-40px-bottom">
                    <div class="col-lg-3 col-sm-12">
                        <div class="position-relative">
                            <img class="eventimg" src="images/fsdet.png" alt="">
                            <div class="events-date">
                                <div class="font-size28">10</div>
                                <div class="font-size14">Mar</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-7 col-sm-12">
                        <div class="padding-60px-lr md-padding-50px-lr sm-padding-30px-all xs-padding-25px-all">
                            <h5
                                class="margin-15px-bottom md-margin-10px-bottom font-size22 md-font-size20 xs-font-size18 font-weight-500">
                                <a href="event-details.html" class="text-theme-color">Business Conference</a></h5>
                            <ul class="event-time margin-10px-bottom md-margin-5px-bottom">
                                <li><i class="far fa-clock margin-10px-right"></i> 01:30 PM - 04:30 PM</li>
                                <li><i class="fas fa-user margin-5px-right"></i> Speaker : John Sminth</li>
                            </ul>
                            <p>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat,
                                vel illum dolore</p>
                            <a class="butn small margin-10px-top md-no-margin-top" href="event-details.html">Read More
                                <i class="fas fa-long-arrow-alt-right margin-10px-left"></i></a>
                        </div>
                    </div>
                </div>
                <!-- end event block -->

                <!-- start event block 
                <div class="row align-items-center event-block no-gutters margin-40px-bottom">
                    <div class="col-lg-7 order-2 order-lg-1">
                        <div class="padding-60px-lr md-padding-50px-lr sm-padding-30px-all xs-padding-25px-all">
                            <h5
                                class="margin-15px-bottom md-margin-10px-bottom font-size22 md-font-size20 xs-font-size18 font-weight-500">
                                <a href="event-details.html" class="text-theme-color">Craft Workshops</a></h5>
                            <ul class="event-time margin-10px-bottom md-margin-5px-bottom">
                                <li><i class="far fa-clock margin-10px-right"></i> 09:00 AM - 09:30 PM</li>
                                <li><i class="fas fa-user margin-5px-right"></i> Speaker : Alexa Zone</li>
                            </ul>
                            <p>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat,
                                vel illum dolore</p>
                            <a class="butn small margin-10px-top md-no-margin-top" href="event-details.html">Read More
                                <i class="fas fa-long-arrow-alt-right margin-10px-left"></i></a>
                        </div>
                    </div>
                    <div class="col-lg-5 order-1 order-lg-2">
                        <div class="position-relative">
                            <img class="eventimgr" src="images/fsdet.png" alt="">
                            <div class="events-date">
                                <div class="font-size28">25</div>
                                <div class="font-size14">Feb</div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- end event block -->

                <!-- start event block --
                <div class="row align-items-center event-block no-gutters margin-40px-bottom">
                    <div class="col-lg-5 col-sm-12">
                        <div class="position-relative">
                            <img src="https://via.placeholder.com/450x280/B0C4DE/000000" alt="">
                            <div class="events-date">
                                <div class="font-size28">20</div>
                                <div class="font-size14">Feb</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-7 col-sm-12">
                        <div class="padding-60px-lr md-padding-50px-lr sm-padding-30px-all xs-padding-25px-all">
                            <h5
                                class="margin-15px-bottom md-margin-10px-bottom font-size22 md-font-size20 xs-font-size18 font-weight-500">
                                <a href="event-details.html" class="text-theme-color">Mentorship Program</a></h5>
                            <ul class="event-time margin-10px-bottom md-margin-5px-bottom">
                                <li><i class="far fa-clock margin-10px-right"></i> 09:20 AM - 12:00 AM</li>
                                <li><i class="fas fa-user margin-5px-right"></i> Speaker : Avil Mex</li>
                            </ul>
                            <p>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat,
                                vel illum dolore</p>
                            <a class="butn small margin-10px-top md-no-margin-top" href="event-details.html">Read More
                                <i class="fas fa-long-arrow-alt-right margin-10px-left"></i></a>
                        </div>
                    </div>
                </div>
                <!-- end event block -->

                <!-- start event block --
                <div class="row align-items-center event-block no-gutters margin-40px-bottom">
                    <div class="col-lg-7 order-2 order-lg-1">
                        <div class="padding-60px-lr md-padding-50px-lr sm-padding-30px-all xs-padding-25px-all">
                            <h5
                                class="margin-15px-bottom md-margin-10px-bottom font-size22 md-font-size20 xs-font-size18 font-weight-500">
                                <a href="event-details.html" class="text-theme-color">Technical Events</a></h5>
                            <ul class="event-time margin-10px-bottom md-margin-5px-bottom">
                                <li><i class="far fa-clock margin-10px-right"></i> 10:00 AM - 09:00 PM</li>
                                <li><i class="fas fa-user margin-5px-right"></i> Speaker : Venil Monts</li>
                            </ul>
                            <p>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat,
                                vel illum dolore</p>
                            <a class="butn small margin-10px-top md-no-margin-top" href="event-details.html">Read More
                                <i class="fas fa-long-arrow-alt-right margin-10px-left"></i></a>
                        </div>
                    </div>
                    <div class="col-lg-5 order-1 order-lg-2">
                        <div class="position-relative">
                            <img src="https://via.placeholder.com/450x280/7B68EE/000000" alt="">
                            <div class="events-date">
                                <div class="font-size28">25</div>
                                <div class="font-size14">Sep</div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- end event block -->

                <!-- start event block --
                <div class="row align-items-center event-block no-gutters">
                    <div class="col-lg-5 col-sm-12">
                        <div class="position-relative">
                            <img src="https://via.placeholder.com/450x280/FF0000/000000" alt="">
                            <div class="events-date">
                                <div class="font-size28">10</div>
                                <div class="font-size14">Oct</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-7 col-sm-12">
                        <div class="padding-60px-lr md-padding-50px-lr sm-padding-30px-all xs-padding-25px-all">
                            <h5
                                class="margin-15px-bottom md-margin-10px-bottom font-size22 md-font-size20 xs-font-size18 font-weight-500">
                                <a href="event-details.html" class="text-theme-color">Startup Events</a></h5>
                            <ul class="event-time margin-10px-bottom md-margin-5px-bottom">
                                <li><i class="far fa-clock margin-10px-right"></i> 11:00 AM - 09:00 PM</li>
                                <li><i class="fas fa-map-marker-alt margin-5px-right"></i> Speaker : Mavil Aven</li>
                            </ul>
                            <p>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat,
                                vel illum dolore</p>
                            <a class="butn small margin-10px-top md-no-margin-top" href="event-details.html">Read More
                                <i class="fas fa-long-arrow-alt-right margin-10px-left"></i></a>
                        </div>
                    </div>
                </div>
                <!-- end event block -->

            </div>
       
    </section>
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