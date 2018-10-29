<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/resources/common/memberHeader.jsp"></jsp:include>
<!-- 네비 사용 시작  -->
<jsp:include page="/resources/common/memberNavOpen.jsp"></jsp:include>

<h1>신간도서</h1>

<div class="w3-content w3-section"
	style="max-width: 700px; margin: auto">
	<c:forEach var="item" items="${bookList}">
		<div class="mySlides">
			<img src="${item.book_image}"
				style="width: 30%; display: inline-block; float: left; margin-right: 150px">
			<!-- <ul style="list-style: none;width: 70%" > -->
			<div style="float: left">
				<span class="badge badge-warning">신간</span>
				<h2 style="width: 200px">${item.book_name}</h2>
				<h3 style="width: 200px">${item.book_writer}</h3>
				<h3 style="width: 200px">${item.book_publisher}</h3>
			</div>
			<!-- </ul> -->

		</div>
	</c:forEach>
</div>

<script>
	var myIndex = 0;
	carousel();

	function carousel() {
		var i;
		var x = document.getElementsByClassName("mySlides");
		for (i = 0; i < x.length; i++) {
			x[i].style.display = "none";
		}
		myIndex++;
		if (myIndex > x.length) {
			myIndex = 1
		}
		x[myIndex - 1].style.display = "block";
		setTimeout(carousel, 2000); // Change image every 2 seconds
	}
</script>



<jsp:include page="/resources/common/memberNavClose.jsp"></jsp:include>
<!-- 네비 사용 끝 -->
<jsp:include page="/resources/common/memberFooter.jsp"></jsp:include>

