<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ page import="my.model.*, my.dao.*, java.sql.*, my.util.*, java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>하이팬시 - No.1 문구용품점</title>
<link href="hifancy.css" rel="stylesheet" type="text/css" />
<style type="text/css">
a:link {
   color: #607D82;
   text-decoration: none;
}
a:visited {
   text-decoration: none;
   color: #607D82;
}
a:hover {
   text-decoration: underline;
   color: #607D82;
}
a:active {
   text-decoration: none;
   color: #607D82;
}
</style>
<script type="text/javascript">
function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}
function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}
</script>
</head>
<body onload="MM_preloadImages('images/topmenu_01.png','images/topmenu_02.png','images/topmenu_03.png','images/topmenu_04.png','images/topmenu_05.png','images/topmenu_06.png')">
    <div id="pageheader">
      <div id="toplogo"><a href="mainpage.jsp"><img src="images/pageheader_01.png" width="248" height="98" /></a></div>
      <div id="searchinputcover">
        <table width="800" height="52" cellpadding="3" cellspacing="0">
          <tr>
            <td width="910"><span> <input type="text" id="search" name="search" class="searchinput"/></span></td>
            <td width="52" align="center"><input type="image" src="images/search.png" width="30" height="30" onclick="searchGo()"/></td>
          </tr>
        </table></div>
      <%
         String userId = (String)session.getAttribute("UI");
      %>
      
      <div id="login_join">
         <c:set var="userId" value="<%=userId%>"/>
         <c:if test="${userId==null}">
           <div id="login"><a href="login_Form.jsp">로그인</a></div> 
        </c:if>
        <c:if test="${userId!=null}"> 
           <div id="login"><a href="logout.jsp">로그아웃</a></div>
        </c:if>  
        <div id="join"><a href="signin_Form.jsp">회원가입</a></div>
      </div>
      <div id="topmenu"><a href="productCatalogType.jsp?type=1" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image16','','images/topmenu_01.png',1)"><img src="images/topmenugray_01.png" width="144" height="62" id="Image16" /></a><a href="productCatalogType.jsp?type=2" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image17','','images/topmenu_02.png',1)"><img src="images/topmenugray_02.png" width="162" height="62" id="Image17" /></a><a href="productCatalogType.jsp?type=3" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image18','','images/topmenu_03.png',1)"><img src="images/topmenugray_03.png" width="177" height="62" id="Image18" /></a><a href="productCatalogType.jsp?type=4" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image19','','images/topmenu_04.png',1)"><img src="images/topmenugray_04.png" width="180" height="62" id="Image19" /></a><a href="#" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image20','','images/topmenu_05.png',1)"><img src="images/topmenugray_05.png" width="159" height="62" id="Image20" /></a><a href="#" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image21','','images/topmenu_06.png',1)"><img src="images/topmenugray_06.png" width="161" height="62" id="Image21" /></a></div>
      <div id="membercart">
<div id="member">
  <div align="center"><a href="#"><img src="images/pageheader_12.png" width="86" height="62" /></a><br>
    <a href="#">마이페이지</a></div>
</div>
      <div id="cart">
         <div align="center"><a href="productCartList.jsp"><img src="images/pageheader_10.png" width="86" height="62" /></a><br>
        <a href="productCartList.jsp">장바구니</a></div>
        </div>
      </div>
      </div>
</div>   
      <div id="body3">
        <div id="main">
        <%
        	Connection conn=ConnectionProvider.getConnection();
        	List<Cart> cartList=null;
        	try{
        		CartDao dao=new CartDao();
        		cartList=dao.selectList(conn,userId);
        	}catch(SQLException e){
        		
        	}finally{
        		JdbcUtil.close(conn);
        	}
        %>
       	  <div id="navcover">
          <div id="continushopping"><a href="productCatalogType.jsp?type=3">&lt; 계속 쇼핑하기</a>       	  </div>
       	  </div>
          
          <div id="carttablestyle">
            <table width="1289" height="30" border="0" cellpadding="3" cellspacing="0" id="carttable">
              <tr>
                <th width="660" height="52" scope="col"><div align="left"> 내 쇼핑카트</div></th>
                <th width="204" scope="col"><div align="left">가격</div></th>
                <th width="200" scope="col"><div align="left">수량</div></th>
                <th width="201" scope="col"><div align="right">금액</div></th>
              </tr>
            </table>
            <c:set var="list" value="<%=cartList%>"/>
            <c:forEach var="cart" items="${list}">
            <div id="cartitemline1"><img src="images/productDetail_16.png" width="1300" height="12" /></div>
            <br />
            <table width="1291" height="292" border="0" cellpadding="3" cellspacing="0" id="carttable">
              <tr>
                <td width="24" height="284"><input type="checkbox" name="cartSelect" id="cartSelect" value="${cart.cartId}" /></td>
                <td width="577"><label for="checkbox"></label>
                  <div id="cartitem"><img src='/hifancy/product/${cart.cart_productImage}' width="200" height="200"/></div>
                  <p>&nbsp;</p>
                  <p>&nbsp;</p>
                  <p>상품명: ${cart.productname}</p>
                  <p>옵션: ${cart.color}</p></td>
                <td width="176">\</td>
                <td width="188"><label for="amount"></label>
                ${cart.amount}</td>
                <td width="190"><div align="right">${cart.productprice}\</div></td>
              </tr>
            </table>
            </c:forEach>
            <div id="cartitemline1"><img src="images/productDetail_16.png" width="1300" height="12" /></div>
            <p align="right">
              <input type="submit" value="전체선택" onclick="check_all()" />
              <input type="submit" value="전체해제" onclick="uncheck_all()" />
              <input type="submit" value="선택삭제" onclick="deleteCart()" />
              <input type="submit" value="선택주문" onclick="orderCart()" />
            </p>
          </div>
          <div id="total">
            <table width="500" height="256" border="0" cellspacing="0" cellpadding="3">
              <tr>
                <td height="64" colspan="2"><div align="left">소계</div></td>
              </tr>
              <tr>
                <td width="153"><div align="left">상품가격</div></td>
                <td width="335"><div align="right">${param.payment}\</div></td>
              </tr>
              <tr>
                <td><div align="left">배송비</div></td>
                <td><div align="right">${param.delFee}\</div></td>
              </tr>
            </table>
            <div id="cartitemline2"><img src="images/productDetail_20.png" width="500" height="13" /></div>
<br><table width="500" height="88" border="0" cellpadding="3" cellspacing="0">
              <tr>
                <td width="217" height="59"><div align="left">합계</div></td>
                <td width="271"><div align="right">${param.total}\</div></td>
                <input type="hidden" name="total1" id="total1" value="${param.total}"/>
              </tr>
            </table>
            
            <input type="hidden" name="orderContent" id="orderContent" value="${param.orderContent}"/>            
            
            <p align="right"><img src="images/cartpurchasego.png" width="250" height="50" onclick="finalOrder()" align="right"/></p>
          </div>
          <p><br>
            <br>
          </p>
          <p align="right">&nbsp;</p>
        </div>
      </div>
      <div id="footer"><img src="images/mainpage_39.png" width="1920" height="326" /></div>

</body>
<script type="text/javascript">
function deleteCart() {
    var cartSelect = document.getElementsByName("cartSelect");
    var array="";
    	for (i=0; i < cartSelect.length; i++) {
    	    if (cartSelect[i].checked == true) { 
       	 		array+=cartSelect[i].value+":";
  	 		 }
   		 }
    location.href='cartDelete.jsp?array='+array;
}
function orderCart() {
    var cartSelect = document.getElementsByName("cartSelect");
    var array="";
    for (i=0; i < cartSelect.length; i++) {
    	if (cartSelect[i].checked == true) { 
       		 array+=cartSelect[i].value+":";
    	}
    }
    location.href='cartOrder.jsp?array='+array;
}
function finalOrder(){
	var total=document.getElementById("total1").value.trim();
	var orderContent=document.getElementById("orderContent").value.trim();
	location.href='productPurchase.jsp?total='+total+'&orderContent='+orderContent;
}
function check_all() {
	for(i=0; i < cartSelect.length; i++) {
		cartSelect[i].checked = true;
	}
}
function uncheck_all() {
	for(i=0; i < cartSelect.length; i++) {
		cartSelect[i].checked = false;
	}
}
function count_check() {
	var cnt = 0;
	for(i=0; i < cartSelect.length; i++) {
		if(cartSelect[i].checked) cnt++;
	}
	alert(cnt);
}
</script>
</html>