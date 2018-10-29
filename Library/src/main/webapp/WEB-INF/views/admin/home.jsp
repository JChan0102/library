<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<jsp:include page="/resources/common/adminHeader.jsp"></jsp:include>
<jsp:include page="/resources/common/adminNavOpen.jsp"></jsp:include>


<c:if test="${'T' eq fn:substring(permission, 0, 1)}">

	<a class="nav-link
					href="${pageContext.request.contextPath}/admin/adminAccount"><button
			class="homeBigBtn color3_btn custom_btn">
			<i class="fa fa-user-circle"></i></a>
	</li>
</c:if>
<c:if test="${'T' eq fn:substring(permission, 1, 2)}">
	<li class="nav-item"><a class="nav-link"
		href="${pageContext.request.contextPath}/admin/notice"><i
			class="fa fa-clipboard"></i> 공지사항 </a></li>
</c:if>
<c:if test="${'T' eq fn:substring(permission, 2, 3)}">
	<li class="nav-item"><a class="nav-link"
		href="${pageContext.request.contextPath}/admin/book"><i
			class="fa fa-book"></i> 도서 관리 </a></li>
</c:if>
<c:if test="${'T' eq fn:substring(permission, 3, 4)}">
	<li class="nav-item"><a class="nav-link"
		href="${pageContext.request.contextPath}/admin/borrow"><i
			class="fa fa-pencil-square-o"></i> 도서 대출/반납 </a></li>
</c:if>
<c:if test="${'T' eq fn:substring(permission, 4, 5)}">
	<li class="nav-item"><a class="nav-link"
		href="${pageContext.request.contextPath}/admin/memberAccount"><i
			class="fa fa-user"></i> 회원 관리 </a></li>
</c:if>


<a href="${pageContext.request.contextPath}/admin/home"><input
	type="button" class="homeBigBtn color3_btn custom_btn" value="관리자"></a>
<a href="${pageContext.request.contextPath}/member/home"><input
	type="submit" class="homeBigBtn color4_btn custom_btn" value="사용자"></a>



<jsp:include page="/resources/common/adminNavClose.jsp"></jsp:include>
<jsp:include page="/resources/common/adminFooter.jsp"></jsp:include>