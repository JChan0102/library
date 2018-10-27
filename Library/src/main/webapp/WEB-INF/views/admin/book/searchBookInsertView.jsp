<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/resources/common/adminHeader.jsp"></jsp:include>
<jsp:include page="/resources/common/adminNavOpen.jsp"></jsp:include>
<!-- 이곳이 body -->
<form method="post">
		<select name="optionCode">
			<option value="title" seleted>책제목</option>
			<option value="author">작가명</option>
			<option value="publisher">출판사</option>
		</select>
		<select name="listCnt">
			<option value="10" seleted>10개씩</option>
			<option value="15">15개씩</option>
			<option value="20">20개씩</option>
			<option value="30">30개씩</option>
			<option value="40">40개씩</option>
		</select>
		<input type="text" name="keyword" /> <input type="submit" value="검색">
	</form>
	<hr>
	<c:if test="${bookList.isEmpty()}">
		<h1>해당결과글 찾을 수 없습니다.</h1>
	</c:if>
	<c:if test="${!bookList.isEmpty()}">
		<table>
			<c:forEach var="item" items="${bookList}">
				<form action="${pageContext.request.contextPath}/admin/book/bookInsert" method="post">
					<tr>
						<td colspan="5" width="100%" bgcolor="pink"></td>
					</tr>
					<tr>
						<td rowspan="2"><img src="${item.book_image}"> <input
							type="hidden" name="book_image" value="${item.book_image}"></td>
						<td rowspan="3" width="800">
							${item.book_name}
							<input type="hidden" name="book_name" value="${item.book_name}">
						</td>
						<td width="200">
							${item.book_writer}
							<input type="hidden" name="book_writer" value="${item.book_writer}">
						</td>
						<td width="300">
							<input type="text" name="book_code" placeholder="북코드입력" requried>
						</td>
						<td width="200">
							<input type="submit" value="등록">
						</td>
					</tr>
					<tr>
						<td width="200">
							${item.book_price}
							<input type="hidden" name="book_price" value="${item.book_price}">
						</td>
						<td width="200">
							${item.book_publisher}
							<input type="hidden" name="book_publisher" value="${item.book_publisher}">
						</td>
						<td width="200">
							${item.book_isbn}
							<input type="hidden" name="book_isbn" value="${item.book_isbn}">
						</td>
					</tr>
					<tr>
						<td colspan="5">${item.description}</td>
					</tr>
					<tr>
						<td colspan="5" width="100%" bgcolor="pink"></td>
					</tr>
				</form>
			</c:forEach>
		</table>
	</c:if>
<jsp:include page="/resources/common/adminNavClose.jsp"></jsp:include>
<jsp:include page="/resources/common/adminFooter.jsp"></jsp:include>

