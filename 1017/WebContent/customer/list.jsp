<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ page import="my.model.Customer, my.dao.CustomerDao, java.sql.*, my.util.*, java.util.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>고객등록 신청서</title>
<link href="design.css" rel="stylesheet" type="text/css">
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
                <li><a href="#">쿠폰내격</a></li>
                <li><a href="#">적립금내역</a></li>
            </ul>
		</div>
		<div class="rightcon">
			<img src="images/title1.jpg" width="464" height="58" alt="고객등록">
			<div class="tablestyle">
		<%
			Connection conn=ConnectionProvider.getConnection();
			List<Customer> list=null;
        	try{
        		CustomerDao dao=new CustomerDao();
        		list=dao.selectList(conn);
        	}catch(SQLException e){
        		e.printStackTrace();
			}
		%>
		<c:set var="list" value="<%=list%>"/>
		사용자 정보 리스트 <br>===================================================<br>
		<c:forEach var="cus" items="${list}">
			${cus.customerId}:${cus.userId}:${cus.password}<br>
		</c:forEach>
			</div>
		</div>
	</div>
</body>
</html>
