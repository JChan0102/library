<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
html, body {
	height: 100%
}

#wrap {
	position: absolute;
	height: 100%;
	top: 50%;
	left: 50%;
	width: 70%;
	transform: translate(-50%, -50%);
}
</style>
</head>
<body>
	<div id="wrap"
		class="text-center border border-light p-5 smooth-scroll">
		<!-- Default form contact -->

		<p class="h4 mb-4">글 보기</p>

		<label id="defaultContactFormName" class="form-control mb-4">${listInfo.list_title}</label>
		<div class="form-group"></div>

		<div class="form-group">
			<label style="height: 500px" class="form-control rounded-0"
				id="exampleFormControlTextarea2" rows="3">${listInfo.list_content}</label>
			<%-- <textarea name="list_content" style="height: 500px" class="form-control rounded-0" id="exampleFormControlTextarea2" rows="3" placeholder="내용">${listInfo.list_content}</textarea> --%>
		</div>

		<!-- Send button -->
		<button onclick="location.href='update?idx=${listInfo.idx}'"
			id="write" type="button" class="btn btn-rounded btn-blue-grey">
			<i class="fa fa-eraser" aria-hidden="true"></i> 수정
		</button>
		<button onclick="delchk()" id="write" type="button"
			class="btn btn-rounded btn-danger">
			<i class="fa fa-close" aria-hidden="true"></i> 삭제
		</button>
		<button onclick="location.href='page?idx=${listInfo.idx}'"
			type="button" class="btn btn-rounded btn-amber" id="write">
			<i class="fa fa-th-list pr-2" aria-hidden="true"></i> 목록
		</button>

		<input type="hidden" name="list_name" value="네이무" /> <input
			type="hidden" name="idx" value="${listInfo.idx}" />
		<!--  <input type="hidden" name="id" value="${idz}" />  -->

		<!--Section: Comments-->
		<section class="my-5">
			<div class="card-header border-0 font-weight-bold">4 comments</div>
			<!-- Quick Reply -->
			<div class="form-group mt-4">
				<label for="quickReplyFormComment">Your comment</label>
				<textarea class="form-control" id="quickReplyFormComment" rows="5"></textarea>

				<div class="text-center my-4">
					<button class="btn btn-primary btn-sm" type="submit">Post</button>
				</div>
			</div>

			<div class="media-body text-center text-md-left ml-md-3 ml-0">
				<h5 class="font-weight-bold mt-0">
					<a href="">Miley Steward</a>
				</h5>
				test
			</div>
		</section>
	</div>
</body>
</html>


<script>
	function delchk() {
		if (confirm("삭제하시겠습니까?")) {
			location.href = "delete?idx=${listInfo.idx}";
			return true;
		} else {
			return false;
		}
	}
</script>