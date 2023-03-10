<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="error_ex2_8200043.jsp"%>
<%@ page import="exercise2_2022_2023_8200043.*" %>

<%
String username = request.getParameter("username");
String password = request.getParameter("password");

UserDAO usrd = new UserDAO();

try{

    User user = usrd.authenticate(username,password);
    session.setAttribute("userObj2022", user);
    response.sendRedirect("dashboard_ex2_8200043.jsp");

} catch (Exception e){

    request.setAttribute("message", e.getMessage());

%>
    <jsp:forward page="login_ex2_8200043.jsp"/> 

<%
}
%>


