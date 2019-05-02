<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>고객등록 신청서</title>
<link href="design.css" rel="stylesheet" type="text/css">

</head>

<body>
	<% request.setCharacterEncoding("utf-8");%>
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
                    <table width="680" border="0" cellpadding="0" cellspacing="0" id="registerform">
                      <tr>
                        <th><label for="idfield">*  아이디</label></th>
                        <td><label for="idfield2"></label>
                          ${param.idfield}</td>
                      </tr>
                      <tr>
                        <th><label for="pwfield">* 비밀번호</label></th>
                        <td><label for="pwfield"></label>
                         ${param.pwfield}</td>
                      </tr>
                      <tr>
                        <th rowspan="2"><label for="emailfield">* 이메일</label></th>
                        <td><label for="email"></label>
                        ${param.email}@${param.select}</td>
                      </tr>
                      <tr>
                        <td height="35">${param.RadioGroup1}<br></td>
                      </tr>
                      <tr>
                        <th>* 관심정보</th>
                        <td><p>
               <%--String[] interests=request.getParameterValues("CheckboxGroup1");
                        		for(String interest:interests)
                        			out.println(interest+" ");--%>
                        			<c:forEach var="interest" items="${paramValues.CheckboxGroup1}">
                        			${interest}
                        			</c:forEach><br>
                        </p></td>
                      </tr>
                      <tr>
                        <th><label for="memo">* 메모</label></th>
                        <td><label for="textfield"></label>
                         <%=request.getParameter("textfield") %></td>
                      </tr>
                      <tr>
                        <td height="30" colspan="2" align="center" class="btnstyle"><input type="image" name="imageField" id="imageField" src="images/btnimg.jpg"></td>
                      </tr>
                    </table>
                </div>
         </div>
    </div>


</body>
</html>
