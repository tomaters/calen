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
<title>signup</title>
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
		<div class="container mt-5">
            <div class="row d-flex justify-content-center">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header">
                            <h3 class="text-center">Sign Up</h3>
                        </div>
                        <div class="card-body">
                            <form action="<c:url value='/account/signup' />" method="post">
                                <div class="mb-3">
                                    <label for="username" class="form-label">Username</label>
                                    <input type="text" id="username" name="username" class="form-control" required>
                                </div>
                                <div class="mb-3">
                                    <label for="password" class="form-label">Password</label>
                                    <input type="password" id="password" name="password" class="form-control" required>
                                </div>
                                <div class="mb-3">
                                    <label for="repassword" class="form-label">Re-enter Password</label>
                                    <input type="password" id="repassword" name="repassword" class="form-control" required>
                                </div>
                                <div class="mb-3">
                                    <label for="firstname" class="form-label">First Name</label>
                                    <input type="text" id="first_name" name="first_name" class="form-control" required>
                                </div>
                                <div class="mb-3">
                                    <label for="lastname" class="form-label">Last Name</label>
                                    <input type="text" id="last_name" name="last_name" class="form-control">
                                </div>
                                <div class="mb-3">
                                    <label for="email" class="form-label">Email</label>
                                    <input type="email" id="email" name="email" class="form-control" required>
                                </div>
                                <div class="mb-3">
                                    <label for="accountType" class="form-label">Account Type</label>
                                    <select id="account_type" name="account_type" class="form-select" required>
                                        <option value="individual">Individual</option>
                                        <option value="business">Business</option>
                                    </select>
                                </div>
                                <div class="d-grid">
                                    <button type="submit" class="btn btn-light btn-outline-secondary text-dark mx-auto">Sign Up</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
		</div>
			
		<!-- FOOTER -->
		<footer>
			<%@ include file="/WEB-INF/views/common/footer.jsp" %>
		</footer>	
	</div>
</body>
</html>