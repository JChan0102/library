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
            var amount = ${member.availAmount};
            var count = 0;

            console.log(amount);

            function test1() {
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
                            if(value.book_exist==1){
                                text= '<td><button onclick="submitt(this)" value="'+idcode+'">선택</button></td> </tr>'
                            }
                            $('#selectbook').append('<tr> <td>'
                                + value.book_code+'</td> <td>'
                                + value.book_name+'</td>'+text
                            );

                        });
                    },
                    error:function () {
                        alert(error);
                    }
                });

            }
            function submitt(obj) {
                console.log(obj);
                if(count<amount)
                {
                    $('#booksub').append('<input type="hidden" name="booklist['+count+']" value="'+obj.value+'" readonly >');
                    count++;
                    $('#selectbook').text("");
                }
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

