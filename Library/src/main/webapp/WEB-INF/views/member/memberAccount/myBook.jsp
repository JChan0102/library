<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/resources/common/memberHeader.jsp"></jsp:include>
<jsp:include page="/resources/common/memberNavOpen.jsp"></jsp:include>

<h1>~~ 빌 린 책 ~~</h1>

<c:choose>
    <c:when test="${empty mybookList}">

        <p>대출 중인 책이 없습니다.</p>

    </c:when>
    <c:otherwise>
        <table>
            <tr>
                <td>책 이름</td>
                <td>대출 일자</td>
                <td>반납 기한</td>
            </tr>
            <c:forEach var="item" items="${mybookList}">
                <tr>
                    <td>${item.book_name}</td>
                    <td>${item.borrowDate}</td>
                    <td>${item.returnDate}</td>
                </tr>
            </c:forEach>
        </table>
    </c:otherwise>

</c:choose>

<jsp:include page="/resources/common/memberNavClose.jsp"></jsp:include>
<jsp:include page="/resources/common/memberFooter.jsp"></jsp:include>