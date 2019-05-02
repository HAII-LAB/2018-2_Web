<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ page import="my.model.*, my.dao.*, java.sql.*, my.util.*, java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>하이팬시::주문페이지</title>
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
IMP.init('imp96242191'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
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
          	request.setCharacterEncoding("utf-8");
          	String purchaseDate=request.getParameter("purchaseDate");
        	String content=request.getParameter("content");
          	String payment=request.getParameter("payment");

        	Connection conn=ConnectionProvider.getConnection();
			Membership membership=null;
			Purchase purchase=null;
			try{
				MembershipDao dao=new MembershipDao();
				membership=dao.selectById(conn, userId);
			}catch(SQLException e){
			}finally{
				JdbcUtil.close(conn);
			}
          %>
          <c:set var="member" value="<%=membership%>"/>
        <div id="mypage_purchase">
            <div id="mypage_purchase_Title">주문확인</div>
            <div id="mypage_table">
              <table width="1470" border="1" cellspacing="0" cellpadding="3">
                <tr>
                
                <th colspan="2">주문정보</th>
                </tr>
                <tr>
                  <td width="200" >이름</td>
                  <td width="800">${member.name}</td>
                  <input type="hidden" id="name" "name="name" value="${member.name}"/>
                  
                </tr>
                <tr>
                  <td>이메일</td>
                  <td><input type="text" name="email-1" id="email-1" value="${member.email}" style="width:300px; height:25px;"/></td>
                </tr>
                <tr>
                  <td>배송지</td>
                  <td><p> 우편번호 : <input type="text" id="sample6_postcode" name="zip" style="width:80px; height:25px;" />
<button type="button" style="width:60px; height:25px;" onclick="sample6_execDaumPostcode()">검색</button><br>
주소 : <input type="text" name="addr1"  id="sample6_address" style="width:300px; height:25px;" readonly /><br>
상세 : <input type="text" name="addr2" id="sample6_address2" style="width:300px; height:25px;" />
              </p></td>
                </tr>
                <tr>
                  <td>배송시 요청사항</td>
                  <td><label for="memo"></label>
                <input type="text" name="memo" id="memo" style="width:500px; height:25px" value="빠른 배송 부탁드립니다!"/>
</td>
                </tr>
                <tr>
                  <td>주문상품정보</td>
                  <td><%=content%></td>
                </tr>
                <tr>
                  <td>주문내용</td>
                  <td><%=content%></td>
                </tr>
                <tr>
                  <td>결제금액</td>
                  <td><%=payment%>원</td>
                </tr>
              </table>
              <input type="hidden" id="name" name="name" value="${member.name}"/>
            <input type="hidden" id="email" name="email" value="${member.email}"/>
            <input type="hidden" id="content" name="content" value="<%=content%>"/> 
            <input type="hidden" id="payment" name="payment" value="<%=payment%>"/> 
            <p alig="right"><input type="button" value="결제하기" onclick="paygo()"/></p>
              </div>
            </div>
          </div>
          
        </div>
          
      <div id="footer"><img src="images/mainpage_39.png" width="1920" height="326" /></div>
<script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>
<script>
function sample6_execDaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var fullAddr = ''; // 최종 주소 변수
            var extraAddr = ''; // 조합형 주소 변수

            // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                fullAddr = data.roadAddress;

            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                fullAddr = data.jibunAddress;
            }

            // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
            if(data.userSelectedType === 'R'){
                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('sample6_postcode').value = data.zonecode; //5자리 새우편번호 사용
            document.getElementById('sample6_address').value = fullAddr;

            // 커서를 상세주소 필드로 이동한다.
            document.getElementById('sample6_address2').focus();
        }
    }).open();
}
</script>

<script type="text/javascript">
function paygo(){
	var sample6_address=document.getElementById("sample6_address").value.trim();
	var sample6_address2=document.getElementById("sample6_address2").value.trim();
	var content=document.getElementById("content").value.trim();
	var memo=document.getElementById("memo").value.trim();
	var email=document.getElementById("email").value.trim();
	var name=document.getElementById("name").value.trim();
	var payment=document.getElementById("payment").value.trim();
	location.href="purchaseSuccess.jsp?content="+content+"&email="+email+"&name="+name+"&payment="+payment+"&sample6_address="+sample6_address+"&sample6_address2"+sample6_address2+"&memo"+memo;
}
</script>                                                             
</body>
</html>
