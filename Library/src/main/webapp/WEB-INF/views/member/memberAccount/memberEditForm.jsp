<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/resources/common/memberHeader.jsp"></jsp:include>
<jsp:include page="/resources/common/memberNavOpen.jsp"></jsp:include>
<hr class="my-4">
<h1 class="page_title color5">나의 정보 수정</h1>
<hr class="my-4">
<form method="post">
	<div class="alert alert-light">
		<div class="form-group">
			<label>아이디</label><input type="text" name="member_id"
				class="form-control form-control-lg" required="required"
				readonly="readonly" value="${mv.member_id}" />
		</div>
		<div class="form-group">
			<label>비밀번호</label><input type="password" name="password"
				class="form-control form-control-lg" required="required"
				autofocus="autofocus" value="${mv.password}" />
		</div>
		<div class="form-group">
			<label>이름</label><input type="text" name="name"
				class="form-control form-control-lg" required="required"
				autofocus="autofocus" value="${mv.name}">
		</div>
		<div class="form-group">
			<label>전화번호</label><input type="text" id="phone" name="phone"
				class="form-control form-control-lg" required="required"
				autofocus="autofocus" value="${mv.phone}">
		</div>
		<input type="hidden" name="availAmount" value="${mv.availAmount}" />
		<input type="hidden" name="totborrowDays" value="${mv.totborrowDays}" />
		<input type="hidden" name="totoverduedays"
			value="${mv.totoverduedays}" /> <input type="hidden"
			name="possibledate" value="${mv.possibledate}" />

		<button class="btn btn-lg btn-dark btn-block" type="submit">
			수정하기</button>
	</div>
</form>

<jsp:include page="/resources/common/memberNavClose.jsp"></jsp:include>
<jsp:include page="/resources/common/memberFooter.jsp"></jsp:include>