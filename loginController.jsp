<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="teampackage.*"%>
<%@ page import="java.io.IOException"%>

<% 
String email = request.getParameter("email");
String password = request.getParameter("password");
UserDAO userdao = new UserDAO();

try {
     User user = userdao.authenticate(email, password);
     session.setAttribute("currentUser", user);
     String redirectURL = "index.jsp";
     response.sendRedirect(redirectURL);

} catch(Exception e) {
     request.setAttribute("loginErrorMessage", e.getMessage()); 
     
%>

     <jsp:forward page = "login.jsp"/>

<%
}
%>
