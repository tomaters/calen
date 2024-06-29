<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<div style="width:100%; margin:auto;">
	<header>
		<div class="row d-flex m-4">
			<div class="d-flex justify-content-between align-items-center">
				<div class=""><a href="/" class="text-white">calen</a></div>
				<div class="">
					<sec:authorize access="hasRole('ROLE_MEMBER')">
						<div class="">
							<a href="" class="text-white">Hello, <sec:authentication property="principal.account.name"/>!</a>
							<div class=""><a href="/account/logout" class="text-white">logout</a></div>
						</div>
					</sec:authorize>
					<sec:authorize access="!isAuthenticated()">					
						<div class=""><a href="/account/login" class="text-white">login</a></div>
						<div class=""><a href="/account/signup" class="text-white">sign up</a></div>
					</sec:authorize>
				</div>
			</div>
		</div>
	</header>
</div>
