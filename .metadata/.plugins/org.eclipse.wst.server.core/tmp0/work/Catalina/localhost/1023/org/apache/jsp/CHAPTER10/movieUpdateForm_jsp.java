/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.0.47
 * Generated at: 2018-11-14 01:26:10 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.CHAPTER10;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import my.model.*;
import my.dao.*;
import java.sql.*;
import my.util.*;
import java.util.*;

public final class movieUpdateForm_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("jar:file:/C:/KPU_JSP2/ws/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/1023/WEB-INF/lib/jstl-1.2.jar!/META-INF/c.tld", Long.valueOf(1153352682000L));
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
  }

  public void _jspDestroy() {
    _005fjspx_005ftagPool_005fc_005fset_0026_005fvar_005fvalue_005fnobody.release();
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
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n");
      out.write("<title>1:1문의하기</title>\r\n");
      out.write("<link href=\"design.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("  <div class=\"page_header\">\r\n");
      out.write("    \t<div class=\"toplogo\"><a href=\"#\"><img src=\"images/top_logo.jpg\" width=\"276\" height=\"40\" alt=\"beautifullife\"></a>\r\n");
      out.write("      </div>\r\n");
      out.write("        <div class=\"topnav\">\r\n");
      out.write("        \t<ul>\r\n");
      out.write("            \t<li><a href=\"#\"><img src=\"images/top_menu1.jpg\" width=\"72\" height=\"24\" alt=\"ArtStory\"></a></li>\r\n");
      out.write("                <li><a href=\"#\"><img src=\"images/top_menu2.jpg\" width=\"76\" height=\"24\" alt=\"ArtStory\"></a></li>\r\n");
      out.write("                <li><a href=\"#\"><img src=\"images/top_menu3.jpg\" width=\"64\" height=\"24\" alt=\"ArtStory\"></a></li>\r\n");
      out.write("                <li><a href=\"#\"><img src=\"images/top_menu4.jpg\" width=\"134\" height=\"24\" alt=\"ArtStory\"></a></li>\r\n");
      out.write("                <li><a href=\"#\"><img src=\"images/top_menu5.jpg\" width=\"99\" height=\"24\" alt=\"ArtStory\"></a></li>\r\n");
      out.write("                <li><a href=\"#\"><img src=\"images/top_menu6.jpg\" width=\"52\" height=\"24\" alt=\"ArtStory\"></a></li>\r\n");
      out.write("            </ul>\r\n");
      out.write("        </div>\r\n");
      out.write("  </div>\r\n");
      out.write("     \r\n");
      out.write("     <div class=\"page_subimg\">\r\n");
      out.write("     \t<div class=\"subimgline\"></div>\r\n");
      out.write("        <div class=\"subimg\">\r\n");
      out.write("        \t<div id=\"apDivSubimg\"></div>\r\n");
      out.write("       </div>\r\n");
      out.write("     </div>\r\n");
      out.write("  \t<div class=\"page_content\">\r\n");
      out.write("    \t<div class=\"leftmenu\">\r\n");
      out.write("   \t    \t<img src=\"images/left_title.jpg\" width=\"152\" height=\"24\" alt=\"membership\"> \r\n");
      out.write("        \t<ul>\r\n");
      out.write("            \t<li></li>\r\n");
      out.write("            \t<li><a href=\"#\">고객등록</a></li>\r\n");
      out.write("                <li><a href=\"#\">아이디찾기</a></li>\r\n");
      out.write("                <li><a href=\"#\">비번찾기</a></li>\r\n");
      out.write("                <li><a href=\"#\">마이페이지</a></li>\r\n");
      out.write("                <li><a href=\"#\">1:1문의하기</a></li>\r\n");
      out.write("                <li><a href=\"#\">질문내역</a></li>\r\n");
      out.write("                <li><a href=\"#\">후기내역</a></li>\r\n");
      out.write("                <li><a href=\"#\">쿠폰내격</a></li>\r\n");
      out.write("                <li><a href=\"#\">적립금내역</a></li>\r\n");
      out.write("            </ul>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"rightcon\">\r\n");
      out.write("        \t<img src=\"images/title2.jpg\" width=\"464\" height=\"58\" alt=\"고객등록\">\r\n");
      out.write("            <div class=\"tablestyle\">\r\n");
      out.write("        ");

        	int movieId=Integer.parseInt(request.getParameter("movieId"));
        	Connection conn=ConnectionProvider.getConnection();
        	Movie movie=null;
        	try{
        		MovieDao dao=new MovieDao();
        		movie=dao.selectById(conn, movieId);
        	}catch(SQLException e){
        	}finally{
        		JdbcUtil.close(conn);
        	}
        
      out.write("\r\n");
      out.write("        ");
      //  c:set
      org.apache.taglibs.standard.tag.rt.core.SetTag _jspx_th_c_005fset_005f0 = (org.apache.taglibs.standard.tag.rt.core.SetTag) _005fjspx_005ftagPool_005fc_005fset_0026_005fvar_005fvalue_005fnobody.get(org.apache.taglibs.standard.tag.rt.core.SetTag.class);
      boolean _jspx_th_c_005fset_005f0_reused = false;
      try {
        _jspx_th_c_005fset_005f0.setPageContext(_jspx_page_context);
        _jspx_th_c_005fset_005f0.setParent(null);
        // /CHAPTER10/movieUpdateForm.jsp(64,8) name = var type = java.lang.String reqTime = false required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
        _jspx_th_c_005fset_005f0.setVar("movie");
        // /CHAPTER10/movieUpdateForm.jsp(64,8) name = value type = javax.el.ValueExpression reqTime = true required = false fragment = false deferredValue = true expectedTypeName = java.lang.Object deferredMethod = false methodSignature = null
        _jspx_th_c_005fset_005f0.setValue(movie);
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
      out.write("                  <form action=\"movieUpdate.jsp\" method=\"post\" enctype=\"multipart/form-data\" name=\"form1\">\r\n");
      out.write("                    <table width=\"680\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" id=\"registerform\">\r\n");
      out.write("                      <tr>\r\n");
      out.write("                        <th><label for=\"titlefield\">영화제목</label></th>\r\n");
      out.write("                        <td>\r\n");
      out.write("                        <input name=\"title\" type=\"text\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${movie.title}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\" size=\"70\"></td>\r\n");
      out.write("                      </tr>\r\n");
      out.write("                      <tr>\r\n");
      out.write("                        <th><label for=\"namefield\">제작사</label></th>\r\n");
      out.write("                        <td>\r\n");
      out.write("                        <input name=\"maker\" type=\"text\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${movie.maker}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\"></td>\r\n");
      out.write("                      </tr>\r\n");
      out.write("                      <tr>\r\n");
      out.write("                        <th><label for=\"price\">가격</label></th>\r\n");
      out.write("                        <td>\r\n");
      out.write("                        <input name=\"price\" cols=\"70\" rows=\"10\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${movie.price}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\"></td>\r\n");
      out.write("                      </tr>\r\n");
      out.write("                      <tr>\r\n");
      out.write("                        <th><label for=\"filefield\">영화포스터</label></th>\r\n");
      out.write("                        <td>\r\n");
      out.write("                        <input type=\"file\" name=\"movieImage\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${movie.movieImage}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\"></td>\r\n");
      out.write("                      </tr>\r\n");
      out.write("                      <input type=\"hidden\" name=\"movieId\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${movie.movieId}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\">\r\n");
      out.write("                      <tr>\r\n");
      out.write("                        <td height=\"30\" colspan=\"2\" align=\"center\" class=\"btnstyle\"> <input type=\"submit\" name=\"btn\" id=\"btn\" value=\"등록\">\r\n");
      out.write("                        <input type=\"reset\" name=\"cancel\" id=\"cancel\" value=\"취소\"></td>\r\n");
      out.write("                      </tr>\r\n");
      out.write("                    </table>\r\n");
      out.write("                  </form>\r\n");
      out.write("                </div>\r\n");
      out.write("         </div>\r\n");
      out.write("    </div>\r\n");
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
}
