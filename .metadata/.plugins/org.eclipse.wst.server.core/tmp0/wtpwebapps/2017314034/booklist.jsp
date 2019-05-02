<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ page import="my.model.Book, my.dao.BookDao, java.sql.*, my.util.*, java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
			Connection conn=ConnectionProvider.getConnection();
			List<Book> list=null;
        	try{
        		BookDao dao=new BookDao();
        		list=dao.selectList(conn);
        	}catch(SQLException e){
        		e.printStackTrace();
			}
		%>
		<c:set var="list" value="<%=list%>"/>
		책 리스트 <br>===================================================<br>
		<c:forEach var="b" items="${list}">
			<br>책아이디: ${b.bookId}<br>책제목: ${b.name}<br>책가격: ${b.price}<br>등록일자: ${b.registerTime}<br>
			-------------------------------------------------
		</c:forEach>
</body>
</html>