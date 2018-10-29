<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div style="padding-top: 50px" class="media-body text-center text-md-left ml-md-3 ml-0" id="reply">
	
	</div>
	<form method="post" class="my-5" id="form">
		<div class="card-header border-0 font-weight-bold">4 comments</div>
		<!-- Quick Reply -->
		<div class="form-group mt-4">
			<label for="replyText">Your comment</label>
			<textarea name="replytext" class="form-control"
				id="replyText" rows="5"></textarea>
			<div class="text-center my-4">
				<button type="button" class="btn btn-primary btn-sm"  onclick="replyInsert()">Post</button>
			</div>
		</div>

		<input type="hidden" name="idx" value="${listInfo.idx}" /> <input
			type="hidden" name="replyer" value="${memberLoginInfo.name}" />
	</form>
	<script>

        function replyInsert() {
            
			var form = $('#form').serialize();
			
			var reply = '';
			
            $.ajax({
				url:'${pageContext.request.contextPath}/member/home/view/reply',
				type:'POST',
				data:form,
				contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
				datatype:'json',
				success:function (data) {
                    $(data).each(function (key,value) {
                       reply += '<h5 class="font-weight-bold mt-0">';
                       reply += '<a href="">'+value.replyer+'</a> </h5>';
                       reply += '<h5>'+value.replytext+'</h5>'; 
                       reply += '<hr />';
					});
                    $('#reply').html(reply);
                },
				error:function () {
					alert("오류ㅠㅠ");
                }
			});
			}
        
        function replyList() {
        	var idx = '${listInfo.idx}';
        	$.ajax({
        		url:'${pageContext.request.contextPath}/member/home/view',
        		type:'GET',
        		data:{'idx':idx},
        		success:function(data){
        			$(data).each(function (key, value){
        				console.log(data);
        				reply += '<h5 class="font-weight-bold mt-0">';
                        reply += '<a href="">'+value.replyer+'</a> </h5>';
                        reply += '<h5>'+value.replytext+'</h5>'; 
                        reply += '<hr />';
 					});
                     $('#reply').html(reply);
        		}
        	});
        }
        	

	</script>
	
</body>
</html>