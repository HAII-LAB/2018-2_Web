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
      <div id="body2">
        <div id="main">
        <%
            int type=Integer.parseInt(request.getParameter("type"));
            String typeStr = "";
            String pageTitle="";
            if(type==1){
               typeStr="문구";
               pageTitle="images/doll_image4.png";
            }else if(type==2){
               typeStr="인형/토이";
               pageTitle="images/doll_image3.png";
            }else if(type==3){
               typeStr="리빙/데코";
               pageTitle="images/doll_image5.png";
            }else if(type==4){
               typeStr="주방용품";
               pageTitle="images/doll_image6.png";
            }else{
            }
            
           String cond = request.getParameter("cond");
           String direct = request.getParameter("direct");
            
         Connection conn=ConnectionProvider.getConnection();
            List<Product> productList=null;
            Membership membership=null;
            try{
               ProductDao dao=new ProductDao();
                  //productList=dao.selectListType(conn, typeStr);
                  
                  productList = dao.selectListCondition(conn,typeStr,cond,direct);
                  
                  MembershipDao mDao=new MembershipDao();
                  membership=mDao.selectById(conn, userId);
              }catch(SQLException e){          
             }finally{
                JdbcUtil.close(conn);
             }
        
            
        %>
        
        
        
        <p><div id="pageTitle"><img src="<%=pageTitle%>"/></div></p>
        <p align="right">
        <form name="conditionList" method="post">
               <select name="cond">
                  <option value="accessCount">조회수</option>
                  <option value="productprice">가격</option>
                  <option value="productname">상품명</option>
               </select>
               <select name="direct">
                  <option value="asc">오름차순</option>
                  <option value="desc">내림차순</option>
               </select>
               <input type="submit" value="카탈로그 보기">
            </form>
            </p>
            
        <c:set var="list" value="<%=productList%>"/>
        <c:forEach var="product" items="${list}">
          <div class="doll_image2">
        <div class="product_catalog_name">
           <div class="product_catalog_image">
              <a href="productDetail.jsp?productId=${product.productId}">
                 <img src="/hifancy/product/${product.productImage}"></img>
           </a>
        </div>
          <div class="product_catalog_info">
             <a href="productDetail.jsp?productId=${product.productId}">
                     ${product.productname}<br>
                     ${product.productprice}
             </a>
          </div>
          
        </div>
        </div>
        </c:forEach>
           <p>&nbsp;</p>
        </div>
  </div>
<div id="footer"><img src="images/mainpage_39.png" width="1920" height="326" /></div>
<script type="text/javascript">
function searchGo(){
   var search=document.getElementById("search").value.trim();
   location.href="search.jsp?search="+search;
}
</script>
</body>
</html>