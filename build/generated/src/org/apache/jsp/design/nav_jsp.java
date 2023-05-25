package org.apache.jsp.design;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class nav_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<div class=\"navbar navbar-default navbar-custom \" style=\"background-color:white\">\n");
      out.write("  <div class=\"container\" >\n");
      out.write("      <div class=\"navbar-header\" >\n");
      out.write("      <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\".navbar-collapse\">\n");
      out.write("        <span class=\"glyphicon glyphicon-menu-down\" aria-hidden=\"true\"></span>\n");
      out.write("      </button>\n");
      out.write("          <a class=\"navbar-brand\" href=\"index.jsp\"><span class=\"glyphicon glyphicon-film\"></span>Live <small>");
      out.print(Logic.path.name);
      out.write("</small></a>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"collapse navbar-collapse\">\n");
      out.write("      <ul class=\"nav navbar-nav\">\n");
      out.write("              <li><a href=\"index.jsp\">Home<span class=\"sr-only\">(current)</span></a></li>\n");
      out.write("<!--              <li><a href=\"nowshowing.jsp\">Now Showing</a></li>\n");
      out.write("              <li><a href=\"upcoming.jsp\">Upcoming here</a></li>-->\n");
      out.write("              <li><a href=\"news.jsp\">Enter</a></li>\n");
      out.write("              <li><a href=\"about.jsp\">About Us</a></li>\n");
      out.write("        <li class=\"divider\"></li>\n");
      out.write("      </ul>\n");
      out.write("      <ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("          <li>\n");
      out.write("              <a href=\"#\" class=\" dropdown-toggle\"  data-toggle=\"dropdown\">                  <span class=\"glyphicon glyphicon-user\">   </span>      <!--<img src=\"images/Anshuman.jpg\" height=\"20px\" width=\"30px\" style=\"border-radius:3em\" > -->                       </a>\n");
      out.write("               <ul class=\"dropdown-menu\">\n");
      out.write("               \n");
      out.write("                    ");

                     if(session.getAttribute("user1")!=null)
                     {
                         
      out.write("\n");
      out.write("                <li><a href=\"userpay.jsp\">Check Payment Details</a></li>\n");
      out.write("                <li><a href=\"user.jsp\">Change Account Info</a></li>");

                     }
                     else
                     {
                         
      out.write("<li><a >Please Login</a></li>");

                     }
                
      out.write("\n");
      out.write("                <li role=\"separator\" class=\"divider\"></li>\n");
      out.write("                \n");
      out.write("                ");

                     if(session.getAttribute("user1")!=null)
                     {
                          
      out.write("<li><a href=\"logout.jsp\">Logout</a></li>");

                     }
                     else
                     {
                          
      out.write("<li><a href=\"login.jsp\">Login</a></li>");

                     }
                
      out.write("  \n");
      out.write("                   \n");
      out.write("               </ul>\n");
      out.write("          </li>\n");
      out.write("      </ul>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("<!---\n");
      out.write("<nav class=\"navbar navbar-default\">\n");
      out.write("  <div class=\"container-fluid\">\n");
      out.write("    \n");
      out.write("    <div class=\"navbar-header\">\n");
      out.write("        <a class=\"navbar-brand\" href=\"index.jsp\">M<small>ovie</small> T<small>icket</small> B<small>ooking</small></a>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("     \n");
      out.write("    <div class=\"collapse navbar-collapse\" id=\"bs-example-navbar-collapse-1\">\n");
      out.write("        <ul class=\"nav navbar-nav\">\n");
      out.write("              <li class=\"active\"><a href=\"index.jsp\">Home<span class=\"sr-only\">(current)</span></a></li>\n");
      out.write("              <li><a href=\"nowshowing.jsp\">Now Showing</a></li>\n");
      out.write("              <li><a href=\"upcoming.jsp\">Upcoming here</a></li>\n");
      out.write("              <li><a href=\"feedback.jsp\">Feedback</a></li>\n");
      out.write("              <li><a href=\"about.jsp\">About Us</a></li>\n");
      out.write("        </ul>\n");
      out.write("    \n");
      out.write("        <ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("            <li class=\"dropdown\">\n");
      out.write("              <a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\" role=\"button\" aria-haspopup=\"true\" aria-expanded=\"false\">\n");
      out.write("                 Settings <span class=\"caret\"></span></a>\n");
      out.write("              <ul class=\"dropdown-menu\">\n");
      out.write("                   ");

                     if(session.getAttribute("user1")!=null)
                     {
                         
      out.write("\n");
      out.write("                <li><a href=\"userpay.jsp\">Check Payment Details</a></li>\n");
      out.write("                <li><a href=\"user.jsp\">Change Account Info</a></li>");

                     }
                     else
                     {
                         
      out.write("<li><a >Please Login</a></li>");

                     }
                
      out.write("\n");
      out.write("                <li role=\"separator\" class=\"divider\"></li>\n");
      out.write("                \n");
      out.write("                ");

                     if(session.getAttribute("user1")!=null)
                     {
                          
      out.write("<li><a href=\"logout.jsp\">Logout</a></li>");

                     }
                     else
                     {
                          
      out.write("<li><a href=\"login.jsp\">Login</a></li>");

                     }
                
      out.write("\n");
      out.write("              </ul>\n");
      out.write("            </li>\n");
      out.write("        </ul>\n");
      out.write("        \n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("</nav>\n");
      out.write("--->");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
