<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ page import="my.model.*, my.dao.*, java.sql.*, my.util.*, java.util.*" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.net.URLEncoder" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>하이팬시::주문페이지</title>
</head>
<body>
	<%
	Connection conn=ConnectionProvider.getConnection();
	String userId=(String)session.getAttribute("UI");
	request.setCharacterEncoding("utf-8");
	String orderContent=request.getParameter("orderContent");
	int payment=Integer.parseInt(request.getParameter("total"));
	Date date=new Date();
	String purchaseDate=date.toString();
	String[] contents=orderContent.split(":");
	String content="";
		for(int i=0; i<contents.length;i++){
			if(i!=contents.length-1){
			    content+=contents[i]+", ";
			}else{
				content+=contents[i]+" ";
			}
		}
	Purchase purchase=new Purchase(userId, content, payment, new java.util.Date());
	try{
		PurchaseDao dao= new PurchaseDao();
		dao.insert(conn, purchase);
	}catch(SQLException e){
		
	}finally{
		JdbcUtil.close(conn);
	}
	response.sendRedirect("productPurchasePage.jsp?content="+URLEncoder.encode(content,"utf-8")+"&payment="+payment+"&purchaseDate"+purchaseDate);
	%>
</body>
</html>