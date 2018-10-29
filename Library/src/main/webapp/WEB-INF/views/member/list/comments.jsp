<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form
		action="${pageContext.request.contextPath}/member/home/view/reply"
		method="post" class="my-5">
		<div class="card-header border-0 font-weight-bold">4 comments</div>
		<!-- Quick Reply -->
		<div class="form-group mt-4">
			<label for="quickReplyFormComment">Your comment</label>
			<textarea name="replyText" class="form-control"
				id="quickReplyFormComment" rows="5"></textarea>
			<div class="text-center my-4">
				<button class="btn btn-primary btn-sm" type="submit">Post</button>
			</div>
		</div>
		<input type="hidden" name="idx" value="${listInfo.idx}" /> <input
			type="hidden" name="replyer" value="${memberLoginInfo.name}" />


	</form>
	<hr />
	<div class="media-body text-center text-md-left ml-md-3 ml-0">
		<h5 class="font-weight-bold mt-0">
			<a href="">Miley Steward</a>
		</h5>
		test
	</div>
</body>
</html>