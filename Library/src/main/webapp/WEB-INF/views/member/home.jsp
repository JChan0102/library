<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/resources/common/memberHeader.jsp"></jsp:include>
<!-- 네비 사용 시작  -->
<jsp:include page="/resources/common/memberNavOpen.jsp"></jsp:include>

<h1>신간도서</h1>

<div style="width: 100%; margin: auto;">
	<div class="mySlides">
		<table style="width: 100%; border: none;">
			<tr>
				<td id="thumb1" width="20%"></td>
				<td id="thumb2" width="20%"></td>
				<td id="thumb3" width="20%"></td>
				<td id="thumb4" width="20%"></td>
				<td id="thumb5" width="20%"></td>
			</tr>
		</table>
		<table style="width: 100%; border: none;">
			<tr>
				<td>책 제목</td>
				<td>작가</td>
				<td>출판사</td>
			</tr>
			<tr>
				<td id="detail_name_1"></td>
				<td id="detail_writer_1"></td>
				<td id="detail_publisher_1"></td>
			</tr>
			<tr>
				<td id="detail_name_2"></td>
				<td id="detail_writer_2"></td>
				<td id="detail_publisher_2"></td>
			</tr>
			<tr>
				<td id="detail_name_3"></td>
				<td id="detail_writer_3"></td>
				<td id="detail_publisher_3"></td>
			</tr>
			<tr>
				<td id="detail_name_4"></td>
				<td id="detail_writer_4"></td>
				<td id="detail_publisher_4"></td>
			</tr>
			<tr>
				<td id="detail_name_5"></td>
				<td id="detail_writer_5"></td>
				<td id="detail_publisher_5"></td>
			</tr>
		</table>
	</div>
	<div class="mySlides">
		<table style="width: 100%; border: none;">
			<tr>
				<td id="thumb6" width="20%"></td>
				<td id="thumb7" width="20%"></td>
				<td id="thumb8" width="20%"></td>
				<td id="thumb9" width="20%"></td>
				<td id="thumb10" width="20%"></td>
			</tr>
		</table>
		<table style="width: 100%; border: none;">
			<tr>
				<td>책 제목</td>
				<td>작가</td>
				<td>출판사</td>
			</tr>
			<tr>
				<td id="detail_name_6"></td>
				<td id="detail_writer_6"></td>
				<td id="detail_publisher_6"></td>
			</tr>
			<tr>
				<td id="detail_name_7"></td>
				<td id="detail_writer_7"></td>
				<td id="detail_publisher_7"></td>
			</tr>
			<tr>
				<td id="detail_name_8"></td>
				<td id="detail_writer_8"></td>
				<td id="detail_publisher_8"></td>
			</tr>
			<tr>
				<td id="detail_name_9"></td>
				<td id="detail_writer_9"></td>
				<td id="detail_publisher_9"></td>
			</tr>
			<tr>
				<td id="detail_name_10"></td>
				<td id="detail_writer_10"></td>
				<td id="detail_publisher_10"></td>
			</tr>
		</table>
	</div>
</div>
<script>
$('calImgSize')val($('thumb1').width()); // 이미지 세로 크기 계산

</script>
<c:set var="count" value="0" scope="page" />
<c:forEach var="item" items="${bookList}">
	<c:set var="count" value="${count + 1}" scope="page" />
	<script>
	
		$('#thumb${count}')
				.html(
						'<img src="${item.book_image}" style="width: 100%; padding-right: 20px; text-align: center;" id="img${count}">');
		$('#img${count}').height($('thumb1').width()*1.5);
		$('#detail_name_${count}').html('${item.book_name}');
		$('#detail_writer_${count}').html('${item.book_writer}');
		$('#detail_publisher_${count}').html('${item.book_publisher}');
	</script>
</c:forEach>

<%-- <div style="width: 100%; margin: auto;">
	<c:forEach var="item" items="${bookList}">
		<div class="mySlides">
			<table style="width: 100%; border: none;">
				<tr>
					<td width="30%"><img src="${item.book_image}"
						style="width: 100%; padding-right: 20px; text-align: center;"></td>
					<td><span class="badge badge-warning">신간</span>
						<h2>${item.book_name}</h2>
						<h3>${item.book_writer}</h3>
						<h3>${item.book_publisher}</h3></td>
				</tr>
			</table>
		</div>
	</c:forEach>
</div> --%>

<script>
	var myIndex = 0;
	carousel();

	function carousel() {
		var i;
		var x = document.getElementsByClassName("mySlides");
		for (i = 0; i < x.length; i++) {
			x[i].style.display = "none";
		}
		myIndex++;
		if (myIndex > x.length) {
			myIndex = 1
		}
		x[myIndex - 1].style.display = "block";
		setTimeout(carousel, 4000); // Change image every 2 seconds
	}
</script>



<jsp:include page="/resources/common/memberNavClose.jsp"></jsp:include>
<!-- 네비 사용 끝 -->
<jsp:include page="/resources/common/memberFooter.jsp"></jsp:include>