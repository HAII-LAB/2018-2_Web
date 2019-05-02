<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>사이버텔브릿지</title>
<link href="designcss.css" rel="stylesheet" type="text/css">

</head>

<body class="subgstyle">

<div id="wrap">

  <div id="page_header">
      <div class="logo1">
        <img src="images/toplogo.jpg" alt="사이버텔" width="234" height="85">
      </div>	
        <div class="nav">
            <ul>
                <li><a href="#"><img src="images/topmenu1.jpg" width="140" height="29" alt="회사소개"></a></li>
                <li><a href="#"><img src="images/topmenu2.jpg" width="140" height="29" alt="제품소개"></a></li>
                <li><a href="#"><img src="images/topmenu3.jpg" width="140" height="29" alt="게시판"></a></li>
                <li><a href="#"><img src="images/topmenu4.jpg" width="140" height="29" alt="고객지원"></a></li>
            </ul>
        </div>	
      <div class="search">
      	<input class="searchbox" name="" type="text">
        <input class="searchbtn" name="" type="image" src="images/topsearch.jpg"></div>	
    </div>
    
    <div id="page_contents">
    	<div class="subimg"></div>
      <div class="submenu">
        	<div class="submenut"></div>
        <ul>
            	<li><a href="#">SIP Server</a></li>
                <li><a href="#">Every Talk Solution</a></li>
                <li><a href="#">VoIP</a></li>
                <li><a href="#">PBX Appendage</a></li>
                <li><a href="#">IP PTT Server</a></li>
                <li><a href="#">CX200</a></li>
                <li><a href="#">Stack</a></li>
                <li><a href="#">Gate Keeper</a></li>
                <li><a href="#">HCM</a></li>
                <li><a href="#">BAPS</a></li>
                <li><a href="#">BAPS for Web</a></li>
            </ul>
      </div>
      	
      <div class="subcontent">
       	<h1>SIP Server</h1>
        <h2>개요</h2>
        <P>SIP는 인터넷 상에서 통신하고자 하는 전화, 인터넷, 콘퍼런스, 스턴트 메신저 등이 서로를 식별하여 그 위치를 찾고,<br />
그들 상호간에 
멀티미디어 통신 세션을 생성하거나 삭제 또는 변경하기 위한 절차를 명시한 응용 계층의 시그널링 프로토콜입니다</P>
        <h2>입력사항</h2>
        <form id="form1" name="form1" method="post" action="result.jsp">
          <table width="700" height="198" border="1" cellpadding="3" cellspacing="0" id="registerform">
            <tr>
              <td width="180" height="37">이름</td>
              <td width="502"><label for="textfield"></label>
              <input type="text" name="username" id="textfield" /></td>
            </tr>
            <tr>
              <td height="37">나이</td>
              <td><label for="textfield2"></label>
              <input type="text" name="age" id="textfield2" /></td>
            </tr>
            <tr>
              <td height="38">좋아하는 색</td>
              <td><p>
                <label>
                  <input type="checkbox" name="color" value="빨강" id="Color_0" />
                  빨강</label>
                
                <label>
                  <input type="checkbox" name="color" value="노랑" id="Color_1" />
                노랑</label>
                <label>
                  <input type="checkbox" name="color" value="파랑" id="Color_2" />
                  파랑</label>
                <br />
              </p></td>
            </tr>
            <tr>
              <td height="38">주소</td>
              <td><p>
                <label>
                  <input type="radio" name="address" value="서울" id="address_0" />
                  서울</label>
                <label>
                  <input type="radio" name="address" value="인천" id="address_1" />
                  인천</label>
                <label>
                    <input type="radio" name="address" value="안산" id="address_2" />
                  안산</label>
                <br />
              </p></td>
            </tr>
            </tr>
            <td height="38">좋아하는 동물</td>
              <td><p>
                <label>
                  <input type="checkbox" name="animal" value="사자" id="Animal_0" />
                  사자</label>
                
                <label>
                  <input type="checkbox" name="animal" value="강아지" id="Animal_1" />
                강아지</label>
                <label>
                  <input type="checkbox" name="aniaml" value="고양이" id="Animal_2" />
                  고양이</label>
                <br />
              </p></td>
            </tr>
            <tr>
              <td height="37"><input type="submit" name="button" id="button" value="입력" /></td>
              <td>&nbsp;</td>
            </tr>
          </table>
        </form>
        <p>&nbsp;</p>
      </div>
    </div>
    
    <div id="page_footer">
    	<hr>	
        <div class="info">
        (주)사이버텔브릿지. 서울특별시 구로구 구로동 222-14 에이스하이앤드타워 2차. 
          사업자등록번호:000-00-00000.   대표:홍길동.
대표번호:070-7945-7700<br/>
        COPYRIGHT(c) 1999 CYBERTELBRIDGE ALL RIGHTS RESERVED
      </div>
        
  </div>

</div>


</body>
</html>
