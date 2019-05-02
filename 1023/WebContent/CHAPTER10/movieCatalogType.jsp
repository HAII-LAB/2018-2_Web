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
            	<li><a href="cartList.jsp">카트관리</a></li>
                <li><a href="movielist.jsp">카트담기</a></li>
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
                <img src="images/title2.jpg" width="464" height="58" alt="고객등록">
                <div class="tablestyle">
          <%
            int type=Integer.parseInt(request.getParameter("type"));
          	String typeStr = "";
          	if(type==1){
          		typeStr="SF";
          	}else if(type==2){
          		typeStr="코미디";
          	}else if(type==3){
          		typeStr="액션";
          	}else if(type==4){
          		typeStr="호러";
          	}else{
          	}
			Connection conn=ConnectionProvider.getConnection();
            List<Movie> movieList=null;
            String userId=(String)session.getAttribute("UI");
            Member member=null;
            try{
            	MovieDao dao=new MovieDao();
               	movieList=dao.selectListType(conn, typeStr);
               	MemberDao mDao=new MemberDao();
               	member=mDao.selectById(conn, userId);
           	}catch(SQLException e){    		
          	}finally{
          		JdbcUtil.close(conn);
          	}
        %>
        <c:set var="list" value="${movieList}"/>
        <c:forEach var="movie" items="${list}">
        	<div class="item">
        	<a href="moviedetail.jsp?movieId=${movie.movieId}">
        		<img src="/1023/movie/${movie.movieImage}">
        	</a>
        	</div>  
        </c:forEach>
            </div>
        </div>
	</div>
</body>
</html>