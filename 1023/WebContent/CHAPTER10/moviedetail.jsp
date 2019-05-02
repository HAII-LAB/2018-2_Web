<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ page import="my.model.*, my.dao.*, java.sql.*, my.util.*, java.util.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>고객등록 신청서</title>
<link href="design.css" rel="stylesheet" type="text/css">
<style type="text/css">
.bigimage {
	float: left;
	height: 370px;
	width: 250px;
	margin-top: 30px;
	margin-left: 30px;
}
.itemdetail {
	float: left;
	height: 370px;
	width: 250px;
	margin-top: 30px;
	margin-left: 30px;
	padding-top: 30px;
	padding-left: 30px;
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
            	<li><a href="#">회원가입</a></li>
                <li><a href="#">아이디찾기</a></li>
                <li><a href="#">비번찾기</a></li>
                <li><a href="#">마이페이지</a></li>
                <li><a href="#">1:1문의하기</a></li>
                <li><a href="#">질문내역</a></li>
                <li><a href="#">후기내역</a></li>
                <li><a href="#">쿠폰내역</a></li>
                <li><a href="#">적립금내역</a></li>
            </ul>
        
        
        </div>
        <div class="rightcon">
        <%
        	int movieId=Integer.parseInt(request.getParameter("movieId"));
        	Connection conn=ConnectionProvider.getConnection();
        	Movie movie=null;
        	try{
        		MovieDao dao=new MovieDao();
        		dao.updateAccessCount(conn, movieId);
        		movie=dao.selectById(conn, movieId);
        	}catch(SQLException e){
        	}finally{
        		JdbcUtil.close(conn);
        	}
        %>
        <c:set var="movie" value="<%=movie%>"/>
                <img src="images/title1.jpg" width="464" height="58" alt="고객등록">
                <div class="tablestyle">
                  <div class="bigimage"><img src="/1023/movie/big_${movie.movieImage}"></div>
                  <div class="itemdetail">
                      <p align="left">영화명: 
                        <label for="movieName"></label>
                        <input name="title" type="text" value="${movie.title}">
                      </p>
                      <p align="left">제작사: 
                        <label for="maker"></label>
                        <input type="text" name="maker" value="${movie.maker}">
                      </p>
                      <p align="left">가격: 
                        <label for="price"></label>
                        <input type="text" name="price" id="price" value="${movie.price}">
                      </p>
                      <p align="left">수량: 
                        <label for="amount"></label>
                        <select name="amount" id="amount">
                          <option value="1">1</option>
                          <option value="2">2</option>
                          <option value="3">3</option>
                          <option value="4">4</option>
                        </select>
                      </p>
                      <input type="text" name="movieId" id="movieId" value="${movie.movieId}">
                      <p align="left">
                        <input type="button" onclick="purchase()" value="구매">
                        <input type="button" onclick="cartpurchase()" value="카트담기">
                        <input type="reset" name="cancel" id="cancel" value="취소">
                      </p>
                  </div>
                </div>
        </div>
    </div>
<script type="text/javascript">
	function purchase(){
		var movieId=document.getElementById("movieId").value.trim();
		var amount=document.getElementById("amount").value.trim();
		var price=document.getElementById("price").value.trim();
		location.href='moviepurchase.jsp?movieId='+movieId+'&amount='+amount+'&price='+price;
	}
	function cartpurchase(){
		var movieId=document.getElementById("movieId").value.trim();
		var amount=document.getElementById("amount").value.trim();
		location.href='cart.jsp?movieId='+movieId+'&amount='+amount;
	}
</script>
</body>
</html>
