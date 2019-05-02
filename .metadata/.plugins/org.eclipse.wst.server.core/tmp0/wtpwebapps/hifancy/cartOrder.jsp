<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ page import="my.model.*, my.dao.*, java.sql.*, my.util.*, java.util.*" %>
<%@ page import="java.net.URLEncoder" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Connection conn=ConnectionProvider.getConnection();
	int payment=0;
	int delFee=0;
	String cartId="";
	String orderContent="";
	String array=request.getParameter("array");
	String[] arrays=array.split(":");
	try{
		for(int i=0; i<arrays.length;i++){
			Cart cart=new Cart();
			CartDao dao=new CartDao();
			cart=dao.selectById(conn, Integer.parseInt(arrays[i]));
			payment+=cart.getPayment();
			orderContent+=URLEncoder.encode(cart.getProductname(),"utf-8")+":";
			cartId+=cart.getCartId()+":";
		}
	}catch(SQLException e){
	}
	if(payment>=30000){
		delFee=0;
	}else{
		delFee=3000;
	}
	int total=payment+delFee;
	response.sendRedirect("productCartList.jsp?payment="+payment+"&delFee="+delFee+"&total="+total+"&orderContent="+orderContent+"&cartId="+cartId);
%>
</body>
</html>