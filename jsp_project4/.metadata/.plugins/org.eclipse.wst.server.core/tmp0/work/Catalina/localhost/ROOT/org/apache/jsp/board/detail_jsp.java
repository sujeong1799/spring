/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.88
 * Generated at: 2023-05-31 12:53:27 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.board;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class detail_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("/WEB-INF/lib/taglibs-standard-impl-1.2.5.jar", Long.valueOf(1685537009070L));
    _jspx_dependants.put("jar:file:/D:/_jsp_workspace/jsp_project4/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/Minji_World/WEB-INF/lib/taglibs-standard-impl-1.2.5.jar!/META-INF/c.tld", Long.valueOf(1425946270000L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fc_005fout_0026_005fvalue_005fnobody;

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
    _005fjspx_005ftagPool_005fc_005fout_0026_005fvalue_005fnobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _005fjspx_005ftagPool_005fc_005fout_0026_005fvalue_005fnobody.release();
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    final java.lang.String _jspx_method = request.getMethod();
    if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
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

      out.write("\n");
      out.write("\n");
      out.write("<link\n");
      out.write("	href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css\"\n");
      out.write("	rel=\"stylesheet\"\n");
      out.write("	integrity=\"sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65\"\n");
      out.write("	crossorigin=\"anonymous\">\n");
      out.write("<!-- JavaScript Bundle with Popper -->\n");
      out.write("<script\n");
      out.write("	src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js\"\n");
      out.write("	integrity=\"sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4\"\n");
      out.write("	crossorigin=\"anonymous\"></script>\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<meta charset=\"UTF-8\">\n");
      out.write("<title>글 보는 중</title>\n");
      out.write("</head>\n");
      out.write("<body\n");
      out.write("	style=\"background-image: url('/image/배경화면.png'); background-repeat: no-repeat; background-attachment: fixed;\">\n");
      out.write("	<nav class=\"navbar\" style=\"background-color: #EFE6FF; border-bottom: 3px solid #E8D9FF;\">\n");
      out.write("		<div class=\"container-fluid\">\n");
      out.write("			<a class=\"navbar-brand\" href=\"/\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ses.id }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write(" Bunnies♥</a>\n");
      out.write("			<ul class=\"nav justify-content-end\">\n");
      out.write("				<li class=\"nav-item\"><a class=\"nav-link active\"\n");
      out.write("					aria-current=\"page\" href=\"/brd/page\">Bunnies Board</a></li>\n");
      out.write("				<li class=\"nav-item\"><a class=\"nav-link\" href=\"/mem/list\">Bunnies\n");
      out.write("						List</a></li>\n");
      out.write("				<li class=\"nav-item\"><a class=\"nav-link\" href=\"/mem/modify\">Bunnies\n");
      out.write("						edit</a></li>\n");
      out.write("				<li class=\"nav-item\"><a class=\"nav-link\" href=\"/mem/logout\">logout</a>\n");
      out.write("				</li>\n");
      out.write("			</ul>\n");
      out.write("		</div>\n");
      out.write("	</nav>\n");
      out.write("	<br>	\n");
      out.write("	<div style=\"width: 700px; margin: 0 auto; border: 1px solid; background-color: white; border-radius: 10px\" align=\"center\">\n");
      out.write("		<br>\n");
      out.write("\n");
      out.write("		<table class=\"table\" style=\"width: 600px;\">\n");
      out.write("			<thead class=\"table-group-divider\">\n");
      out.write("			</thead>\n");
      out.write("			<tbody>\n");
      out.write("				<tr>\n");
      out.write("					<th>글번호</th>\n");
      out.write("					<td>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${bvo.bno }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("</td>\n");
      out.write("					<th>제목</th>\n");
      out.write("					<td>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${bvo.title }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("</td>\n");
      out.write("				</tr>\n");
      out.write("				<tr>\n");
      out.write("					<th>작성자</th>\n");
      out.write("					<td>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${bvo.writer}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("</td>\n");
      out.write("					<th>작성일</th>\n");
      out.write("					<td>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${bvo.reg_date }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("</td>\n");
      out.write("				</tr>\n");
      out.write("				<tr>\n");
      out.write("					<th>조회수</th>\n");
      out.write("					<td>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${bvo.read_count }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("</td>\n");
      out.write("					<th>내용</th>\n");
      out.write("					<td colspan=\"10\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${bvo.content }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("</td>\n");
      out.write("				</tr>\n");
      out.write("			</tbody>\n");
      out.write("\n");
      out.write("		</table>\n");
      out.write("		<div align=\"center\">\n");
      out.write("			<img alt=\"없음\" src=\"/_fileUpload/");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${bvo.image_file }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\"\n");
      out.write("				style=\"width: 70%;\">\n");
      out.write("		</div>\n");
      out.write("\n");
      out.write("		<div align=\"center\">\n");
      out.write("			<br> <input type=\"text\" id=\"cmtWriter\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ses.id }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\"\n");
      out.write("				readonly=\"readonly\"> <input type=\"text\" id=\"cmtText\"\n");
      out.write("				placeholder=\"댓글을 작성해주세요.\">\n");
      out.write("			<button type=\"button\" id=\"cmtAddBtn\">댓글 등록</button>\n");
      out.write("		</div>\n");
      out.write("		<br>\n");
      out.write("		<hr>\n");
      out.write("\n");
      out.write("		<!-- 댓글 나타나는 부분 -->\n");
      out.write("		<div class=\"accordion accordion-flush\" id=\"accordionFlushExample\">\n");
      out.write("			<div class=\"accordion-item\">\n");
      out.write("				<h2 class=\"accordion-header\" id=\"flush-headingOne\">\n");
      out.write("					<button class=\"accordion-button collapsed\" type=\"button\"\n");
      out.write("						data-bs-toggle=\"collapse\" data-bs-target=\"#flush-collapseOne\"\n");
      out.write("						aria-expanded=\"false\" aria-controls=\"flush-collapseOne\">\n");
      out.write("						글번호, 작성자</button>\n");
      out.write("				</h2>\n");
      out.write("				<div id=\"flush-collapseOne\" class=\"accordion-collapse collapse\"\n");
      out.write("					aria-labelledby=\"flush-headingOne\"\n");
      out.write("					data-bs-parent=\"#accordionFlushExample\">\n");
      out.write("					<div class=\"accordion-body\">내용, 댓글작성일</div>\n");
      out.write("				</div>\n");
      out.write("			</div>\n");
      out.write("		</div>\n");
      out.write("	<br>\n");
      out.write("		<div align=\"center\">\n");
      out.write("			<a href=\"/brd/editPage?bno=");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${bvo.bno }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\"><button\n");
      out.write("					class=\"btn btn-outline-primary\">수정</button></a> <a\n");
      out.write("				href=\"/brd/remove?bno=");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${bvo.bno }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write(" \"><button\n");
      out.write("					class=\"btn btn-outline-primary\">삭제</button></a> <a href=\"/brd/page\"><button\n");
      out.write("					class=\"btn btn-outline-primary\">게시판 리스트</button></a>\n");
      out.write("		</div>\n");
      out.write("		<br>\n");
      out.write("	</div>\n");
      out.write("	<script type=\"text/javascript\">\n");
      out.write("		const bnoVal = `");
      if (_jspx_meth_c_005fout_005f0(_jspx_page_context))
        return;
      out.write("`;\n");
      out.write("	</script>\n");
      out.write("\n");
      out.write("	<!-- 링크로 달때는 타입 없어도 됨, board_detail.jsp에 연결하겠다는 의미  -->\n");
      out.write("	<script src=\"/resources/board_detail.js\"></script>\n");
      out.write("	<script type=\"text/javascript\">\n");
      out.write("		printCommentList(bnoVal);\n");
      out.write("	</script>\n");
      out.write("\n");
      out.write("</body>\n");
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

  private boolean _jspx_meth_c_005fout_005f0(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:out
    org.apache.taglibs.standard.tag.rt.core.OutTag _jspx_th_c_005fout_005f0 = (org.apache.taglibs.standard.tag.rt.core.OutTag) _005fjspx_005ftagPool_005fc_005fout_0026_005fvalue_005fnobody.get(org.apache.taglibs.standard.tag.rt.core.OutTag.class);
    boolean _jspx_th_c_005fout_005f0_reused = false;
    try {
      _jspx_th_c_005fout_005f0.setPageContext(_jspx_page_context);
      _jspx_th_c_005fout_005f0.setParent(null);
      // /board/detail.jsp(107,18) name = value type = null reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005fout_005f0.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${bvo.bno}", java.lang.Object.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      int _jspx_eval_c_005fout_005f0 = _jspx_th_c_005fout_005f0.doStartTag();
      if (_jspx_th_c_005fout_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
      _005fjspx_005ftagPool_005fc_005fout_0026_005fvalue_005fnobody.reuse(_jspx_th_c_005fout_005f0);
      _jspx_th_c_005fout_005f0_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_c_005fout_005f0, _jsp_getInstanceManager(), _jspx_th_c_005fout_005f0_reused);
    }
    return false;
  }
}
