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
            <td width="910"><input type="text" id="input" name="input" class="searchinput" /></td>
            <td width="52" align="center"><img src="images/search.png" width="30" height="30" /></td>
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
        <a href="productCartList.jsp">장바구니</a></div>
      </div>
      </div>
</div>   
      <div id="body2">
        <div id="main">
        <%   
           int productId=Integer.parseInt(request.getParameter("productId"));
           request.setCharacterEncoding("utf-8");          
           Connection conn=ConnectionProvider.getConnection();
           Product product=null;
           try{
              ProductDao dao=new ProductDao();
              dao.updateAccessCount(conn, productId);
              product=dao.selectById(conn, productId);
           }catch(SQLException e){
           }finally{
              JdbcUtil.close(conn);
           }
        %>
        <c:set var="product" value="<%=product%>"/>
        <c:set var="userId" value="<%=userId%>"/>
            <div id="navcover">
          <div id="navigator">
            <div id="nav1">메인 &gt; </div>
            <div id="nav2">${product.productType} &gt;</div>
            <div id="nav3">${product.productname}</div>              
          </div>
          <div id="pagenav">
            <div id="page_pre"><a href="#">&lt; 이전</a></div>
            <div id="page_aft"><a href="#">다음 &gt;</a></div>
          </div>
          </div>
            <div id="productDetailImg"><img src="/hifancy/product/${product.productImage}" width="754" height="800"/></div>
            
            <div id="details">
            <div id="itemname">${product.productname}
              <div id="itemprice">\ ${product.productprice}</div>
            </div>
            <input type="hidden" name="productprice" id="productprice" value="${product.productprice}"/>
            <input type="hidden" name="productname" id="productname" value="${product.productname}"/>
            <input type="hidden" name="productType" id="productType" value="${product.productType}"/>
            <input type="hidden" name="productImage" id="productImage" value="${product.productImage}"/>
            <div id="itemline"><img src="images/productDetail_16.png" width="618" height="14" /></div>
            <div id="productInfo">
              <h1>상품설명</h1>
              <p>
                 ${product.productInfo}
              </p>
            </div>
            <input type="hidden" name="productInfo" id="productInfo" value="${product.productInfo}"/>
            <div id="itemline"><img src="images/productDetail_16.png" width="618" height="14" /></div>
            <div id="purchaseInfo">
              <h1>상품주문 / 카트담기   </h1>
              <p>수량
                <label for="amount"></label>
                <select name="amount" id="amount">
                  <option value="1">1</option>
                  <option value="2">2</option>
                  <option value="3">3</option>
                  <option value="4">4</option>
                  <option value="5">5</option>
                  <option value="6">6</option>
                  <option value="7">7</option>
                  <option value="8">8</option>
                  <option value="9">9</option>
                  <option value="10">10</option>
                </select>
                개              </p>
              <p>옵션
                <label for="color"></label>
                <select name="color" id="color">
                  <option value="white">화이트</option>
                  <option value="navi">네이비</option>
                  <option value="gray">그레이</option>
                  <option value="ivory">아이보리</option>
                </select>
            </p>
              </div>
              <br><br><br>
              <input type="hidden" id="productId" name="productId" value="${product.productId}"/>

               <c:if test="${userId=='admin'}">
 					<img src="images/change.png" width="250" height="50" onclick="productupdate()"/>
             		<img src="images/delete.png" width="250" height="50" onclick="productdelete()"/></a>
               </c:if>
               <c:if test="${userId !='admin'}">
  					<img src="images/cartgo.png" width="250" height="50" onclick="cartpurchase()"/>
              		<img src="images/purchasego.png" width="250" height="50" onclick="purchase()"/></a>
               </c:if>
             
              <div id="itemline"><img src="images/productDetail_16.png" width="618" height="14" /></div>
              <div id="snslink"><a href="#"><img src="images/productDetail_22.png" width="34" height="43" /></a><a href="#"><img src="images/productDetail_23.png" width="48" height="43" /></a><a href="#"><img src="images/productDetail_24.png" width="59" height="43" /></a><a href="#"><img src="images/productDetail_25.png" width="58" height="43" /></a><a href="#"><img src="images/productDetail_26.png" width="57" height="43" /></a></div>
          
          </div>
              
        </div>
</div>
<div id="footer"><img src="images/mainpage_39.png" width="1920" height="326" /></div>
<script type="text/javascript">
function purchase(){
   var orderContent=document.getElementById("productname").value.trim();
   var total=document.getElementById("productprice").value.trim();
   location.href='productPurchase.jsp?orderContent='+orderContent+'&total='+total;
}
function cartpurchase(){
   var productId=document.getElementById("productId").value.trim();
   var amount=document.getElementById("amount").value.trim();
   var productprice=document.getElementById("productprice").value.trim();
   var productImage=document.getElementById("productImage").value.trim();
   var color=document.getElementById("color").value.trim();
   location.href='productCart.jsp?productId='+productId+'&amount='+amount+'&color='+color;
}

function productupdate(){
	   var productId=document.getElementById("productId").value.trim();
	   var amount=document.getElementById("amount").value.trim();
	   var productprice=document.getElementById("productprice").value.trim();
	   var color=document.getElementById("color").value.trim();
	   location.href='productUpdateForm.jsp?productId='+productId+'&amount='+amount+'&productprice='+productprice+'&color='+color;
}
function productdelete(){
	   var productId=document.getElementById("productId").value.trim();
	   var amount=document.getElementById("amount").value.trim();
	   var productprice=document.getElementById("productprice").value.trim();
	   var color=document.getElementById("color").value.trim();
	   var productType=document.getElementById("productType").value.trim();
	   location.href='productDelete.jsp?productId='+productId+'&amount='+amount+'&productprice='+productprice+'&color='+color+'&productType='+productType;
}
</script>
</body>
</html>