package org.apache.jsp.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class admin_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/admin/../design/Unav.jsp");
    _jspx_dependants.add("/admin/../design/footer.jsp");
  }

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
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("  <head>\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("    <title>");
      out.print(Logic.path.name);
      out.write("</title>    \n");
      out.write("    <link href=\"../css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("  </head>\n");
      out.write("  <body class=\"bg-success\">\n");
      out.write("     \n");
      out.write("      ");
      out.write("<nav class=\"navbar navbar-default\">\n");
      out.write("  <div class=\"container-fluid\">\n");
      out.write("    \n");
      out.write("    <div class=\"navbar-header\">\n");
      out.write("        <a class=\"navbar-brand\">Live<small>");
      out.print(Logic.path.name);
      out.write("</small></a>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <!-- Collect the nav links, forms, and other content for toggling -->\n");
      out.write("    <div class=\"collapse navbar-collapse\" id=\"bs-example-navbar-collapse-1\">\n");
      out.write("        <ul class=\"nav navbar-nav\">\n");
      out.write("          \n");
      out.write("              <li><a href=\"user_home.jsp\">User Panel<span class=\"sr-only\">(current)</span></a></li>\n");
      out.write("              <li><a class=\"label label-info\" href=\"add_news_details.jsp\"><span class=\"badge\" style=\"background-color: whitesmoke;color:black\">Add News Details (<small>STEP 1</small></span></a></li>\n");
      out.write("             <li><a class=\"label label-success\" href=\"add_file.jsp\"><span class=\"badge\" style=\"background-color: whitesmoke;color:black\">Upload Image/Files (<small>STEP 2</small>)</span></a></li>\n");
      out.write("\n");
      out.write("<!--              <li><a class=\"label label-primary\" href=\"View_image.jsp\"><span class=\"badge\" style=\"background-color: whitesmoke;color:black\">View Image</span></a></li>-->\n");
      out.write("            <!--             <li><a class=\"label label-danger\" href=\"deletechng.jsp\"><span class=\"badge\" style=\"background-color: whitesmoke;color:black\">Delete Change</span></a></li>\n");
      out.write("              <li><a  href=\"feedback.jsp\">View Messages</a></li>-->\n");
      out.write("        </ul>\n");
      out.write("        \n");
      out.write("        <ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("            <li class=\"dropdown\">\n");
      out.write("              <a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\" role=\"button\" aria-haspopup=\"true\" aria-expanded=\"false\">Settings <span class=\"caret\"></span></a>\n");
      out.write("              <ul class=\"dropdown-menu\">\n");
      out.write("                \n");
      out.write("<!--                <li><a href=\"userman.jsp\">User Management</a></li>\n");
      out.write("                <li><a href=\"bookingstatus.jsp\">Check Booking Status</a></li>\n");
      out.write("                -->\n");
      out.write("                  \n");
      out.write("                 ");

                     if(session.getAttribute("user1")!=null)
                     {
                          
      out.write("<li><a href=\"../index.jsp\">Logout</a></li>");

                     }
                     else
                     {
                          
      out.write("<li><a href=\"login.jsp\">Login</a></li>");

                     }
                
      out.write("\n");
      out.write("                          \n");
      out.write("                          \n");
      out.write("              </ul>\n");
      out.write("            </li>\n");
      out.write("        </ul>\n");
      out.write("        \n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("</nav>");
      out.write("\n");
      out.write("     \n");
      out.write("           <div class=\"col-md-5 col-md-offset-3\" style=\"font-size: 40px\">\n");
      out.write("       \n");
      out.write("              \n");
      out.write("          \n");
      out.write("      </div>\n");
      out.write("      \n");
      out.write("    \n");
      out.write("      \n");
      out.write("     \n");
      out.write("             ");
      out.write("\n");
      out.write("</br></br></br></br>     \n");
      out.write("<nav class=\"nav navbar-default navbar-fixed-bottom\">\n");
      out.write("  <div class=\"container-fluid text-center\">\n");
      out.write("      <a class=\"label label-danger \" href=\"index.jsp\">Home</a>\n");
      out.write("      <a class=\"label label-danger \"  href=\"info.jsp\">Info</a>\n");
      out.write("\n");
      out.write("      <a class=\"label label-danger \"  href=\"about.jsp\">About us</a>\n");
      out.write("  </div>\n");
      out.write("</nav>");
      out.write("\n");
      out.write("    <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js\"></script>\n");
      out.write("    <script src=\"../js/bootstrap.min.js\"></script>\n");
      out.write("  </body>\n");
      out.write("</html>\n");
      out.write("\n");
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
