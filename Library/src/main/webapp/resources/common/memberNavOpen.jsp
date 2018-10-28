<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
	<a class="navbar-brand" href="${pageContext.request.contextPath}">Library</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarsExampleDefault"
		aria-controls="navbarsExampleDefault" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="navbarsExampleDefault">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link"
				href="${pageContext.request.contextPath}/member/home">Home<span
					class="sr-only">(current)</span>
			</a></li>
			<li class="nav-item"><a class="nav-link"
				href="${pageContext.request.contextPath}/member/notice">공지사항</a></li>
			<li class="nav-item"><a class="nav-link"
				href="${pageContext.request.contextPath}/member/home/list">자유게시판</a></li>
		</ul>
		<form class="form-inline my-2 my-lg-0">
			<input class="form-control mr-sm-2" type="text" placeholder="Book"
				aria-label="Search">
			<button class="btn btn-outline-success my-2 my-sm-0" type="submit">검색</button>
		</form>
		<a href="${pageContext.request.contextPath}/member/login">
			<button type="button" class="btn btn-dark">로그인</button>
		</a> <a href="${pageContext.request.contextPath}/member/myPage">
			<button type="button" class="btn btn-dark">내 정보</button>
		</a> <a href="${pageContext.request.contextPath}/member/logout">
			<button type="button" class="btn btn-dark">로그아웃</button>
		</a>
	</div>
</nav>
<main role="main" class="container">