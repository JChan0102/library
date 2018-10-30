<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/resources/common/adminHeader.jsp"></jsp:include>
<jsp:include page="/resources/common/adminNavOpen.jsp"></jsp:include>
<!-- 이곳이 body -->
<h1>회원 검색(폰트 먹이는법 모르겟읍니다)</h1>

<form method="post" >
    <input type="text" name="member_id" class="inputtext width_400">
    <button type="submit" class="color3_btn custom_btn"> <i class="fas fa-search"></i></button>
</form>
<c:if test="${!(empty memberList)}">
    <table class="jc_table width_486">
        <tr>
            <th> id</th>

        </tr>
        <c:forEach var="member" items="${memberList}">
            <tr>
                <td>
                    <a class="tag_a" href="book?id=${member.member_id}">${member.member_id}</a>
                </td>
            </tr>
        </c:forEach>
    </table>

</c:if>
<jsp:include page="/resources/common/adminNavClose.jsp"></jsp:include>
<jsp:include page="/resources/common/adminFooter.jsp"></jsp:include>

