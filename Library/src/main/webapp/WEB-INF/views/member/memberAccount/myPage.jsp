<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/resources/common/memberHeader.jsp"></jsp:include>
<jsp:include page="/resources/common/memberNavOpen.jsp"></jsp:include>
<form method="post">
	<div class="alert alert-light">
		<h1 class="h3 mb-6 font-weight-normal">내 정보 보기</h1>
		<table>
			<tr>
				<td>아이디</td>
				<td>${memberLoginInfo.member_id}</td>
			</tr>
			<tr>
				<td>이름</td>
				<td>${memberLoginInfo.name}</td>
			</tr>
			<tr>
				<td>대여가능권수</td>
				<td>${memberLoginInfo.availAmount}</td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td>${memberLoginInfo.phone}</td>
			</tr>
			<tr>
				<td>총 대여일</td>
				<td>${memberLoginInfo.totborrowDays}</td>
			</tr>
			<tr>
				<td>총 연체일</td>
				<td>${memberLoginInfo.totoverduedays}</td>
			</tr>
			<tr>
				<td>대여가능일</td>
				<td>${memberLoginInfo.possibledate}</td>
			</tr>
		</table>
		<button class="btn btn-lg btn-primary btn-block" type="submit">회원
			수정</button>
	</div>
</form>

<jsp:include page="/resources/common/memberNavClose.jsp"></jsp:include>
<jsp:include page="/resources/common/memberFooter.jsp"></jsp:include>