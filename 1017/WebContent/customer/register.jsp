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
                        <th><label for="userId">*  아이디</label></th>
                        <td><label for="idfield2"></label>
                        <input type="text" name="userId" id="idfield2"></td>
                      </tr>
                      <tr>
                        <th><label for="pw">* 비밀번호</label></th>
                        <td><label for="pw"></label>
                        <input type="text" name="password" id="pw"></td>
                      </tr>
                      <tr>
                        <th rowspan="2"><label for="emailfield">* 이름</label></th>
                        <td><label for="userName"></label>
                        <input type="text" name="userName" id="userName"> 
                        </td>
                      </tr>
                      <tr>
                        
                      </tr>
                      <tr>
                        <th>* 취미</th>
                        <td><p>
                          <label>
                            <input type="checkbox" name="hobby" value="독서" id="CheckboxGroup1_0">
                            독서 
                          </label>
                          <label>
                            <input type="checkbox" name="hobby" value="음악감상" id="CheckboxGroup1_1">
                          음악감상 </label>
                          <label>
                            <input type="checkbox" name="hobby" value="농구" id="CheckboxGroup1_2"> 
                            농구
                          </label>
                          <br>
                        </p></td>
                      </tr>
                      <tr>
                        <th><label for="memo">* 주소</label></th>
                        <td><label for="address"></label>
                        <textarea name="address" id="address" cols="45" rows="5"></textarea></td>
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
