<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/resources/common/adminHeader.jsp"></jsp:include>
<jsp:include page="/resources/common/adminNavOpen.jsp"></jsp:include>
<!-- 이곳이 body -->
<h1 >Library Service</h1>
<style>
	.btn_borrow{
		font-family: 'Nanum Myeongjo', serif;
		color: #F5FFD2;
		width: 200px;
		height: 100px;
	}


</style>
<div class="container text-center">
<a href="borrow/membersearch"><button class="color4_btn custom_btn btn_borrow"><i class="fab fa-stack-overflow fa-flip-horizontal"></i> 책 대출</button></a>
<a href="return/home"><button  class="color4_btn custom_btn btn_borrow"><i class="fab fa-stack-overflow"></i> 책 반납</button></a>
</div>
<jsp:include page="/resources/common/adminNavClose.jsp"></jsp:include>
<jsp:include page="/resources/common/adminFooter.jsp"></jsp:include>
