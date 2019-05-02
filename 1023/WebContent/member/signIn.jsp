<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	String userId=request.getParameter("id");
	String password=request.getParameter("password");
	String name=request.getParameter("name");
	int birth_year=Integer.parseInt(request.getParameter("birth_year"));
	int birth_month=Integer.parseInt(request.getParameter("birth_month"));
	int birth_day=Integer.parseInt(request.getParameter("birth_day"));
	java.util.Date birthDate=new java.util.Date();
	birthDate.setYear(birth_year-1900);
	birthDate.setMonth(birth_month-1);
	birthDate.setDate(birth_day);
	Member member=new Member(userId, password, name, birthDate);
	Connection conn=ConnectionProvider.getConnection();
	try{
		MemberDao dao=new MemberDao();
		dao.insert(conn, member);
	}catch(SQLException e){
	}finally{
		JdbcUtil.close(conn);
	}
%>
회원가입이 완료되었습니다!!
</body>
</html>