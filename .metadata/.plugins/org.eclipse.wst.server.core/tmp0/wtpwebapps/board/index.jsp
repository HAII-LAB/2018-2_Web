<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="u" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html>
<head>
<title>회원제 게시판 예제</title>
</head>
<body>
<%-- 
<c:if test="${! empty authUser}">
	${authUser.name}님, 안녕하세요.
	<a href="logout.do">[로그아웃하기]</a>
	<a href="changePwd.do">[암호변경하기]</a>
</c:if>
<c:if test="${empty authUser}">
	<a href="join.do">[회원가입하기]</a>
	<a href="login.do">[로그인하기]</a>
</c:if>
--%>
${ctxPath = pageContext.request.contextPath ; ''}
<u:isLogin>
	CT: ${authUser.name}님, 안녕하세요. <br>
	<a href="logout.do">[로그아웃하기]</a> <br>
	<a href="${ctxPath}/article/write.do">[글쓰기]</a> <br>
	<a href="${ctxPath}/article/list.do">[글목록보기]</a> <br>
</u:isLogin>
<u:notLogin>
	 게시판  <br> 
	<a href="join.do">[회원가입하기]</a> <br>
	<a href="login.do">[로그인하기]</a> <br>
</u:notLogin>
<br/>
</body>
</html>