<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
		<td colspan="5" width="100%" bgcolor="pink"></td>
	</tr>
</table>

<jsp:include page="/resources/common/memberNavClose.jsp"></jsp:include>
<!-- 네비 사용 끝 -->
<jsp:include page="/resources/common/memberFooter.jsp"></jsp:include>