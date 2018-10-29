<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/resources/common/memberHeader.jsp"></jsp:include>
<!-- 네비 사용 시작  -->
<jsp:include page="/resources/common/memberNavOpen.jsp"></jsp:include>

<h2>${bookInfo.book_name}</h2>
<table>
		<tr>
			<td colspan="5" width="100%" bgcolor="pink"></td>
		</tr>
		<tr>
			<td rowspan="2"><img src="${bookInfo.book_image}"></td>
			<td rowspan="3" width="800">${bookInfo.book_name} </td>
			<td width="200">${bookInfo.book_writer} </td>
			<td width="300">${bookInfo.book_code}</td>
		</tr>
		<tr>
			<td width="200">${bookInfo.book_price} 
			</td>
			<td width="200">${bookInfo.book_publisher} 
			</td>
			<td width="200">${bookInfo.book_isbn} 
			</td>
			<td width="100">${bookExist} 
			</td>
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