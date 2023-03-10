<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="exercise3_2022_2023_8200057.User" %>
<%@ page import="exercise3_2022_2023_8200057.UserDAO" %>
<%@ page errorPage="error_ex3_8200057.jsp" %>
    <%  String username=request.getParameter("username"); 
        String password=request.getParameter("password"); 
        UserDAO udao = new UserDAO();
    try { 
    User user = udao.authenticate(username, password);
    session.setAttribute ("userObj2022", user);
        
    %>
    <jsp:forward page="dashboard_ex3_8200057.jsp" />
    <% } catch(Exception e) {
    request.setAttribute("message", e.getMessage());
   %>
   <jsp:forward page="login_ex3_8200057.jsp" />
   <% } %>