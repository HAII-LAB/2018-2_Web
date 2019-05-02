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
	Connection conn=ConnectionProvider.getConnection();
	String array=request.getParameter("array");
	String[] arrays=array.split(":");
	try {
	for(int i=0; i<arrays.length; i++) {
	   CartDao dao=new CartDao();
	   int cartId=Integer.parseInt(arrays[i]);
		dao.deleteById(conn, cartId);
   }
  }
  catch(Exception ex) {
   out.println("exception occured");
  }finally{
		JdbcUtil.close(conn);
	}
	response.sendRedirect("productCartList.jsp");
 %>

</body>
</html>