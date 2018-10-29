<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="post" class="my-5" id="form">
		<div class="card-header border-0 font-weight-bold">4 comments</div>
		<!-- Quick Reply -->
		<div class="form-group mt-4">
			<label for="replyText">Your comment</label>
			<textarea name="replytext" class="form-control"
				id="replyText" rows="5"></textarea>
			<div class="text-center my-4">
				<button type="button" class="btn btn-primary btn-sm"  onclick="subb()">Post</button>
			</div>
		</div>

		<input type="hidden" name="idx" value="${listInfo.idx}" /> <input
			type="hidden" name="replyer" value="${memberLoginInfo.name}" />

	</form>
	<script>

        function subb() {
            
			var form = $('#form').serialize();
            
            $.ajax({
				url:'${pageContext.request.contextPath}/member/home/view/reply',
				type:'POST',
				data:form,
				contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
				datatype:'json',
				success:function (data) {
                    $(data).each(function (key,value) {
                       console.log(value.idx);
                       console.log(value.replytext);
                       console.log(value.replyer);
					});
                },
				error:function () {

                }
			});
			}

	</script>
	<hr />
	<div class="media-body text-center text-md-left ml-md-3 ml-0">
		<h5 class="font-weight-bold mt-0">
			<a href="">Miley Steward</a>
		</h5>
		test
	</div>
</body>
</html>