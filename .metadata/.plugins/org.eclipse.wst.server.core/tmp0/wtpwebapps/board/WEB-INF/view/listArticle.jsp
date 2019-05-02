<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
  <div id="page_header">
  <div class="header_logo">게시판</div>
  </div>
  <div id="page_main">
    <div class="write"><a href="write.do">게시판 글쓰기</a></div>
    <table width="1025" height="120" border="1" cellpadding="3">
  <tr bgcolor="#FFCCCC">
    <td width="98" height="56">번호</td>
    <td width="699">제목</td>
    <td width="88">작성자</td>
    <td width="96">조회수</td>
  </tr>
<c:if test="${articlePage.hasNoArticles()}">
  <tr>
  <td colspan="4" bgcolor="#FFFFFF">게시글이 없습니다.</td>
  </tr>
  </c:if>
  <c:forEach var="article" items="${articlePage.content}">
  	<tr>
    	<td height="54" bgcolor="#FFFFFF">${article.number}</td>
    	<td bgcolor="#FFFFFF"><a href="read.do?no=${article.number}&pageNo=${articlePage.currentPage}">
    		<c:out value="${article.title}"/>
			</a>
    	</td>
    	<td bgcolor="#FFFFFF">${article.writer.name}</td>
    	<td bgcolor="#FFFFFF">${article.readCount}</td>
  	</tr>
  	</c:forEach>
	<c:if test="${articlePage.hasArticles()}">
		<tr>
			<td colspan="4" height="54" bgcolor="#FFFFFF">
				<c:if test="${articlePage.startPage > 5}"><a href="list.do?pageNo=${articlePage.startPage - 5}">[이전]</a>
				</c:if>
				<c:forEach var="pNo" 
					   begin="${articlePage.startPage}" 
					   end="${articlePage.endPage}">
				<a href="list.do?pageNo=${pNo}">[${pNo}]</a>
				</c:forEach>
				<c:if test="${articlePage.endPage < articlePage.totalPages}">
				<a href="list.do?pageNo=${articlePage.startPage + 5}">[다음]</a>
				</c:if>
			</td>
  	</tr>
  	</c:if>
</table>
  </div>
</div>
</body>
</html>
