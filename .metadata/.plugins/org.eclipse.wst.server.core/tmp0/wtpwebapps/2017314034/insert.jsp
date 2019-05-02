<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ page import="my.model.*, my.dao.*, java.sql.*, my.util.*, java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
        <%
        	request.setCharacterEncoding("utf-8");
        	String name=request.getParameter("name");
        	int price=Integer.parseInt(request.getParameter("price"));
        	Book book=new Book(name, price, new java.util.Date());
        	Connection conn=ConnectionProvider.getConnection();
        	Movie movie=null;
        	try{
        		BookDao dao=new BookDao();
        		dao.insert(conn, book);
        	}catch(SQLException e){
        	}
        %>
        입력완료
</body>
</html>