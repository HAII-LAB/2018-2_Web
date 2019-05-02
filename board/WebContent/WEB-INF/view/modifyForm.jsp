<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>게시글 수정하기</title>
<link href="boardlayout.css" rel="stylesheet" type="text/css" />
<style type="text/css">
#apDiv2 {
	position: absolute;
	left: 241px;
	top: 323px;
	width: 766px;
	height: 515px;
	z-index: 1;
	visibility: visible;
	border: medium solid #000;
	font-size: 24px;
	padding-left: 40px;
}
@charset "utf-8";
#wrap {
	height: auto;
	width: 1024px;
	margin-left: 100px;
	background-color: #FFF;
	background-image: none;
}
#page_header {
	height: 140px;
	width: 1024px;
	border: thick solid #000;
}
.header_logo {
	height: 100px;
	width: 600px;
	margin-top: 40px;
	font-size: 36pt;
	font-family: "함초롬돋움";
	font-style: normal;
	font-weight: bold;
	text-align: center;
	background-color: #FFF;
	float: right;
	margin-right: 190px;
}
#page_main {
	height: 800px;
	width: 1024px;
}
#page_main table {
	background-color: #FCC;
	border: thin solid #000;
}
#page_main table {
	border: thin solid #000;
}
.write {
	height: 40px;
	width: auto;
	font-family: "함초롬돋움";
	font-size: 14pt;
}
#login {
	height: 500px;
	width: 600px;
	margin-top: 70px;
	margin-left: 200px;
	border: thin none #FFF;
}
#apDiv1 {
	position: absolute;
	left: 407px;
	top: 240px;
	width: 415px;
	height: 288px;
	z-index: 1;
	border: medium solid #000;
	background-color: #FFF;
}

.loginlogo {
	height: 50px;
	width: 100px;
	float: left;
}
#logo {
	height: 71px;
	width: 230px;
	margin-top: 40px;
	float: left;
}
</style>
</head>
<body>
<div id="wrap">
  <div id="page_main"><div id="apDiv2">
  <p align="center"><strong>게시글 수정하기</strong></p>
  <form action="modify.do" method="post">
	<input type="hidden" name="no" value="${modReq.articleNumber}">
    <p align="center">
    <p align="left"><strong>번호 :</strong>${modReq.articleNumber}         
<label for="title">
  <br />
  <br />
</label>
<strong>제목</strong>
    <p align="left">
      <input type="text" name="title" value="${modReq.title}">
	  <c:if test="${errors.title}">제목을 입력하세요.</c:if>
  </p>
    <p align="center">&nbsp;</p>
    <p align="left"><strong>내용</strong></p>
    <p align="left">
      <label for="content"></label>
      <textarea name="content" cols="45" rows="5">${modReq.content}</textarea>
    </p>
    <p align="center">
      <input type="submit" value="글 수정" />
    </p>
  </form></div></div>
</div>
</body>
</html>
