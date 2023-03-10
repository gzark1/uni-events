<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="error_ex2_8200127.jsp"%>
<%@ page import="exercise2_2022_2023_8200127.User" %>
<%@ page import="exercise2_2022_2023_8200127.UserDAO" %>
<%@ page import="java.io.IOException"%>

<%
String username = request.getParameter("username");
String password = request.getParameter("password");

UserDAO dao1 = new UserDAO();

try {
     User usr = dao1.authenticate(username, password);
     session.setAttribute("userObj2022", usr);
     String redirectURL = "dashboard_ex2_8200127.jsp";
     response.sendRedirect(redirectURL);
} catch(Exception e) {
     request.setAttribute("message", e.getMessage()); %>
     <jsp:forward page="login_ex2_8200127.jsp"/>
<%
}
%>