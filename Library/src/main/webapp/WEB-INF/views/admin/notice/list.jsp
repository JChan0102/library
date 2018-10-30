<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/resources/common/adminHeader.jsp"></jsp:include>
<jsp:include page="/resources/common/adminNavOpen.jsp"></jsp:include>
<hr class="my-4">
<h1 class="page_title color5">공지사항</h1>
<hr class="my-4">
<table width="500" cellpadding="0" cellspacing="0" border="1">
	<tr>
		<td>번호</td>
		<td>이름</td>
		<td>제목</td>
		<td>날짜</td>
	</tr>
	<c:forEach items="${list}" var="dto">
		<tr>
			<td>${dto.bId}</td>
			<td>${dto.bName}</td>
			<td><a
				href="${pageContext.request.contextPath}/admin/notice/viewLink?bId=${dto.bId}">${dto.bTitle}</a></td>
			<td>${dto.bDate}</td>
		</tr>
	</c:forEach>
	<tr>
		<td colspan="5"><a
			href="${pageContext.request.contextPath}/admin/notice/write">글쓰기</a>
		</td>
	</tr>
</table>

<jsp:include page="/resources/common/adminNavClose.jsp"></jsp:include>
<jsp:include page="/resources/common/adminFooter.jsp"></jsp:include>