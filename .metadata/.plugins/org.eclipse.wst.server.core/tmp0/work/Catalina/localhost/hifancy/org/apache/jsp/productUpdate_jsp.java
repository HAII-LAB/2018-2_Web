/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.0.47
 * Generated at: 2018-12-11 23:12:36 UTC
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
import java.io.File;
import java.util.Enumeration;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.oreilly.servlet.MultipartRequest;
import java.awt.Image;
import com.sun.jimi.core.Jimi;
import com.sun.jimi.core.JimiException;
import com.sun.jimi.core.JimiUtils;

public final class productUpdate_jsp extends org.apache.jasper.runtime.HttpJspBase
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
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("java.util.Enumeration");
    _jspx_imports_classes.add("com.oreilly.servlet.multipart.DefaultFileRenamePolicy");
    _jspx_imports_classes.add("java.awt.Image");
    _jspx_imports_classes.add("com.sun.jimi.core.JimiException");
    _jspx_imports_classes.add("com.sun.jimi.core.Jimi");
    _jspx_imports_classes.add("com.sun.jimi.core.JimiUtils");
    _jspx_imports_classes.add("java.io.File");
    _jspx_imports_classes.add("com.oreilly.servlet.MultipartRequest");
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
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    \r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
      out.write("<head> \r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n");
      out.write("<title>하이팬시 - No.1 문구용품점</title>\r\n");
      out.write("<link href=\"hifancy.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n");
      out.write("<style type=\"text/css\">\r\n");
      out.write("a:link {\r\n");
      out.write("   color: #607D82;\r\n");
      out.write("   text-decoration: none;\r\n");
      out.write("}\r\n");
      out.write("a:visited {\r\n");
      out.write("   text-decoration: none;\r\n");
      out.write("   color: #607D82;\r\n");
      out.write("}\r\n");
      out.write("a:hover {\r\n");
      out.write("   text-decoration: underline;\r\n");
      out.write("   color: #607D82;\r\n");
      out.write("}\r\n");
      out.write("a:active {\r\n");
      out.write("   text-decoration: none;\r\n");
      out.write("   color: #607D82;\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
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
      out.write("      <div id=\"toplogo\"><a href=\"#\"><img src=\"images/pageheader_01.png\" width=\"248\" height=\"98\" /></a></div>\r\n");
      out.write("     <div id=\"searchinputcover\">\r\n");
      out.write("        <table width=\"800\" height=\"52\" cellpadding=\"3\" cellspacing=\"0\">\r\n");
      out.write("          <tr>\r\n");
      out.write("            <td width=\"910\"><span> <input type=\"text\" id=\"search\" name=\"search\" class=\"searchinput\"/></span></td>\r\n");
      out.write("            <td width=\"52\" align=\"center\"><input type=\"image\" src=\"images/search.png\" width=\"30\" height=\"30\" onclick=\"searchGo()\"/></td>\r\n");
      out.write("          </tr>\r\n");
      out.write("        </table></div>\r\n");
      out.write("      ");

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
        // /productUpdate.jsp(75,9) name = var type = java.lang.String reqTime = false required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
        _jspx_th_c_005fset_005f0.setVar("userId");
        // /productUpdate.jsp(75,9) name = value type = javax.el.ValueExpression reqTime = true required = false fragment = false deferredValue = true expectedTypeName = java.lang.Object deferredMethod = false methodSignature = null
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
      out.write("      <div id=\"topmenu\"><a href=\"#\" onmouseout=\"MM_swapImgRestore()\" onmouseover=\"MM_swapImage('Image16','','images/topmenu_01.png',1)\"><img src=\"images/topmenugray_01.png\" width=\"144\" height=\"62\" id=\"Image16\" /></a><a href=\"#\" onmouseout=\"MM_swapImgRestore()\" onmouseover=\"MM_swapImage('Image17','','images/topmenu_02.png',1)\"><img src=\"images/topmenugray_02.png\" width=\"162\" height=\"62\" id=\"Image17\" /></a><a href=\"#\" onmouseout=\"MM_swapImgRestore()\" onmouseover=\"MM_swapImage('Image18','','images/topmenu_03.png',1)\"><img src=\"images/topmenugray_03.png\" width=\"177\" height=\"62\" id=\"Image18\" /></a><a href=\"#\" onmouseout=\"MM_swapImgRestore()\" onmouseover=\"MM_swapImage('Image19','','images/topmenu_04.png',1)\"><img src=\"images/topmenugray_04.png\" width=\"180\" height=\"62\" id=\"Image19\" /></a><a href=\"#\" onmouseout=\"MM_swapImgRestore()\" onmouseover=\"MM_swapImage('Image20','','images/topmenu_05.png',1)\"><img src=\"images/topmenugray_05.png\" width=\"159\" height=\"62\" id=\"Image20\" /></a><a href=\"#\" onmouseout=\"MM_swapImgRestore()\" onmouseover=\"MM_swapImage('Image21','','images/topmenu_06.png',1)\"><img src=\"images/topmenugray_06.png\" width=\"161\" height=\"62\" id=\"Image21\" /></a></div>\r\n");
      out.write("       <div id=\"membercart\">\r\n");
      out.write("<div id=\"member\">\r\n");
      out.write("  <div align=\"center\"><a href=\"#\"><img src=\"images/pageheader_12.png\" width=\"86\" height=\"62\" /></a><br>\r\n");
      out.write("    <a href=\"#\">마이페이지</a></div>\r\n");
      out.write("</div>\r\n");
      out.write("      <div id=\"cart\">\r\n");
      out.write("        <div align=\"center\"><a href=\"#\"><img src=\"images/pageheader_10.png\" width=\"86\" height=\"62\" /></a><br>\r\n");
      out.write("        <a href=\"#\">장바구니</a></div>\r\n");
      out.write("      </div>\r\n");
      out.write("      </div>\r\n");
      out.write("</div> \r\n");
      out.write("      <div id=\"body2\">\r\n");
      out.write("        <div id=\"main\">\r\n");
      out.write("          ");
   
             String uploadPath = "C:\\KPU_JSP2\\ws\\hifancy\\WebContent\\product";//업로드할 이미지가 들어갈 파일명
             
             int maxSize = 1024 * 1024 * 10; // 한번에 올릴 수 있는 파일 용량 : 10M로 제한

            
            MultipartRequest multi = null;
            multi = new MultipartRequest(request, uploadPath, maxSize, "utf-8", new DefaultFileRenamePolicy());
            int productId = Integer.parseInt(multi.getParameter("productId"));
            String productname = multi.getParameter("productname");
            int productprice = Integer.parseInt(multi.getParameter("productprice"));
            String productType = multi.getParameter("productType");
            String productImage = multi.getOriginalFileName("productImage");
            String productInfo = multi.getParameter("productInfo");
            String fullName = "/hifancy/product/"+productImage;
            String orgImg = uploadPath+"\\"+productImage;
            

            Connection conn = ConnectionProvider.getConnection();
            Product product= new Product(productId, productname, productprice, productImage, productInfo, new java.util.Date(),productType);//객체생성 
            try{ 
            ProductDao dao = new ProductDao();
                dao.update(conn, product);
            }catch(SQLException e){
            }finally{
              JdbcUtil.close(conn);
           }
           
      out.write("\r\n");
      out.write("           \r\n");
      out.write("           <div id=\"pagetitle\"><img src=\"images/productupdate.png\" width=\"500\" height=\"159\" /></div>   \r\n");
      out.write("        <div id=\"registersuccess\" >\r\n");
      out.write("            <div id=\"registersuccessTitle\">\r\n");
      out.write("              <p>상품 수정이 완료되었습니다.</p>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div id=\"registersuccessContent\">\r\n");
      out.write("            <ul>\r\n");
      out.write("              <ul>\r\n");
      out.write("                <li>상품명: ");
      out.print( productname );
      out.write("</li>\r\n");
      out.write("                <li>상품가격: ");
      out.print( productprice );
      out.write(" </li>\r\n");
      out.write("                <li>상품설명: ");
      out.print( productInfo );
      out.write("</li>\r\n");
      out.write("               <li>상품이미지: <img src=\"/product/");
      out.print(productImage);
      out.write("\"><br> </li>\r\n");
      out.write("              </ul>\r\n");
      out.write("            </ul>\r\n");
      out.write("            </div>\r\n");
      out.write("          </div>\r\n");
      out.write("       <div id=\"catalog_go\">\r\n");
      out.write("             <input type=\"hidden\" name=\"type\" id=\"type\" value=\"");
      out.print(productType);
      out.write("\"/>\r\n");
      out.write("             <img src=\"images/cataloggo.png\" onclick=\"goBack()\"/>\r\n");
      out.write("       </div>\r\n");
      out.write("        \r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("function goBack(){\r\n");
      out.write("   var type=document.getElementById(\"type\").value.trim();\r\n");
      out.write("   if(type==\"문구\"){\r\n");
      out.write("         type=1;\r\n");
      out.write("     }else if(type==\"인형/토이\"){\r\n");
      out.write("        type=2;\r\n");
      out.write("     }else if(type==\"리빙/데코\"){\r\n");
      out.write("        type=3;\r\n");
      out.write("     }else if(type==\"주방용품\"){\r\n");
      out.write("        type=4;\r\n");
      out.write("     }else{\r\n");
      out.write("     }\r\n");
      out.write("    location.href='productCatalogType.jsp?type='+type;\r\n");
      out.write("}  \r\n");
      out.write("  \r\n");
      out.write("</script>\r\n");
      out.write("  </div>\r\n");
      out.write("   </div>\r\n");
      out.write("<div id=\"footer\"><img src=\"images/mainpage_39.png\" width=\"1920\" height=\"326\" /></div>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
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
      // /productUpdate.jsp(76,9) name = test type = boolean reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
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
      // /productUpdate.jsp(79,8) name = test type = boolean reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
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
