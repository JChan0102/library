<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/resources/common/adminHeader.jsp"></jsp:include>
<jsp:include page="/resources/common/adminNavOpen.jsp"></jsp:include>
<!-- 이곳이 body -->
<form method="post">
		<select name="optionCode">
			<option value="title" seleted>책제목</option>
			<option value="author">작가명</option>
			<option value="publisher">출판사</option>
			<option value="isbn">isbn번호</option>
			<option value="bookcode">책코드</option>
		</select>
		<!-- <input type="text" name="optionCode"> -->
		<input type="text" name="keyword" /> <input type="submit" value="검색">
	</form>
	<hr>
	
<jsp:include page="/resources/common/adminNavClose.jsp"></jsp:include>
<jsp:include page="/resources/common/adminFooter.jsp"></jsp:include>


