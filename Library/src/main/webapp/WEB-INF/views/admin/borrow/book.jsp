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
        <p id="countt"></p>
        <input type="text" id="booksearch" onkeyup="test1()">
        <table>
            <tr>
            <td>
                북코드
            </td>
                <td>
                    책이름
                </td>
                <td>대여 선택</td>
            </tr>
            <tbody id="selectbook">


            </tbody>
        </table>
        <script>
            var a = false;
            var amount = ${member.availAmount};
            var count = 0;

            console.log(amount);

            function test1() {
                if(!a){
                    a=true;
                $('#selectbook').text("");
                $.ajax({
                    url:'${pageContext.request.contextPath}/admin/borrow/bookSearch?bookname='+$('#booksearch').val(),
                    type:'get',
                    datatype:'json',
                    success:function (data) {
                        $(data).each(function (key,value) {
                            console.log(value);
                            var text='<td>대출중</td></tr>';
                            var idcode= value.book_code;
                            var a = $('.booklist');
                            if(value.book_exist==1){
                                text= '<td><button onclick="submitt(this)" name="'+value.book_name+'" value="'+idcode+'">선택</button></td> </tr>'
                                $.each(a,function (index, item) {
                                    if(item.value==value.book_code){
                                        text='<td><button onclick="submitt(this)" value="'+idcode+'" disabled>선택됨</button></td> </tr>'
                                    }
                                });
                               }
                            $('#selectbook').append('<tr> <td>'
                                + value.book_code+'</td> <td>'
                                + value.book_name+'</td>'+text
                            );

                        });
                    a=false;
                    },
                    error:function () {
                        alert(error);
                    }
                });
                }
            }
            function submitt(obj) {
                console.log(obj);
                if(count<amount)
                {
                    $('#countt').text("");
                    $('#booksub').append('<p>'+obj.name+'</p>' +
                        '<input type="hidden" class="booklist" name="booklist['+count+']" value="'+obj.value+'" readonly >');
                    count++;
                    $('#countt').append('현재 '+count+'권 등록했습니다.');
                    $('#selectbook').text("");
                }
            }
        </script>
    </c:when>
    <c:otherwise>
        ${member.name}은 현재 대여 불가 상태입니다.<br/>
        <c:if test="${member.availAmount==0}">
            대여가능 권수가 0권이므로 대여가 불가합니다.
        </c:if>
        <c:if test="${member.possibledate ne 'POSSIBLE'}">
            연체 패널티로 인해 ${member.possibledate}까지 대여 불가합니다!
        </c:if>
    </c:otherwise>
</c:choose>

<jsp:include page="/resources/common/adminNavClose.jsp"></jsp:include>
<jsp:include page="/resources/common/adminFooter.jsp"></jsp:include>

