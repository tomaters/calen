<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>calen</title>
<!-- Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<!-- JQuery -->
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- CSS -->
<link rel="stylesheet" type="text/css" href="/style.css">
<!-- JavaScript -->
<script src="/script.js"></script>
</head>
<body>
	<div class="wrapper">
		<!-- HEADER -->
		<div class="header-content">
			<%@ include file="/WEB-INF/views/common/header.jsp" %>
		</div>
		
		<!-- MENU -->
		<%@ include file="/WEB-INF/views/common/menu.jsp" %>
		
		<!-- PAGE CONTENT -->
		<div class="container">
			
		</div>
			
		<!-- FOOTER -->
		<footer>
			<%@ include file="/WEB-INF/views/common/footer.jsp" %>
		</footer>	
	</div>
</body>
</html>