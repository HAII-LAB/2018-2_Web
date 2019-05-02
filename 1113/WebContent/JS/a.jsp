<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String userId="sallyh";
	String userName="하성민";
%>
<select name="member" id="member">
	<option value="1">1
	<option value="2">2
	<option value="3">3
	<option value="4">4
</select>

<input type="button" onclick="purchase()" value="구매">
<input type="button" onclick="sales('<%=userName%>')" value="판매">
<script type="text/javascript">
function purchase(){
	var member=document.getElementById("member").value.trim();
	var id='<%=userId%>';
	location.href='b.jsp?member='+member+'&userId='+id;
}
function sales(name){
	var member=document.getElementById("member").value.trim();
	var id='<%=userId%>';
	location.href='c.jsp?member='+member+'&userId='+id+'&userName='+name;
}
</script>
</body>
</html>