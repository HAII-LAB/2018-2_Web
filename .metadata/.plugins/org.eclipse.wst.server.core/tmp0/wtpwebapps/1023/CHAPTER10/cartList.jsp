<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ page import="my.model.*, my.dao.*, java.sql.*, my.util.*, java.util.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>1:1문의하기</title>
<link href="qnadesign.css" rel="stylesheet" type="text/css">
<style type="text/css">
#item {
	height: 288px;
	width: 198px;
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
          <p><img src="images/title2.jpg" width="464" height="58" alt="고객등록"></p>
          <p>&nbsp;</p>
          <div align="center">
          <div class="tablestyle">
          <form action="cartRemove.jsp" method="post">
            <table width="600" border="1" cellpadding="3" cellspacing="0" id="registerform">
              <tr>
                <th scope="col">영화이미지</th>
                <th scope="col">영화타이틀</th>
                <th scope="col">구매개수</th>
                <th scope="col">선택</th>
              </tr>
            <%
          		Connection conn=ConnectionProvider.getConnection();
          		int movieCount=(Integer)session.getAttribute("movieCount");
          		try{
          		for(int i=1; i<=movieCount; i++){
          			Cart cart=(Cart)session.getAttribute("movie"+i);
          			int movieId=cart.getMovieId();
          			int amount=cart.getAmount();
          			MovieDao dao=new MovieDao();
          			Movie movie=dao.selectById(conn,movieId);
          	%>
          	<c:set var="movie" value="<%=movie%>"/>
              <tr>
                <td><img src="/1023/movie/small_${movie.movieImage}"></td>
                <td>${movie.title}</td>
                <td><%=amount%></td>
                <td><input type="checkbox" name="cartSelect" id="cartSelect">선택삭제</td>
              </tr>
              <% }
          		} catch(SQLException e){
          		}
				%>
            </table>
          <p>&nbsp;</p>
          <p>
                <input type="submit" name="btn" id="btn" value="삭제">
          </p>
          </form>
        </div>
    </div>
</div>

</body>
</html>
