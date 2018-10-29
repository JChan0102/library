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

#wrap{
	
	position:absolute;
	top:50%;
	left:50%;
	width: 70%;
	transform:translate(-50%, -50%)
}
</style>
</head>
<body>
<div id="wrap">	
<!-- Default form contact -->
<form method="post" class="text-center border border-light p-5">

    <p class="h4 mb-4">글쓰기</p>

    <!-- Name -->
    <input name="list_title" type="text" id="defaultContactFormName" class="form-control mb-4" placeholder="제목">


    <!-- Subject -->
    <!-- Message -->
    <div class="form-group">
        <textarea name="list_content" style="height: 500px" class="form-control rounded-0" id="exampleFormControlTextarea2" rows="3" placeholder="내용"></textarea>
    </div>

    <!-- Send button -->
    <button class="btn btn-info btn-block" type="submit">확인</button>

    <input type="hidden" name="list_name" value="${memberLoginInfo.name}"/>
    <!--  <input type="hidden" name="id" value="${idz}" />  -->

</form>
<!-- Default form contact -->
</div>
</body>
</html>