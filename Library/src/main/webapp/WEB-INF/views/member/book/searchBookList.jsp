<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/resources/common/memberHeader.jsp"></jsp:include>
<!-- 네비 사용 시작  -->
<jsp:include page="/resources/common/memberNavOpen.jsp"></jsp:include>

<h3>"${keyword}"의 검색결과</h3>
<form id="bookOrder" name="bookOrder">
   <select  id="searchWord" name="searchWord">
         <option value="title" seleted>책제목</option>
         <option value="author">작가명</option>
         <option value="publisher">출판사</option>
         <option value="isbn">isbn번호</option>
         <option value="bookcode">책코드</option>
      </select>
   <select name="orderBy" id="orderBy">
      <option value="book_time" seleted>최신순</option>
         <option value="book_name">책제목</option>
         <option value="book_writer">작가명</option>
         <option value="book_publisher">출판사</option>
   </select>
   <select name="listCnt" id="listCnt">
      <option value="5" seleted>5개씩</option>
         <option value="10">10개씩</option>
         <option value="15">15개씩</option>
         <option value="20">20개씩</option>
   </select>
   <input type="text" name="keyword" id="keyword" value="${keyword}">
   <input type="button" onclick="bookOrderFn()" value="검색">
</form>
<hr>
   <c:if test="${bookList.isEmpty()}">
      <h3>해당결과글 찾을 수 없습니다.</h3>
   </c:if>
   <c:if test="${!bookList.isEmpty()}">
      <table>
         <tbody id="bookListView">
         <c:forEach var="item" items="${bookList}">
            <form action="${pageContext.request.contextPath}/member/book/bookView" method="post">
               <tr><td colspan="5" width="100%" bgcolor="pink"></td></tr>
               <tr>
                  <td rowspan="2"><img src="${item.book_image}" alt="이미지 없음"> </td>
                  <td rowspan="3" width="800">
                     ${item.book_name}
                  </td>
                  <td width="200">
                     ${item.book_writer}
                  </td>
                  <td width="300">
                     ${item.book_code}
                  </td>
                  <td width="200">
                     <input type="submit" value="상세보기">
                  </td>
               </tr>
               <tr>
                  
                  <td width="200">
                     ${item.book_publisher}
                  </td>
                  <td width="200">
                     ${item.book_isbn}
                     <input type="hidden" name="book_isbn" value="${item.book_isbn}">
                  </td>
               </tr>
               <tr>
                  <td colspan="5" width="100%" bgcolor="pink"></td>
               </tr>
            </form>
         </c:forEach>
         </tbody>
      </table>
   </c:if>

<script>
   function bookOrderFn(){
      var value = $('#bookOrder').serialize();
      coonsole.log(value);
      $.ajax({
         url:'${pageContext.request.contextPath}/member/book/bookOrderBy',
         type:'POST',
         data: value,
         contentType: 'application/x-www-form-urlencoded; charset=UTF-8', 
         dataType: 'json',
         success:function(data){
            console.log(data);
            var bookListView = '';
            var url = '${pageContext.request.contextPath}/member/book/bookView';
            $.each(data,function(index,item){
               
               
               bookListView += '<tr><td colspan="5" width="100%" bgcolor="pink"></td></tr>';
               bookListView += '<tr><td rowspan="2"><img src="'+item.book_image+'" alt="이미지 없음"> </td>';
               bookListView += '<td rowspan="3" width="800">'+item.book_name+'</td>';
               bookListView +=  '<td width="200">'+item.book_writer+'</td>';
               bookListView +=  '<td width="300">'+item.book_code+'</td>';
               bookListView +=  '<td width="200"><a href="'+url+'?book_isbn='+item.book_isbn+'"><input type="button" name="book_isbn" value="상세보기"></a></td></tr>';
               bookListView +=  '<tr><td width="200">'+item.book_publisher+'</td>';
               bookListView +=  '<td width="200">'+item.book_isbn+'</td>';
               bookListView +=  '</tr>'
               bookListView +=  '<tr><td colspan="5" width="100%" bgcolor="pink"></td></tr>';
               
            });
            $('#bookListView').html(bookListView);
         },
         error:function(){
            alert("오류발생");
         }
      });
   }
   
</script>
<jsp:include page="/resources/common/memberNavClose.jsp"></jsp:include>
<!-- 네비 사용 끝 -->
<jsp:include page="/resources/common/memberFooter.jsp"></jsp:include>