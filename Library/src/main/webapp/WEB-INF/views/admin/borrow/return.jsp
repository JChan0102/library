<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/resources/common/adminHeader.jsp"></jsp:include>
<jsp:include page="/resources/common/adminNavOpen.jsp"></jsp:include>
<!-- 이곳이 body -->
<h1>이곳은 반납 기능을 합니다</h1>

<div id ="formchange">
<form method="post">
    <input type="text" name="book_code" placeholder="북코드를 입력해주세요">
    <input type="submit" value="반납">
</form>
</div>
<c:if test="${!(empty msg)}">
    <c:if test="${!(empty username)}">

        ${username} 님  <br>

    </c:if>

    ${msg}

</c:if>
<jsp:include page="/resources/common/adminNavClose.jsp"></jsp:include>
<jsp:include page="/resources/common/adminFooter.jsp"></jsp:include>

