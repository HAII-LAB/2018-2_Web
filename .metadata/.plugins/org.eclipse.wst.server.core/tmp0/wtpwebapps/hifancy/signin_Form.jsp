<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ page import="my.model.*, my.dao.*, java.sql.*, my.util.*, java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>하이팬시::회원가입페이지</title>
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
       	  <div id="navcover"> 
<div id="signin">회원가입            </div>
              <div id="signin_1">
            <div class="form-area"> 
            <!-- ID, PWD -->
         <form action="signin.jsp" method="post">
                <table width="184">
                  <tr>
                    <td width="176"><span>
                      <input type="text" id="id" name="id" class="input-text" placeholder="아이디" maxlength="20" onfocusout="validateId()" />
                      </span>
                      <div id="id_alert" class="alert">필수 정보입니다.</div></td>
                  </tr>
                  <tr>
                    <td><span>
                      <input type="password" id="password" name="password" class="input-text" placeholder="비밀번호" maxlength="20" onfocusout="validatePassword()" />
                      </span>
                      <div id="password_alert" class="alert">필수 정보입니다.</div></td>
                  </tr>
                  <tr>
                    <td><span>
                      <input type="password" id="check_password" class="input-text" placeholder="비밀번호 재확인" maxlength="20" onfocusout="validatePassword()" />
                      </span>
                      <div id="check_password_alert" class="alert">필수 정보입니다.</div></td>
                  </tr>
                </table>
              <!-- BASIC INFO -->
         <table>
            <tr>
               <td>
                  <span>
                     <input type="text" id="name" name="name" class="input-text" placeholder="이름" maxlength="15" onfocusout="validateName()">
                  </span>
                  <div id="name_alert" class="alert">필수 정보입니다.</div>
               </td>
            </tr>
             
            <tr>
               <td>
                  <span>
                     <input type="text" id="email" name="email" class="input-text" placeholder="이메일" maxlength="40" onfocusout="validateEmail()">
                  </span>
                  <div id="email_alert" class="alert">필수 정보입니다.</div>
               </td>
            </tr>
            
            <tr>
               <td>
                  <span>
                     <input type="text" id="birth_year" name="birth_year" class="input-text birth" placeholder="년(4자)" maxlength="4" onfocusout="validateBirth()">
                  </span>
                  <span>
                     <select id="birth_month" name="birth_month">
                        <option value="1">1월</option>
                        <option value="2">2월</option>
                        <option value="3">3월</option>
                        <option value="4">4월</option>
                        <option value="5">5월</option>
                        <option value="6">6월</option>
                        <option value="7">7월</option>
                        <option value="8">8월</option>
                        <option value="9">9월</option>
                        <option value="10">10월</option>
                        <option value="11">11월</option> 
                        <option value="12">12월</option>
                     </select>
                  </span>
                  <span>
                     <input type="text" id="birth_day" name="birth_day" class="input-text birth" placeholder="일" maxlength="2" onfocusout="validateBirth()">
                  </span>
                  <div id="birth_alert" class="alert">태어난 년도 4자리를 정확하게 입력하세요.</div>
               </td>
            </tr>
         </table>
         <input type="submit" value="가입하기" class="btn-type-01">
         </form>
      </div>
      
   </div>
</body>

<script type="text/javascript">
   
   function validateId() {
      var id = document.getElementById('id').value.trim();
      var alertEl = document.getElementById('id_alert');
      
      // 입력 여부 검증
      if (id.length == 0) {
         alertEl.innerHTML = '필수 정보입니다.';
         alertEl.style.display = 'block';
         
         return false;
      }
      
      // 길이 검증
      if (id.length < 5) {
         alertEl.innerHTML = '아이디는 5글자 이상 입력해주세요.';
         alertEl.style.display = 'block';
         
         return false;
      }
      
      // 대소문자, 숫자 입력 검증
      if (!/^[A-Za-z0-9]*$/.test(id)) {//^는 처음시작하는 글자 $는 끝나는 것 *는 []안에 잇는 것을 반복가능하다는 뜻
         alertEl.innerHTML = '아이디는 영문 대문자,소문자, 숫자만 입력 가능합니다.';
         alertEl.style.display = 'block';
         
         return false;
      }
      
      alertEl.style.display = 'none';
   }
   
   function validatePassword() {
      var password = document.getElementById('password').value.trim();
      var cPassword = document.getElementById('check_password').value.trim();
      var alertEl = document.getElementById('password_alert');
      var cAlertEl = document.getElementById('check_password_alert');
      
      // 비밀번호 입력 여부 검증
      if (password.length == 0) {
         alertEl.innerHTML = '필수 정보입니다.';
         alertEl.style.display = 'block';
         
         return false;
      }
      
      // 비밀번호 길이 검증
      if (password.length < 5) {
         alertEl.innerHTML = '비밀번호는 5글자 이상 입력해주세요.';
         alertEl.style.display = 'block';
         
         return false;
      }
      
      // 비밀번호 대소문자, 숫자 입력 검증
      if (!/^[A-Za-z0-9]*$/.test(password)) {
         alertEl.innerHTML = '비밀번호는 영문 대문자,소문자, 숫자만 입력 가능합니다.';
         alertEl.style.display = 'block';
         
         return false;
      }
      
      // 비밀번호 확인 입력 여부 검증
      if (cPassword.length == 0) {
         cAlertEl.innerHTML = '필수 정보입니다.';
         cAlertEl.style.display = 'block';
         
         return false;
      }
      
      // 비밀번호 확인 길이 검증
      if (cPassword.length < 5) {
         cAlertEl.innerHTML = '비밀번호는 5글자 이상 입력해주세요.';
         cAlertEl.style.display = 'block';
         
         return false;
      }
      
      // 비밀번호 확인 대소문자, 숫자 입력 검증
      if (!/^[A-Za-z0-9]*$/.test(cPassword)) {
         cAlertEl.innerHTML = '비밀번호는 영문 대문자,소문자, 숫자만 입력 가능합니다.';
         cAlertEl.style.display = 'block';
         
         return false;
      }
      
      // 비밀번호, 비밀번호 확인 검증
      if (password != cPassword) {
         cAlertEl.innerHTML = '비밀번호가 일치하지 않습니다.';
         cAlertEl.style.display = 'block';
         
         return false;
      }
      
      alertEl.style.display = 'none';
      cAlertEl.style.display = 'none';
   }
   
   function validateName() {
      var name = document.getElementById('name').value.trim();
      var alertEl = document.getElementById('name_alert');
      
      // 입력 여부 검증
      if (name.length == 0) {
         alertEl.innerHTML = '필수 정보입니다.';
         alertEl.style.display = 'block';
         
         return false;
      }
      
      alertEl.style.display = 'none';
   }
   
   function validateBirth() {
      var birthYear = document.getElementById('birth_year').value.trim();
      var birthDay = document.getElementById('birth_day').value.trim();
      var alertEl = document.getElementById('birth_alert');
      
      if (birthYear.length == 0) {
         alertEl.innerHTML = '태어난 년도 4자리를 입력해주세요.';
         alertEl.style.display = 'block';
         
         return false;
      }
      
      if (birthDay.length == 0) {
         alertEl.innerHTML = '태어난 일자를 입력해주세요.';
         alertEl.style.display = 'block';
         
         return false;
      }
      
      if (!/^[0-9]*$/.test(birthYear)) {
         birth_alert.innerHTML = '태어난 년도는 숫자만 입력 가능합니다.';
         birth_alert.style.display = 'block';
         
         return false;
      }
      
      if (!/^[0-9]*$/.test(birthDay)) {
         birth_alert.innerHTML = '태어난 일자는 숫자만 입력 가능합니다.';
         birth_alert.style.display = 'block';
         
         return false;
      }
      
      alertEl.style.display = 'none';
   }
</script>
</html>
                <p>&nbsp;</p>
              </div>
              <p>&nbsp;</p>
            </div>
            <p>&nbsp;</p>
        </div>
</div>
  </div>
<div id="footer"><img src="images/mainpage_39.png" width="1920" height="326" /></div>

</body>
</html>