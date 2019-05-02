<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>학식 게시판</title>
<link href="boardlayout.css" rel="stylesheet" type="text/css" />
<style type="text/css">
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
	width: 500px;
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
.logo {
	height: 71px;
	width: 230px;
	margin-top: 40px;
	float: left;
}
</style>
</head>
<body>
<div id="wrap">
  <div id="page_main"><div id="apDiv1">
  <form id="form1" name="form1" method="post" action="login.do">
    <c:if test="${errors.idOrPwNotMatch}">
	아이디와 암호가 일치하지 않습니다.
	</c:if>
    <p align="center">&nbsp;</p>
    <p align="center"><strong>회원 로그인 </strong> </p>
    <p align="center">아이디 :  &nbsp;    
      <label for="id"></label>
      <input type="text" name="id" value="${param.id}" />
      <c:if test="${errors.id}">ID를 입력하세요.</c:if>
</p>
    <p align="center">비밀번호 :
  <label for="password"></label>
      <input type="password" name="password" />
      <c:if test="${errors.password}">암호를 입력하세요.</c:if>
    </p>
    <p align="center">
      <input type="submit" value=" 로그인"/>
    </p>
  </form>
</div>
</div>
</div>
</body>
</html>
