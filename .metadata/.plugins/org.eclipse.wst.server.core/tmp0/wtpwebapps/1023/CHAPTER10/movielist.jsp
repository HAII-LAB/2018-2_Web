<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ page import="my.model.*, my.dao.*, java.sql.*, my.util.*, java.util.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>1:1문의하기</title>
<link href="design.css" rel="stylesheet" type="text/css">
<style type="text/css">
.item {
	height: 288px;
	width: 198px;
	margin-right: 20px;
	float: left;
}
</style>
</head>
<body>
  <div class="page_header">
    	<div class="toplogo"><a href="#"><img src="images/top_logo.jpg" width="276" height="40" alt="beautifullife"></a>
		</div>
        <div class="topnav">
        	<ul>
            	<li><a href="#"><img src="images/top_menu1.jpg" width="72" height="24" alt="ArtStory"></a></li>
                <li><a href="#"><img src="images/top_menu2.jpg" width="76" height="24" alt="ArtStory"></a></li>
                <li><a href="#"><img src="images/top_menu3.jpg" width="64" height="24" alt="ArtStory"></a></li>
                <li><a href="#"><img src="images/top_menu4.jpg" width="134" height="24" alt="ArtStory"></a></li>
                <li><a href="#"><img src="images/top_menu5.jpg" width="99" height="24" alt="ArtStory"></a></li>
                <li><a href="#"><img src="images/top_menu6.jpg" width="52" height="24" alt="ArtStory"></a></li>
            </ul>
        </div>
  </div>
     <div class="page_subimg">
     	<div class="subimgline"></div>
        <div class="subimg">
        	<div id="apDivSubimg"></div>
       </div>
     </div>
  <div class="page_content">
    	<div class="leftmenu">
   	    	<img src="images/left_title.jpg" width="152" height="24" alt="membership"> 
        	<ul>
            	<li></li>
            	<li><a href="#">고객등록</a></li>
                <li><a href="#">아이디찾기</a></li>
                <li><a href="#">비번찾기</a></li>
                <li><a href="#">마이페이지</a></li>
                <li><a href="#">1:1문의하기</a></li>
                <li><a href="#">질문내역</a></li>
                <li><a href="#">후기내역</a></li>
                <li><a href="#">쿠폰내격</a></li>
                <li><a href="#">적립금내역</a></li>
            </ul>
        </div>
        <div class="rightcon">
                <img src="images/title2.jpg" width="464" height="58" alt="고객등록">
                <div class="tablestyle">
       <%
       		request.setCharacterEncoding("utf-8");
       		String keyField=request.getParameter("keyField");
       		String keyword=request.getParameter("keyword");
       		String userId=(String)session.getAttribute("UI");
			Connection conn=ConnectionProvider.getConnection();
            List<Movie> movieList=null;
            try{
            	MovieDao dao=new MovieDao();
               	movieList=dao.selectList(conn, keyField, keyword);
           	}catch(SQLException e){    		
          	}
        %>
        <c:set var="list" value="<%=movieList%>"/>
        <c:set var="userId" value="<%=userId%>"/>
        <table width="500" border="1" cellpadding="3" cellspacing="0" id="registerform">
                      <tr>
                        <th scope="col">썸네일</th>
                        <th scope="col">타이틀</th>
                        <th scope="col">제작사</th>
                        <th scope="col">가격</th>
                    <c:if test="${userId=='admin'}">
                    	<th scope="col">수정</th>
                    	<th scope="col">삭제</th>
                    </c:if>
                     <c:if test="${userId!='admin'}">
                    	<th scope="col">카트담기</th>
                    	<th scope="col">구매</th>
                    </c:if>
                      </tr>
        <c:forEach var="movie" items="${list}">
        	<tr>
            	<td><img src="/1023/thumb/small_${movie.movieImage}"></td>
                <td>${movie.title}</td>
                <td>${movie.maker}</td>
                <td>${movie.price}</td>
            <c:if test="${userId=='admin'}">
            	<td><a href="movieUpdateForm.jsp?movieId=${movie.movieId}">수정</a></td>
                <td><a href="movieDelete.jsp?movieId=${movie.movieId}">삭제</a></td>
            </c:if>
            <c:if test="${userId!='admin'}">
                <td><a href="moviecart.jsp?movieId=${movie.movieId}">카트담기</a></td>
                <td><a href="moviedetail.jsp?movieId=${movie.movieId}">구매</a></td>
            </c:if>
                </tr>
        </c:forEach>
        </table>
        <form name="search" method="post">
        	<select name="keyField">
        		<option value="0">---선택---</option>
        		<option value="title">영화제목</option>
        		<option value="maker">제작사</option>
        	</select>
        	<input type="text" name="keyword"/>
        	<input type="button" value="검색" onclick="searchCheck(form)"/>
        </form>
            </div>
        </div>
	</div>
<script type="text/javascript">
function searchCheck(frm){
	if(frm.keyword.value==""){
		alert("검색 단어를 입력하세요");
		frm.keyword.focus();
		return;
	}
	frm.submit();
}
</script>
</body>
</html>