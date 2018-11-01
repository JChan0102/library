<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<jsp:include page="/resources/common/memberHeader.jsp"></jsp:include>
<!-- 네비 사용 시작  -->
<jsp:include page="/resources/common/memberNavOpen.jsp"></jsp:include>
<hr class="my-4">
<h1 class="page_title color5">${bookInfo.book_name}</h1>
<hr class="my-4">
<table class="jc_table">
	<tr>
		<td rowspan="3"><img src="${bookInfo.book_image}"></td>
		<td rowspan="2" width="800">${bookInfo.book_name}</td>
		<td width="200">${bookInfo.book_writer}</td>
		<td>${bookExist}</td>
		<td width="430"><select name="bookcode" class="form-control">

				<c:forEach var="item" items="${bookCodeList}">
					<c:choose>
						<c:when test="${item.book_exist eq 1 }">
							<option>${item.book_code}(대출가능)</option>
						</c:when>
						<c:otherwise>
							<option>${item.book_code}(대출블가능)</option>
						</c:otherwise>
					</c:choose>
				</c:forEach>
		</select></td>
	</tr>
	<tr>
		<td width="200">${bookInfo.book_price}</td>
		<td width="200">${bookInfo.book_publisher}</td>
		<td width="200">${bookInfo.book_isbn}</td>

	</tr>
	<tr>
		<td colspan="5">${bookInfo.description}</td>
	</tr>
	<tr>
		<td colspan="5" id="getAladin">이 책이 마음에 드셨나요? <a
			href="${ad.link}">[온라인 서점 알라딘으로 구경가기]</a></td>
	</tr>
	<tr>
		<td colspan="5" width="100%" bgcolor="pink"><span id="result"></span></td>
	</tr>
</table>
<script type="text/javascript">
	/* $(document)
			.ready(
					function() {
						//$("#member_id").keyup(function() {
						$
								.ajax({
									type : 'GET',
									contentType : "application/x-www-form-urlencoded; charset=UTF-8",
									// url: 'http://www.aladin.co.kr/ttb/api/ItemLookUp.aspx?ttbkey=ttbbombstar1951001&itemIdType=ISBN13&ItemId=9788931587012&output=xml&Version=20131101&OptResult=ebookList,usedList,reviewList',
									url : "${pageContext.request.contextPath}/member/aladin/getAladinData?isbn13=${fn:substring(bookInfo.book_isbn,11,24)}",
									success : function(data) {
										console.log(data);
										$('#result').html(data);
									},
									error : function(error) {
										console.log("error : " + error);
									}
								});
						//});
					}); */
</script>
<jsp:include page="/resources/common/memberNavClose.jsp"></jsp:include>
<!-- 네비 사용 끝 -->
<jsp:include page="/resources/common/memberFooter.jsp"></jsp:include>