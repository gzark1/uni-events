<%
String uri = request.getRequestURI();

String pageName = uri.substring(uri.lastIndexOf("/")+1);
%>

<nav style="background-color: rgb(243, 243, 243)" class="navbar navbar-expand-lg sticky-top navbar-light p-3 shadow-sm ">
     <div class="container">
       <a class="navbar-brand" href="index.jsp"><img class="center" src="images/uni.png" alt="" width="60" height="50">
         UniEvents &nbsp </a>
       <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown"
         aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
         <span class="navbar-toggler-icon"></span>
       </button>
<%
if(request.getAttribute("thisIsIndex") == null){
    
%>
       <div class="mx-auto my-3 d-lg-none d-sm-block d-xs-block">
         <div class="input-group">
           <span class="border-primary input-group-text bg-primary text-white"><i class="fas fa-search"></i></span>
           <input type="text" class="form-control border-primary" style="color:#7a7a7a">
           <a href="searchresults.jsp" class="btn btn-primary text-white" role="button" data-bs-toggle="button">Search</a>
         </div>
       </div>
       <div class=" collapse navbar-collapse" id="navbarNavDropdown">
         <div class="ms-auto d-none d-lg-block">
           <div class="input-group">
             <form action="searchresults.jsp" method="post">
             <input type="text" class="form-control border-primary" placeholder="Search..." style="color:#7a7a7a" name="search" id="search">
            </form>   <!--exei svistei to data-bs-toggle-->
           </div>
         </div>
         <ul class="navbar-nav ms-auto ">
           <li class="nav-item">
             <a class="nav-link mx-2 text-uppercase active" aria-current="page" href="index.jsp">Home</a>
           </li>
           <li class="nav-item">
             <a class="nav-link mx-2 text-uppercase" href="#About">About</a>
           </li>
           <li class="nav-item">
             <a class="nav-link mx-2 text-uppercase" href="#Contact_us">Contact us</a>
           </li>
 
         </ul>
         <ul class="navbar-nav ms-auto ">
           <%
           if(session.getAttribute("currentUser") != null) {
           %>
             <li class="nav-item">
               <a class="nav-link mx-2 text-uppercase"><%=username%></a>
             </li>
             <li class="nav-item">
               <a class="nav-link mx-2 text-uppercase" href="logout.jsp"><i class="fa-solid fa-circle-user me-1"></i>
                 Logout</a>
             </li>
           <%
           } else { %>
             <li class="nav-item">
               <a class="nav-link mx-2 text-uppercase" href="login.jsp">Login</a>
             </li>
             <li class="nav-item">
               <a class="nav-link mx-2 text-uppercase" href="register.jsp"><i class="fa-solid fa-circle-user me-1"></i>
                 Register</a>
             </li>
           <%
           }
           %>
         </ul>
       </div>
     </div>
</nav>
<%} else { %>

      <div class=" collapse navbar-collapse" id="navbarNavDropdown">
        <ul class="navbar-nav">
            
          <li class="nav-item">
            <a class="nav-link mx-2 text-uppercase" aria-current="page" href="index.jsp">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link mx-2 text-uppercase" href="#About">About</a>
          </li>
          <li class="nav-item">
            <a class="nav-link mx-2 text-uppercase" href="#Contact_us">Contact us</a>
          </li>
        </ul>
        <ul class="navbar-nav ms-auto ">
           <%
           if(session.getAttribute("currentUser") != null) {
           %>
             <li class="nav-item">
               <a class="nav-link mx-2 text-uppercase"><%=username%></a>
             </li>
             <li class="nav-item">
               <a class="nav-link mx-2 text-uppercase" href="logout.jsp"><i class="fa-solid fa-circle-user me-1"></i>
                 Logout</a>
             </li>
           <%
           } else { %>
             <li class="nav-item">
               <a class="nav-link mx-2 text-uppercase" href="login.jsp">Login</a>
             </li>
             <li class="nav-item">
               <a class="nav-link mx-2 text-uppercase" href="register.jsp"><i class="fa-solid fa-circle-user me-1"></i>
                 Register</a>
             </li>
           <%
           }
           %>
        </ul>
      </div>
    </nav>
<%}%>
