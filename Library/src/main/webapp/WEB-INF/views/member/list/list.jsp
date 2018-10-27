<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- Bootstrap core CSS -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Material Design Bootstrap -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.5.13/css/mdb.min.css"
	rel="stylesheet">
<!-- JQuery -->
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- Bootstrap tooltips -->
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.4/umd/popper.min.js"></script>
<!-- Bootstrap core JavaScript -->
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.min.js"></script>
<!-- MDB core JavaScript -->
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.5.13/js/mdb.min.js"></script>
<style>
body, html {
	height: 100%;
}

h1 {
	padding: 40px 200px;
}

#list {
	padding: 0 200px;
}

#pageNum {
	text-align: right;
	padding: 20px;
}

#write {
	float: right;
	color: white;
	background-color: black;
	padding: 10px;
	cursor: pointer;
	margin: 10px;
}

#title {
	cursor: pointer;
}
</style>
</head>
<body>
	<h1>자유 게시판</h1>

	<div id="list">
		<button onclick="location.href='writeForm'" id="write" type="button"
			class="btn btn-rounded btn-blue-grey">
			<i class="fa fa-floppy-o pr-2" aria-hidden="true"></i>글쓰기
		</button>
		<table id="list" class="table table-striped table-hover text-center">
			<thead>
				<tr>
					<th scope="col" style="width: 10%">#</th>
					<th scope="col" style="width: 60%">제목</th>
					<th scope="col" style="width: 10%">작성자</th>
					<th scope="col" style="width: 20%">작성일</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="message" items="${viewInfo}">
					<tr>
						<th scope="row">${message.idx}</th>
						<td id="title" onclick="location.href='view/${message.idx}'">${message.list_title}</td>
						<td>${message.list_name}</td>
						<td>${message.list_date}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>

		<div id="pageNum">
			<c:choose>
				<c:when test="${page.currentPageNumber > 1}">
					<a style="color: black" href="list?page=1">[ << ]</a>
					<a style="color: black"
						href="list?page=${page.currentPageNumber-1}">[ < ]</a>
				</c:when>
			</c:choose>
			<c:forEach var="num" begin="${page.startPageNum}"
				end="${page.lastPageNum}">
				<c:choose>
					<c:when test="${page.currentPageNumber==num}">
						<a style="color: red" href="list?page=${num}">[${num}]</a>
					</c:when>
					<c:otherwise>
						<a style="color: black" href="list?page=${num}">[${num}]</a>
					</c:otherwise>
				</c:choose>
			</c:forEach>

			<c:choose>
				<c:when test="${page.currentPageNumber < page.pageTotalCount}">
					<a style="color: black"
						href="list?page=${page.currentPageNumber+1}">[ > ]</a>
					<a style="color: black" href="list?page=${page.pageTotalCount}">[
						>> ]</a>
				</c:when>
			</c:choose>
		</div>
	</div>
</body>

</html>