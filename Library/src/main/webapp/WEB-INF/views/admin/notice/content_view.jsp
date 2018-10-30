<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/resources/common/adminHeader.jsp"></jsp:include>
<jsp:include page="/resources/common/adminNavOpen.jsp"></jsp:include>

	<table width="500" cellpadding="0" cellspacing="0" border="1">
		
			
			<tr>
				<td> 번호 </td>
				<td> ${viewLink.bId} </td>
			</tr>
			<tr>
				<td> 이름 </td>
				<td> ${viewLink.bName}</td>
			</tr>
			<tr>
				<td> 제목 </td>
				<td>${viewLink.bTitle}</td>
			</tr>
			<tr>
				<td> 내용 </td>
				<td> <textarea rows="10" name="bContent" >${viewLink.bContent}</textarea></td>
			</tr>
			<tr >
				 <a href="${pageContext.request.contextPath}/admin/notice/list">목록보기</a> &nbsp;&nbsp; <a href="${pageContext.request.contextPath}/admin/notice/delete?bId=${viewLink.bId}">삭제</a></td>
			</tr>
		
	</table>
<jsp:include page="/resources/common/adminNavClose.jsp"></jsp:include>
<jsp:include page="/resources/common/adminFooter.jsp"></jsp:include>