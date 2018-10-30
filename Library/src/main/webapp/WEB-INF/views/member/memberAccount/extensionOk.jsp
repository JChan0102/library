<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/resources/common/memberHeader.jsp"></jsp:include>
<jsp:include page="/resources/common/memberNavOpen.jsp"></jsp:include>
<hr class="my-4">
<h1 class="page_title color5">나의 책</h1>
<hr class="my-4">

성공
<a href="${pageContext.request.contextPath}/member/memberAccount/myBook">돌아가기</a>

<jsp:include page="/resources/common/memberNavClose.jsp"></jsp:include>
<jsp:include page="/resources/common/memberFooter.jsp"></jsp:include>