<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="u" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>게시판</title>
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
  <div id="page_main">
    <div align="center">
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p><strong>게시글 보기 </strong></p>
      <table width="672" height="300" border="1" cellpadding="3" cellspacing="0">
        <tr>
          <th width="144" height="37" scope="row">번호</th>
          <td width="508" bgcolor="#FFFFFF">${articleData.article.number}</td>
        </tr>
        <tr>
          <th height="41" scope="row">작성자</th>
          <td bgcolor="#FFFFFF">${articleData.article.writer.name}</td>
        </tr>
        <tr>
          <th height="47" scope="row">제목 </th>
          <td bgcolor="#FFFFFF"><c:out value='${articleData.article.title}' /></td>
        </tr>
        <tr>
          <th height="141" scope="row">내용</th>
          <td bgcolor="#FFFFFF"><u:pre value='${articleData.content}'/></td>
        </tr>
        <tr>
          <th height="30" colspan="2" scope="row"><c:set var="pageNo" value="${empty param.pageNo ? '1' : param.pageNo}" />
		<a href="list.do?pageNo=${pageNo}">[목록]</a>
		<c:if test="${authUser.id == articleData.article.writer.id}">
		<a href="modify.do?no=${articleData.article.number}">[게시글수정]</a>
		<a href="delete.do?no=${articleData.article.number}">[게시글삭제]</a>
		</c:if></th>
        </tr>
      </table>
    </div>
  </div>
</div>
</body>
</html>
