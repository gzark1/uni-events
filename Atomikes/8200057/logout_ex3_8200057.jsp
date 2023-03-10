<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="error_ex3_8200057.jsp"%>

<%
session.invalidate();
%>

<!DOCTYPE html>
<html lang="en">
	<%@ include file="header_ex3_8200057.jsp" %>
<body>	

	<div class="container theme-showcase" role="main">

		<div class="alert alert-success text-center" role="alert">Η έξοδος πραγματοποιηθηκε με επιτυχία</div>		

	</div>
	<!-- /container -->

	<!-- footer -->
	<%@ include file="footer_ex3_8200057.jsp" %>
	<!-- End footer -->

	<!-- Bootstrap core JavaScript
	================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="<%=request.getContextPath() %>/js/jquery.min.js"></script>
	<script	src="<%=request.getContextPath() %>/js/bootstrap.min.js"></script>
	
</body>
</html>
