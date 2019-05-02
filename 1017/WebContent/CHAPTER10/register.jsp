<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>고객등록 신청서</title>
<link href="design.css" rel="stylesheet" type="text/css">

</head>

<body>

  <div class="page_header">
    	<div class="toplogo"><a href="#"><img src="images/top_logo.jpg" width="276" height="40" alt="beautifullife"></a>
      </div>
        <div class="topnav">
        	<ul>
            	<li><a href="#"><img src="images/top_menu1.jpg" width="72" height="24" alt="ArtStory"></a></li>
                <li><a href="#"><img src="images/top_menu2.jpg" width="76" height="24" alt="ArtStory"></a></li>
                <li><a href="#"><img src="images/top_menu3.jpg" width="64" height="24" alt="ArtStory"></a></li>
                <li><a href="#"><img src="images/top_menu4.jpg" width="134" height="24" alt="ArtStory"></a></li>
                <li><a href="#"><img src="images/top_menu5.jpg" width="99" height="24" alt="ArtStory"></a></li>
                <li><a href="#"><img src="images/top_menu6.jpg" width="52" height="24" alt="ArtStory"></a></li>
            </ul>
        </div>
  </div>
     
     <div class="page_subimg">
     	<div class="subimgline"></div>
        <div class="subimg">
        	<div id="apDivSubimg"></div>
       </div>
     </div>

  <div class="page_content">
    	<div class="leftmenu">
   	    	<img src="images/left_title.jpg" width="152" height="24" alt="membership"> 
        	<ul>
            	<li></li>
            	<li><a href="#">회원가입</a></li>
                <li><a href="#">아이디찾기</a></li>
                <li><a href="#">비번찾기</a></li>
                <li><a href="#">마이페이지</a></li>
                <li><a href="#">1:1문의하기</a></li>
                <li><a href="#">질문내역</a></li>
                <li><a href="#">후기내역</a></li>
                <li><a href="#">쿠폰내격</a></li>
                <li><a href="#">적립금내역</a></li>
            </ul>
        
        
        </div>
        <div class="rightcon">
                <img src="images/title1.jpg" width="464" height="58" alt="고객등록">
                <div class="tablestyle">
                  <form name="form1" method="post" action="result.jsp">
                    <table width="680" border="0" cellpadding="0" cellspacing="0" id="registerform">
                      <tr>
                        <th><label for="idfield">*  아이디</label></th>
                        <td><label for="idfield2"></label>
                        <input type="text" name="idfield" id="idfield2"></td>
                      </tr>
                      <tr>
                        <th><label for="pwfield">* 비밀번호</label></th>
                        <td><label for="pwfield"></label>
                        <input type="text" name="pwfield" id="pwfield"></td>
                      </tr>
                      <tr>
                        <th rowspan="2"><label for="emailfield">* 이메일</label></th>
                        <td><label for="email"></label>
                        <input type="text" name="email" id="email"> 
                         @ 
                         <label for="select"></label>
                         <select name="select" id="select">
                           <option value="naver.com" selected>네이버</option>
                           <option value="daum.net">다음</option>
                           <option value="gmail.com">지메일</option>
                        </select></td>
                      </tr>
                      <tr>
                        <td>뉴스를 받으시겠습니까?<label>
                              <input name="RadioGroup1" type="radio" id="RadioGroup1_0" value="받음" checked>
                              수신동의</label>
                            <label>
                              <input type="radio" name="RadioGroup1" value="받지않음" id="RadioGroup1_1">
                            수신거부</label>
                            <br>
                        </td>
                      </tr>
                      <tr>
                        <th height="35">* 관심정보</th>
                        <td><p>
                          <label>
                            <input type="checkbox" name="CheckboxGroup1" value="피부관리" id="CheckboxGroup1_0">
                            피부관리</label>
                          <label>
                            <input type="checkbox" name="CheckboxGroup1" value="천연화장품" id="CheckboxGroup1_1">
                          천연화장품</label>
                          <label>
                            <input type="checkbox" name="CheckboxGroup1" value="피부나이측정" id="CheckboxGroup1_2">
                          피부나이측정</label>
                          <br>
                        </p></td>
                      </tr>
                      <tr>
                        <th><label for="memo">* 메모</label></th>
                        <td><label for="textfield"></label>
                        <textarea name="textfield" id="textfield" cols="45" rows="5"></textarea></td>
                      </tr>
                      <tr>
                        <td height="30" colspan="2" align="center" class="btnstyle"><input type="image" name="imageField" id="imageField" src="images/btnimg.jpg"></td>
                      </tr>
                    </table>
                  </form>
                </div>
         </div>
    </div>


</body>
</html>
