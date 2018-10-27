<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/resources/common/adminHeader.jsp"></jsp:include>
<jsp:include page="/resources/common/adminNavOpen.jsp"></jsp:include>
<!-- 이곳이 body -->
<h1>여기는 책을 진짜로 입력합니다.</h1>
<c:choose>
    <c:when test="${possible}">
        ${member.name}은 ${member.availAmount}만큼 대여 가능합니다.
        <form method="post" id="booksub">
            <input type="hidden" name="member.member_id" value="${member.member_id}">
            <input type="submit" value="대여">
        </form>

        <input type="text" id="booksearch" onblur="test1()">
        <script>
            function test1() {
                $.ajax({
                    url:'${pageContext.request.contextPath}/admin/borrow/bookSearch?bookname='+$('#booksearch').val(),
                    type:'get',
                    datatype:'json',
                    success:function (data) {
                        console.log(data.datatype);
                        console.log(data);

                    },
                    error:function () {
                        alert(error);
                    }
                });

            }
        </script>
    </c:when>
    <c:otherwise>
        ${member.name}은 현재 대여 불가 상태입니다.<br/>
        ${member.availAmount}<br/>
        ${member.possibledate}까지 대여 불가임!
    </c:otherwise>
</c:choose>

<jsp:include page="/resources/common/adminNavClose.jsp"></jsp:include>
<jsp:include page="/resources/common/adminFooter.jsp"></jsp:include>

