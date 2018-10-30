<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/resources/common/adminHeader.jsp"></jsp:include>
<jsp:include page="/resources/common/adminNavOpen.jsp"></jsp:include>
<hr class="my-4">
<h1 class="page_title color5">관리자 계정 관리</h1>
<hr class="my-4">

<a href="${pageContext.request.contextPath}/admin/adminAccount/adminReg">
	<button class="btn"><i class="fas fa-user-plus"></i> 관리자 등록</button></a>
<table class="jc_table">
	<tr>
		<th>관리자 아이디</th>
		<th>관리자 비밀번호</th>
		<th>관리자 권한</th>
		<th>수정/삭제</th>
	</tr>
	<c:forEach var="item" items="${admins}">
		<c:if test="${'admin' ne item.admin_id}">
		</c:if>
		<tr>
			<td>${item.admin_id}</td>
			<td>${item.password}</td>
			<td>${item.permission}</td>
			<td><a
				href="${pageContext.request.contextPath}/admin/adminAccount/adminEdit?admin=${item.admin_id}">
			<button class="btn btn-warning"><i class="fas fa-user-edit"></i></button></a>

				<c:choose>
					<c:when test="${'admin' eq item.admin_id}">
						<button  type="button" class="btn btn-danger" disabled>
							<i class="fas fa-user-slash"></i>
						</button>
					</c:when>
					<c:otherwise>
						<a href="${pageContext.request.contextPath}/admin/adminAccount/adminDelete?admin=${item.admin_id}">
							<button  type="button" class="btn btn-danger">
								<i class="fas fa-user-slash"></i>
							</button></a>
					</c:otherwise>
				</c:choose>
			</td>
		</tr>
	</c:forEach>
</table>


<jsp:include page="/resources/common/adminNavClose.jsp"></jsp:include>
<jsp:include page="/resources/common/adminFooter.jsp"></jsp:include>