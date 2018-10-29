<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<jsp:include page="/resources/common/adminHeader.jsp"></jsp:include>
<jsp:include page="/resources/common/adminNavOpen.jsp"></jsp:include>

<c:set var="permission" value="${adminLoginInfo.permission}" />

<c:if test="${'T' eq fn:substring(permission, 0, 1)}">
	<a class="nav-link
					href="${pageContext.request.contextPath}/admin/adminAccount"><input
		type="button" class="adminHomeBigBtn color2_btn custom_btn"
		value="관리자 계정 관리"> </a>
</c:if>
<c:if test="${'T' eq fn:substring(permission, 1, 2)}">
	<a class="nav-link
					href="${pageContext.request.contextPath}/admin/notice">
		<input type="button" class="adminHomeBigBtn color2_btn custom_btn"
		value="공지사항 작성">
	</a>
</c:if>
<c:if test="${'T' eq fn:substring(permission, 2, 3)}">
	<a class="nav-link
					href="${pageContext.request.contextPath}/admin/book"><input
		type="button" class="adminHomeBigBtn color3_btn custom_btn"
		value="도서 등록/삭제"> </a>
</c:if>
<c:if test="${'T' eq fn:substring(permission, 3, 4)}">
	<a class="nav-link
					href="${pageContext.request.contextPath}/admin/borrow"><input
		type="button" class="adminHomeBigBtn color3_btn custom_btn"
		value="도서 대출/반납"></a>
</c:if>
<c:if test="${'T' eq fn:substring(permission, 4, 5)}">
	<a class="nav-link
					href="${pageContext.request.contextPath}/admin/memberAccount"><input
		type="button" class="adminHomeBigBtn color4_btn custom_btn"
		value="회원 관리"></a>
</c:if>

<jsp:include page="/resources/common/adminNavClose.jsp"></jsp:include>
<jsp:include page="/resources/common/adminFooter.jsp"></jsp:include>