<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="error_ex3_8200127.jsp"%>

<%
session.invalidate();
%>

<!DOCTYPE html>
<html lang="en">
	<head>
		<!-- Header -->       
		<%@ include file="header_ex3_8200127.jsp" %>
		<!-- End header -->	
	</head>

	<body>	
		<div class="container theme-showcase" role="main">
			<div class="alert alert-success text-center" role="alert">Η έξοδος πραγματοποιηθηκε με επιτυχία</div>		
		</div>
		<!-- /container -->

		<!-- footer -->
		<%@ include file="footer_ex3_8200127.jsp"  %>
		<!-- End footer -->	
	</body>
</html>
