<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div style="padding-top: 50px"
		class="media-body text-center text-md-left ml-md-3 ml-0" id="reply">
	<c:forEach var="info" items="${replyInfo}">
		<h5 class="font-weight-bold mt-0">
			<a href="">${info.replyer}</a>
		</h5>
		<h6>${info.replytext}</h6>
		<button type="button" class="btn btn-primary btn-sm"
					onclick="replyDelete(${info.r_idx})">삭제</button>
		
		<%-- <input type="hidden" name="r_idx" value="${info.r_idx}"/> --%>
		<hr />
	</c:forEach> 

	</div>
	<button type="button" class="btn btn-primary btn-sm"
					onclick="replyList(${listInfo.idx})">test</button>
	<form method="post" class="my-5" id="form">
		<div class="card-header border-0 font-weight-bold">4 comments</div>
		<!-- Quick Reply -->
		<div class="form-group mt-4">
			<label for="replyText">Your comment</label>
			<textarea name="replytext" class="form-control" id="replyText"
				rows="5"></textarea>
			<div class="text-center my-4">
				<button type="button" class="btn btn-primary btn-sm"
					onclick="replyInsert()">Post</button>
			</div>
		</div>
		<input type="hidden" name="idx" value="${listInfo.idx}" /> <input
			type="hidden" name="replyer" value="${memberLoginInfo.name}" />
			<%-- <input type="hidden" name="r_idx" value="${replyInfo.r_idx}"/> --%>
			<%-- ${replyInfo} --%>
	</form>
	<script>
		function replyList(idx){
			var reply = '';
			$.ajax({
						url : '${pageContext.request.contextPath}/member/home/view/replyList',
						type:'GET',
						data: {"idx": idx},
						datatype : 'json',
						success : function(data) {
							$(data)
									.each(
											function(key, value) {
												reply += '<h5 class="font-weight-bold mt-0">';
												reply += '<a href="">'
														+ value.replyer
														+ '</a> </h5>';
												reply += '<h6>'
														+ value.replytext
														+ '</h6>';
												reply += '<button type="button" class="btn btn-primary btn-sm"';
												reply += 'onclick="replyDelete('+value.r_idx+')">삭제</button>';
												reply += '<hr />';
											});
							$('#reply').html(reply);
						},
						error : function() {
							alert("오류에요ㅠㅠ");
						}
				
			});
		}
	
		function replyInsert() {
			var form = $('#form').serialize();
			var reply = '';
			$.ajax({
						url : '${pageContext.request.contextPath}/member/home/view/reply',
						type : 'POST',
						data : form,
						contentType : 'application/x-www-form-urlencoded; charset=UTF-8',
						datatype : 'json',
						success : function(data) {
							$(data)
									.each(
											function(key, value) {
												reply += '<h5 class="font-weight-bold mt-0">';
												reply += '<a href="">'
														+ value.replyer
														+ '</a> </h5>';
												reply += '<h6>'
														+ value.replytext
														+ '</h6>';
												reply += '<button type="button" class="btn btn-primary btn-sm"';
												reply += 'onclick="replyDelete('+value.r_idx+')">삭제</button>';
												reply += '<hr />';
											});
							$('#reply').html(reply);
						},
						error : function() {
							alert("오류ㅠㅠ");
						}
					});
		}
		
		function replyDelete(r_idx){
			$.ajax({
				url:'${pageContext.request.contextPath}/member/home/view/replyDelete',
				type:'GET',
				data: {"r_idx": r_idx},
				success : function(data) {
					if(data=="1"){
						alert("성공");
					}
				}
			});
		}
		
		/* function replyUpdate(r_idx){
			alert(r_idx);
			$.ajax({
				url:'${pageContext.request.contextPath}/member/home/view/replyUpdate',
				type:'GET',
				data: {"r_idx": r_idx},
				success : function(data) {
					
				}
			});
			
		} */
	</script>
</body>
</html>