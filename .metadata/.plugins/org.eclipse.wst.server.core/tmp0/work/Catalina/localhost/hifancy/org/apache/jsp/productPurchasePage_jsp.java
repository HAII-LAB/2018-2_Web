/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.0.47
 * Generated at: 2018-12-11 23:07:38 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import my.model.*;
import my.dao.*;
import java.sql.*;
import my.util.*;
import java.util.*;

public final class productPurchasePage_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("jar:file:/C:/KPU_JSP2/ws/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/hifancy/WEB-INF/lib/jstl-1.2.jar!/META-INF/c.tld", Long.valueOf(1153352682000L));
    _jspx_dependants.put("/WEB-INF/lib/jstl-1.2.jar", Long.valueOf(1492563438000L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("java.sql");
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("my.model");
    _jspx_imports_packages.add("java.util");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("my.util");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_packages.add("my.dao");
    _jspx_imports_classes = null;
  }

  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fc_005fset_0026_005fvar_005fvalue_005fnobody;
  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fc_005fif_0026_005ftest;

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
    _005fjspx_005ftagPool_005fc_005fset_0026_005fvar_005fvalue_005fnobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _005fjspx_005ftagPool_005fc_005fif_0026_005ftest = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _005fjspx_005ftagPool_005fc_005fset_0026_005fvar_005fvalue_005fnobody.release();
    _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.release();
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

final java.lang.String _jspx_method = request.getMethod();
if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET POST or HEAD");
return;
}

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write(" \r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n");
      out.write("<title>하이팬시::주문페이지</title>\r\n");
      out.write("<link href=\"hifancy.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n");
      out.write("<style type=\"text/css\">\r\n");
      out.write(" \r\n");
      out.write("a:link {\r\n");
      out.write("\tcolor: #607D82;\r\n");
      out.write("\ttext-decoration: none;\r\n");
      out.write("}\r\n");
      out.write("a:visited {\r\n");
      out.write("\ttext-decoration: none;\r\n");
      out.write("\tcolor: #607D82;\r\n");
      out.write("}\r\n");
      out.write("a:hover {\r\n");
      out.write("\ttext-decoration: underline;\r\n");
      out.write("\tcolor: #607D82;\r\n");
      out.write("}\r\n");
      out.write("a:active {\r\n");
      out.write("\ttext-decoration: none;\r\n");
      out.write("\tcolor: #607D82;\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("IMP.init('imp96242191'); // 'iamport' 대신 부여받은 \"가맹점 식별코드\"를 사용\r\n");
      out.write("function MM_swapImgRestore() { //v3.0\r\n");
      out.write("  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;\r\n");
      out.write("}\r\n");
      out.write("function MM_preloadImages() { //v3.0\r\n");
      out.write("  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();\r\n");
      out.write("    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)\r\n");
      out.write("    if (a[i].indexOf(\"#\")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("function MM_findObj(n, d) { //v4.01\r\n");
      out.write("  var p,i,x;  if(!d) d=document; if((p=n.indexOf(\"?\"))>0&&parent.frames.length) {\r\n");
      out.write("    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}\r\n");
      out.write("  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];\r\n");
      out.write("  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);\r\n");
      out.write("  if(!x && d.getElementById) x=d.getElementById(n); return x;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("function MM_swapImage() { //v3.0\r\n");
      out.write("  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)\r\n");
      out.write("   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}\r\n");
      out.write("}\r\n");
      out.write("</script>\r\n");
      out.write("</head>\r\n");
      out.write("<body onload=\"MM_preloadImages('images/topmenu_01.png','images/topmenu_02.png','images/topmenu_03.png','images/topmenu_04.png','images/topmenu_05.png','images/topmenu_06.png')\">\r\n");
      out.write("    <div id=\"pageheader\">\r\n");
      out.write("      <div id=\"toplogo\"><a href=\"mainpage.jsp\"><img src=\"images/pageheader_01.png\" width=\"248\" height=\"98\" /></a></div>\r\n");
      out.write("      <div id=\"searchinputcover\">\r\n");
      out.write("        <table width=\"800\" height=\"52\" cellpadding=\"3\" cellspacing=\"0\">\r\n");
      out.write("          <tr>\r\n");
      out.write("            <td width=\"910\"><input type=\"text\" id=\"input\" name=\"input\" class=\"searchinput\" /></td>\r\n");
      out.write("            <td width=\"52\" align=\"center\"><img src=\"images/search.png\" width=\"30\" height=\"30\" /></td>\r\n");
      out.write("          </tr>\r\n");
      out.write("        </table></div>\r\n");
      out.write(" ");

         String userId = (String)session.getAttribute("UI");
      
      out.write("\r\n");
      out.write("      \r\n");
      out.write("      <div id=\"login_join\">\r\n");
      out.write("         ");
      //  c:set
      org.apache.taglibs.standard.tag.rt.core.SetTag _jspx_th_c_005fset_005f0 = (org.apache.taglibs.standard.tag.rt.core.SetTag) _005fjspx_005ftagPool_005fc_005fset_0026_005fvar_005fvalue_005fnobody.get(org.apache.taglibs.standard.tag.rt.core.SetTag.class);
      boolean _jspx_th_c_005fset_005f0_reused = false;
      try {
        _jspx_th_c_005fset_005f0.setPageContext(_jspx_page_context);
        _jspx_th_c_005fset_005f0.setParent(null);
        // /productPurchasePage.jsp(69,9) name = var type = java.lang.String reqTime = false required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
        _jspx_th_c_005fset_005f0.setVar("userId");
        // /productPurchasePage.jsp(69,9) name = value type = javax.el.ValueExpression reqTime = true required = false fragment = false deferredValue = true expectedTypeName = java.lang.Object deferredMethod = false methodSignature = null
        _jspx_th_c_005fset_005f0.setValue(userId);
        int _jspx_eval_c_005fset_005f0 = _jspx_th_c_005fset_005f0.doStartTag();
        if (_jspx_th_c_005fset_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
          return;
        }
        _005fjspx_005ftagPool_005fc_005fset_0026_005fvar_005fvalue_005fnobody.reuse(_jspx_th_c_005fset_005f0);
        _jspx_th_c_005fset_005f0_reused = true;
      } finally {
        org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_c_005fset_005f0, _jsp_getInstanceManager(), _jspx_th_c_005fset_005f0_reused);
      }
      out.write("\r\n");
      out.write("         ");
      if (_jspx_meth_c_005fif_005f0(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("        ");
      if (_jspx_meth_c_005fif_005f1(_jspx_page_context))
        return;
      out.write("  \r\n");
      out.write("        <div id=\"join\"><a href=\"signin_Form.jsp\">회원가입</a></div>\r\n");
      out.write("      </div>\r\n");
      out.write("      <div id=\"topmenu\"><a href=\"productCatalogType.jsp?type=1\" onmouseout=\"MM_swapImgRestore()\" onmouseover=\"MM_swapImage('Image16','','images/topmenu_01.png',1)\"><img src=\"images/topmenugray_01.png\" width=\"144\" height=\"62\" id=\"Image16\" /></a><a href=\"productCatalogType.jsp?type=2\" onmouseout=\"MM_swapImgRestore()\" onmouseover=\"MM_swapImage('Image17','','images/topmenu_02.png',1)\"><img src=\"images/topmenugray_02.png\" width=\"162\" height=\"62\" id=\"Image17\" /></a><a href=\"productCatalogType.jsp?type=3\" onmouseout=\"MM_swapImgRestore()\" onmouseover=\"MM_swapImage('Image18','','images/topmenu_03.png',1)\"><img src=\"images/topmenugray_03.png\" width=\"177\" height=\"62\" id=\"Image18\" /></a><a href=\"productCatalogType.jsp?type=4\" onmouseout=\"MM_swapImgRestore()\" onmouseover=\"MM_swapImage('Image19','','images/topmenu_04.png',1)\"><img src=\"images/topmenugray_04.png\" width=\"180\" height=\"62\" id=\"Image19\" /></a><a href=\"#\" onmouseout=\"MM_swapImgRestore()\" onmouseover=\"MM_swapImage('Image20','','images/topmenu_05.png',1)\"><img src=\"images/topmenugray_05.png\" width=\"159\" height=\"62\" id=\"Image20\" /></a><a href=\"#\" onmouseout=\"MM_swapImgRestore()\" onmouseover=\"MM_swapImage('Image21','','images/topmenu_06.png',1)\"><img src=\"images/topmenugray_06.png\" width=\"161\" height=\"62\" id=\"Image21\" /></a></div>\r\n");
      out.write("      <div id=\"membercart\">\r\n");
      out.write("<div id=\"member\">\r\n");
      out.write("  <div align=\"center\"><a href=\"#\"><img src=\"images/pageheader_12.png\" width=\"86\" height=\"62\" /></a><br>\r\n");
      out.write("    <a href=\"#\">마이페이지</a></div>\r\n");
      out.write("</div>\r\n");
      out.write("      <div id=\"cart\">\r\n");
      out.write("        <div align=\"center\"><a href=\"productCartList.jsp\"><img src=\"images/pageheader_10.png\" width=\"86\" height=\"62\" /></a><br>\r\n");
      out.write("        <a href=\"productCartList.jsp\">장바구니</a></div>\r\n");
      out.write("      </div>\r\n");
      out.write("      </div>\r\n");
      out.write("</div>   \r\n");
      out.write("      <div id=\"body2\">\r\n");
      out.write("        <div id=\"main\">\r\n");
      out.write("        ");

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
          
      out.write("\r\n");
      out.write("          ");
      //  c:set
      org.apache.taglibs.standard.tag.rt.core.SetTag _jspx_th_c_005fset_005f1 = (org.apache.taglibs.standard.tag.rt.core.SetTag) _005fjspx_005ftagPool_005fc_005fset_0026_005fvar_005fvalue_005fnobody.get(org.apache.taglibs.standard.tag.rt.core.SetTag.class);
      boolean _jspx_th_c_005fset_005f1_reused = false;
      try {
        _jspx_th_c_005fset_005f1.setPageContext(_jspx_page_context);
        _jspx_th_c_005fset_005f1.setParent(null);
        // /productPurchasePage.jsp(109,10) name = var type = java.lang.String reqTime = false required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
        _jspx_th_c_005fset_005f1.setVar("member");
        // /productPurchasePage.jsp(109,10) name = value type = javax.el.ValueExpression reqTime = true required = false fragment = false deferredValue = true expectedTypeName = java.lang.Object deferredMethod = false methodSignature = null
        _jspx_th_c_005fset_005f1.setValue(membership);
        int _jspx_eval_c_005fset_005f1 = _jspx_th_c_005fset_005f1.doStartTag();
        if (_jspx_th_c_005fset_005f1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
          return;
        }
        _005fjspx_005ftagPool_005fc_005fset_0026_005fvar_005fvalue_005fnobody.reuse(_jspx_th_c_005fset_005f1);
        _jspx_th_c_005fset_005f1_reused = true;
      } finally {
        org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_c_005fset_005f1, _jsp_getInstanceManager(), _jspx_th_c_005fset_005f1_reused);
      }
      out.write("\r\n");
      out.write("        <div id=\"mypage_purchase\">\r\n");
      out.write("            <div id=\"mypage_purchase_Title\">주문확인</div>\r\n");
      out.write("            <div id=\"mypage_table\">\r\n");
      out.write("              <table width=\"1470\" border=\"1\" cellspacing=\"0\" cellpadding=\"3\">\r\n");
      out.write("                <tr>\r\n");
      out.write("                \r\n");
      out.write("                <th colspan=\"2\">주문정보</th>\r\n");
      out.write("                </tr>\r\n");
      out.write("                <tr>\r\n");
      out.write("                  <td width=\"200\" >이름</td>\r\n");
      out.write("                  <td width=\"800\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${member.name}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("</td>\r\n");
      out.write("                  <input type=\"hidden\" id=\"name\" \"name=\"name\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${member.name}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\"/>\r\n");
      out.write("                  \r\n");
      out.write("                </tr>\r\n");
      out.write("                <tr>\r\n");
      out.write("                  <td>이메일</td>\r\n");
      out.write("                  <td><input type=\"text\" name=\"email-1\" id=\"email-1\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${member.email}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\" style=\"width:300px; height:25px;\"/></td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                <tr>\r\n");
      out.write("                  <td>배송지</td>\r\n");
      out.write("                  <td><p> 우편번호 : <input type=\"text\" id=\"sample6_postcode\" name=\"zip\" style=\"width:80px; height:25px;\" />\r\n");
      out.write("<button type=\"button\" style=\"width:60px; height:25px;\" onclick=\"sample6_execDaumPostcode()\">검색</button><br>\r\n");
      out.write("주소 : <input type=\"text\" name=\"addr1\"  id=\"sample6_address\" style=\"width:300px; height:25px;\" readonly /><br>\r\n");
      out.write("상세 : <input type=\"text\" name=\"addr2\" id=\"sample6_address2\" style=\"width:300px; height:25px;\" />\r\n");
      out.write("              </p></td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                <tr>\r\n");
      out.write("                  <td>배송시 요청사항</td>\r\n");
      out.write("                  <td><label for=\"memo\"></label>\r\n");
      out.write("                <input type=\"text\" name=\"memo\" id=\"memo\" style=\"width:500px; height:25px\" value=\"빠른 배송 부탁드립니다!\"/>\r\n");
      out.write("</td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                <tr>\r\n");
      out.write("                  <td>주문상품정보</td>\r\n");
      out.write("                  <td>");
      out.print(content);
      out.write("</td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                <tr>\r\n");
      out.write("                  <td>주문내용</td>\r\n");
      out.write("                  <td>");
      out.print(content);
      out.write("</td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                <tr>\r\n");
      out.write("                  <td>결제금액</td>\r\n");
      out.write("                  <td>");
      out.print(payment);
      out.write("원</td>\r\n");
      out.write("                </tr>\r\n");
      out.write("              </table>\r\n");
      out.write("              <input type=\"hidden\" id=\"name\" name=\"name\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${member.name}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\"/>\r\n");
      out.write("            <input type=\"hidden\" id=\"email\" name=\"email\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${member.email}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\"/>\r\n");
      out.write("            <input type=\"hidden\" id=\"content\" name=\"content\" value=\"");
      out.print(content);
      out.write("\"/> \r\n");
      out.write("            <input type=\"hidden\" id=\"payment\" name=\"payment\" value=\"");
      out.print(payment);
      out.write("\"/> \r\n");
      out.write("            <p alig=\"right\"><input type=\"button\" value=\"결제하기\" onclick=\"paygo()\"/></p>\r\n");
      out.write("              </div>\r\n");
      out.write("            </div>\r\n");
      out.write("          </div>\r\n");
      out.write("          \r\n");
      out.write("        </div>\r\n");
      out.write("          \r\n");
      out.write("      <div id=\"footer\"><img src=\"images/mainpage_39.png\" width=\"1920\" height=\"326\" /></div>\r\n");
      out.write("<script src=\"https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js\"></script>\r\n");
      out.write("<script>\r\n");
      out.write("function sample6_execDaumPostcode() {\r\n");
      out.write("    new daum.Postcode({\r\n");
      out.write("        oncomplete: function(data) {\r\n");
      out.write("            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.\r\n");
      out.write("            // 각 주소의 노출 규칙에 따라 주소를 조합한다.\r\n");
      out.write("            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.\r\n");
      out.write("            var fullAddr = ''; // 최종 주소 변수\r\n");
      out.write("            var extraAddr = ''; // 조합형 주소 변수\r\n");
      out.write("\r\n");
      out.write("            // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.\r\n");
      out.write("            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우\r\n");
      out.write("                fullAddr = data.roadAddress;\r\n");
      out.write("\r\n");
      out.write("            } else { // 사용자가 지번 주소를 선택했을 경우(J)\r\n");
      out.write("                fullAddr = data.jibunAddress;\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("            // 사용자가 선택한 주소가 도로명 타입일때 조합한다.\r\n");
      out.write("            if(data.userSelectedType === 'R'){\r\n");
      out.write("                // 법정동명이 있을 경우 추가한다. (법정리는 제외)\r\n");
      out.write("                // 법정동의 경우 마지막 문자가 \"동/로/가\"로 끝난다.\r\n");
      out.write("                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){\r\n");
      out.write("                    extraAddr += data.bname;\r\n");
      out.write("                }\r\n");
      out.write("                // 건물명이 있고, 공동주택일 경우 추가한다.\r\n");
      out.write("                if(data.buildingName !== '' && data.apartment === 'Y'){\r\n");
      out.write("                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);\r\n");
      out.write("                }\r\n");
      out.write("                // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.\r\n");
      out.write("                fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("            // 우편번호와 주소 정보를 해당 필드에 넣는다.\r\n");
      out.write("            document.getElementById('sample6_postcode').value = data.zonecode; //5자리 새우편번호 사용\r\n");
      out.write("            document.getElementById('sample6_address').value = fullAddr;\r\n");
      out.write("\r\n");
      out.write("            // 커서를 상세주소 필드로 이동한다.\r\n");
      out.write("            document.getElementById('sample6_address2').focus();\r\n");
      out.write("        }\r\n");
      out.write("    }).open();\r\n");
      out.write("}\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("function paygo(){\r\n");
      out.write("\tvar sample6_address=document.getElementById(\"sample6_address\").value.trim();\r\n");
      out.write("\tvar sample6_address2=document.getElementById(\"sample6_address2\").value.trim();\r\n");
      out.write("\tvar content=document.getElementById(\"content\").value.trim();\r\n");
      out.write("\tvar memo=document.getElementById(\"memo\").value.trim();\r\n");
      out.write("\tvar email=document.getElementById(\"email\").value.trim();\r\n");
      out.write("\tvar name=document.getElementById(\"name\").value.trim();\r\n");
      out.write("\tvar payment=document.getElementById(\"payment\").value.trim();\r\n");
      out.write("\tlocation.href=\"purchaseSuccess.jsp?content=\"+content+\"&email=\"+email+\"&name=\"+name+\"&payment=\"+payment+\"&sample6_address=\"+sample6_address+\"&sample6_address2\"+sample6_address2+\"&memo\"+memo;\r\n");
      out.write("}\r\n");
      out.write("</script>                                                             \r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }

  private boolean _jspx_meth_c_005fif_005f0(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_005fif_005f0 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    boolean _jspx_th_c_005fif_005f0_reused = false;
    try {
      _jspx_th_c_005fif_005f0.setPageContext(_jspx_page_context);
      _jspx_th_c_005fif_005f0.setParent(null);
      // /productPurchasePage.jsp(70,9) name = test type = boolean reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005fif_005f0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${userId==null}", boolean.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null)).booleanValue());
      int _jspx_eval_c_005fif_005f0 = _jspx_th_c_005fif_005f0.doStartTag();
      if (_jspx_eval_c_005fif_005f0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\r\n");
          out.write("           <div id=\"login\"><a href=\"login_Form.jsp\">로그인</a></div> \r\n");
          out.write("        ");
          int evalDoAfterBody = _jspx_th_c_005fif_005f0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_005fif_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
      _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.reuse(_jspx_th_c_005fif_005f0);
      _jspx_th_c_005fif_005f0_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_c_005fif_005f0, _jsp_getInstanceManager(), _jspx_th_c_005fif_005f0_reused);
    }
    return false;
  }

  private boolean _jspx_meth_c_005fif_005f1(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_005fif_005f1 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    boolean _jspx_th_c_005fif_005f1_reused = false;
    try {
      _jspx_th_c_005fif_005f1.setPageContext(_jspx_page_context);
      _jspx_th_c_005fif_005f1.setParent(null);
      // /productPurchasePage.jsp(73,8) name = test type = boolean reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005fif_005f1.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${userId!=null}", boolean.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null)).booleanValue());
      int _jspx_eval_c_005fif_005f1 = _jspx_th_c_005fif_005f1.doStartTag();
      if (_jspx_eval_c_005fif_005f1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write(" \r\n");
          out.write("           <div id=\"login\"><a href=\"logout.jsp\">로그아웃</a></div>\r\n");
          out.write("        ");
          int evalDoAfterBody = _jspx_th_c_005fif_005f1.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_005fif_005f1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
      _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.reuse(_jspx_th_c_005fif_005f1);
      _jspx_th_c_005fif_005f1_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_c_005fif_005f1, _jsp_getInstanceManager(), _jspx_th_c_005fif_005f1_reused);
    }
    return false;
  }
}