<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="error_ex2_8200043.jsp"%>

<%
session.invalidate();
%>

<!DOCTYPE html>
<html lang="en">
	<head>
	<%@ include file="header_ex2_8200043.jsp"%>
	<!-- automatically will redirect to index_ex2_8200043.jsp after 2 seconds -->
	<meta http-equiv="refresh" content="2;url=index_ex2_8200043.jsp" />
		
	<meta name="description" content="2η Ατομική Άσκηση - log out page">
	<title>2η Ατομική Άσκηση - logout</title>
	
	</head>
<body>	

	<div class="container theme-showcase" role="main">

		<div class="alert alert-success text-center" role="alert">Η έξοδος πραγματοποιηθηκε με επιτυχία</div>		

	</div>
	<!-- /container -->

	<%@ include file="footer_ex2_8200043.jsp" %>
</body>
</html>
