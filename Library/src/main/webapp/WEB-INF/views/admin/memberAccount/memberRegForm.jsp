<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/resources/common/adminHeader.jsp"></jsp:include>
<jsp:include page="/resources/common/adminNavOpen.jsp"></jsp:include>
<script type="text/javascript">
	$(document).ready(function() {
		$("#phone").change(function() {
			$("#password").val($("#phone").val());
		});
	});
</script>
<form method="post">
	<div class="alert alert-light">
		<h1 class="h3 mb-6 font-weight-normal">회원 등록</h1>

		<div class="form-group">
			<label>아이디</label><input type="text" name="member_id"
				class="form-control form-control-lg" placeholder="ID"
				required="required" autofocus="autofocus" />
		</div>
		<div class="form-group">
			<label>비밀번호</label><input type="text" id="password" name="password"
				class="form-control form-control-lg" placeholder="초기값  : 전화번호"
				required="required" readonly="readonly" />
		</div>
		<div class="form-group">
			<label>이름</label><input type="text" name="name"
				class="form-control form-control-lg" placeholder="이름"
				required="required" autofocus="autofocus">
		</div>
		<div class="form-group">
			<label>전화번호</label><input type="text" id="phone" name="phone"
				class="form-control form-control-lg" placeholder="전화번호"
				required="required" autofocus="autofocus">
		</div>
		<!-- 초기값 -->
		<input type="hidden" name="availAmount" value="5" /> <input
			type="hidden" name="totborrowDays" value="0" /> <input type="hidden"
			name="totoverduedays" value="0" /> <input type="hidden"
			name="possibledate" value="POSSIBLE" />

		<button class="btn btn-lg btn-primary btn-block" type="submit">회원
			등록</button>
	</div>
</form>

<jsp:include page="/resources/common/adminNavClose.jsp"></jsp:include>
<jsp:include page="/resources/common/adminFooter.jsp"></jsp:include>