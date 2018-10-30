<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/resources/common/adminHeader.jsp"></jsp:include>
<jsp:include page="/resources/common/adminNavOpen.jsp"></jsp:include>
<!-- 이곳이 body -->
<hr class="my-4">
<h1 class="page_title color5">도서 관리 : 삭제</h1>
<hr class="my-4">
<form method="post">
	<select name="searchWord">
		<option value="title" seleted>책제목</option>
		<option value="author">작가명</option>
		<option value="publisher">출판사</option>
		<option value="isbn">isbn번호</option>
		<option value="bookcode">책코드</option>
	</select>
	<!-- <input type="text" name="optionCode"> -->
	<input type="text" name="keyword" /> <input type="submit" value="검색">
</form>
<hr>
<c:if test="${bookList.isEmpty()}">
	<h1>해당결과글 찾을 수 없습니다.</h1>
</c:if>
<c:if test="${!bookList.isEmpty()}">
	<table>
		<tbody id="bookListView">
			<c:forEach var="item" items="${bookList}">
				<tr>
					<td colspan="5" width="100%" bgcolor="pink"></td>
				</tr>
				<tr>
					<td rowspan="2"><img src="${item.book_image}" alt="이미지 없음">
					</td>
					<td rowspan="3" width="800">${item.book_name}</td>
					<td width="200">${item.book_writer}</td>
					<td width="300">${item.book_code}</td>
					<td width="200"><c:if test="${item.book_exist eq 0}">
							<b>대출 중인 도서입니다.</b>
						</c:if> <c:if test="${item.book_exist eq 1}">
							<input type="button" value="삭제"
								onclick="deleteBook('${item.book_code}')">
						</c:if></td>
				</tr>
				<tr>
					<td width="200">${item.book_price}</td>
					<td width="200">${item.book_publisher}</td>
					<td width="200">${item.book_isbn}</td>
				</tr>
				<tr>
					<td colspan="5" width="100%" bgcolor="pink"></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</c:if>

<script>
	function deleteBook(code) {

		console.log(code);
		$
				.ajax({
					url : '${pageContext.request.contextPath}/admin/book/bookDelete?book_code='
							+ code,
					type : 'GET',
					contentType : 'application/x-www-form-urlencoded; charset=UTF-8',
					dataType : 'json',
					success : function(data) {
						alert('삭제하였습니다');
						var bookListView = '';
						var url = '${pageContext.request.contextPath}/admin/book/bookDelete';
						$
								.each(
										data,
										function(index, item) {

											var exist = '';
											if (item.book_exist == 1) {
												exist = '<input type="button" value="삭제" onclick="deleteBook(\''
														+ item.book_code
														+ '\')">';

											} else {
												exist = '<b>대출 중인 도서 입니다.</b>'
											}

											bookListView += '<tr><td colspan="5" width="100%" bgcolor="pink"></td></tr>';
											bookListView += '<tr><td rowspan="2"><img src="'+item.book_image+'" alt="이미지 없음"> </td>';
											bookListView += '<td rowspan="3" width="800">'
													+ item.book_name + '</td>';
											bookListView += '<td width="200">'
													+ item.book_writer
													+ '</td>';
											bookListView += '<td width="300">'
													+ item.book_code + '</td>';
											bookListView += '<td width="200">'
													+ exist + '</td></tr>';
											bookListView += '<tr><td width="200">'
													+ item.book_publisher
													+ '</td>';
											bookListView += '<td width="200">'
													+ item.book_isbn + '</td>';
											bookListView += '</tr>'
											bookListView += '<tr><td colspan="5" width="100%" bgcolor="pink"></td></tr>';

										});
						$('#bookListView').html(bookListView);
					},
					error : function() {
						alert('오류발생');
					}
				});
	}
</script>
<jsp:include page="/resources/common/adminNavClose.jsp"></jsp:include>
<jsp:include page="/resources/common/adminFooter.jsp"></jsp:include>


