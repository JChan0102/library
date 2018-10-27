<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/resources/common/adminHeader.jsp"></jsp:include>
<jsp:include page="/resources/common/adminNavOpen.jsp"></jsp:include>

<h1>관리자 계정 관련 기능</h1>
<a href="${pageContext.request.contextPath}/admin/adminAccount/adminReg"><input
	type="button" value="관리자 등록"></a>
<table>
	<tr>
		<td>관리자 아이디</td>
		<td>관리자 비밀번호</td>
		<td>관리자 권한</td>
		<td>수정/삭제</td>
	</tr>
	<c:forEach var="item" items="${admins}">
		<c:if test="${'admin' ne item.admin_id}">
		</c:if>
		<tr>
			<td>${item.admin_id}</td>
			<td>${item.password}</td>
			<td>${item.permission}</td>
			<td><a
				href="${pageContext.request.contextPath}/admin/adminAccount/adminEdit?admin=${item.admin_id}"><input
					type="button" value="수정"></a><a
				href="${pageContext.request.contextPath}/admin/adminAccount/adminDelete?admin=${item.admin_id}"><input
					type="button" value="삭제"
					<c:if test="${'admin' eq item.admin_id}">disabled</c:if>></a></td>
		</tr>
	</c:forEach>
</table>


<jsp:include page="/resources/common/adminNavClose.jsp"></jsp:include>
<jsp:include page="/resources/common/adminFooter.jsp"></jsp:include>