<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
	<a class="navbar-brand" href="${pageContext.request.contextPath}">Library</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarsExampleDefault"
		aria-controls="navbarsExampleDefault" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<c:set var="permission" value="${adminLoginInfo.permission}" />
	<c:set var="permissionSize" value="${fn:length(permission)}" />

	<div class="collapse navbar-collapse" id="navbarsExampleDefault">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link"
				href="${pageContext.request.contextPath}/admin/home">Home <span
					class="sr-only">(current)</span>
			</a></li>
			<c:if test="${'T' eq fn:substring(permission, 0, 1)}">
				<li class="nav-item"><a class="nav-link"
					href="${pageContext.request.contextPath}/admin/adminAccount">1관리자
						계정 제어 관련 기능</a></li>
			</c:if>
			<c:if test="${'T' eq fn:substring(permission, 1, 2)}">
				<li class="nav-item"><a class="nav-link"
					href="${pageContext.request.contextPath}/admin/notice">2공지사항
						게시판 접근 기능</a></li>
			</c:if>
			<c:if test="${'T' eq fn:substring(permission, 2, 3)}">
				<li class="nav-item"><a class="nav-link"
					href="${pageContext.request.contextPath}/admin/book">3도서 등록/삭제
						기능</a></li>
			</c:if>
			<c:if test="${'T' eq fn:substring(permission, 3, 4)}">
				<li class="nav-item"><a class="nav-link"
					href="${pageContext.request.contextPath}/admin/borrow">4도서 대출
						관련 기능</a></li>
			</c:if>
			<c:if test="${'T' eq fn:substring(permission, 4, 5)}">
				<li class="nav-item"><a class="nav-link"
					href="${pageContext.request.contextPath}/admin/memberAccount">5회원
						관련 기능</a></li>
			</c:if>
		</ul>
		<a href="${pageContext.request.contextPath}/admin/logout">
			<button type="button" class="btn btn-dark">로그아웃</button>
		</a>
	</div>
</nav>
<main role="main" class="container">