<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/resources/common/memberHeader.jsp"></jsp:include>
<!-- 네비 사용 시작  -->
<jsp:include page="/resources/common/memberNavOpen.jsp"></jsp:include>

<style>
html, body {
	height: 100%;
	background-color: white;
}

#wrap {
	position: absolute;
	height: 100%;
	top: 60%;
	left: 50%;
	width: 70%;
	transform: translate(-50%, -50%);
}
</style>

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
		<c:if test="${memberLoginInfo.name == listInfo.list_name}">
			<!-- Send button -->
			<button onclick="location.href='update?idx=${listInfo.idx}'"
				id="write" type="button" class="btn btn-rounded btn-success" >
				<i class="fa fa-eraser" aria-hidden="true"></i> 수정
			</button>
			<button onclick="delchk()" id="write" type="button"
				class="btn btn-rounded btn-danger">
				<i class="far fa-trash-alt" aria-hidden="true"></i> 삭제
			</button>
		</c:if>
		<button onclick="location.href='view/page/${listInfo.idx}'"
			type="button" class="btn btn-rounded btn-warning" style="color: white" id="write">
			<i class="far fa-list-alt"  aria-hidden="true"></i> 목록
		</button>

		<input type="hidden" name="list_name" value="${listInfo.list_name }" />
		<input type="hidden" name="idx" value="${listInfo.idx}" />


		<%@ include file="comments.jsp"%>
	</div>



<script>
replyList(${listInfo.idx});
	function delchk() {
		if (confirm("삭제하시겠습니까?")) {
			location.href = "delete?idx=${listInfo.idx}";
			return true;
		} else {
			return false;
		}
	}
</script>
<jsp:include page="/resources/common/memberNavClose.jsp"></jsp:include>
<!-- 네비 사용 끝 -->
<jsp:include page="/resources/common/memberFooter.jsp"></jsp:include>