package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import DBQuery.DBConnect;
import java.sql.*;

public final class news_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/design/nav.jsp");
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

      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("  <head>\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("    <!-- Title is linked & stored in \n");
      out.write("    Package(Login)in Class(Path)in variable(name)-->\n");
      out.write("    <title>");
      out.print(Logic.path.name);
      out.write("</title>    \n");
      out.write("    <link href=\"css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("  </head>\n");
      out.write("  <body>\n");
      out.write("     \n");
      out.write("      <!-- At load of page fields are empty\n");
      out.write("      After field are filled, it will display \n");
      out.write("      Registration Successful or Failed-->\n");
      out.write("      \n");
      out.write("      ");

          String message="";
          if(session.getAttribute("msg")!=null)
          {
          
          message=session.getAttribute("msg").toString();
          }
          
          
          
      out.write("\n");
      out.write("      ");
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
      out.write("\n");
      out.write("   <div>\n");
      out.write("      \n");
      out.write("   </div>\n");
      out.write("\n");
      out.write("<br>\n");
      out.write("<br>\n");
      out.write("\n");
      out.write("<div>\n");
      out.write("    <div class=\"row\">\n");
      out.write("        <div class=\"col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4\">\n");
      out.write("            <div class=\"panel panel-default\">\n");
      out.write("                <div class=\"panel-heading\">\n");
      out.write("                    <h3 class=\"panel-title\">Select Category<small> Latest</small>");
      out.print(message);
      out.write("</h3>\n");
      out.write("                    \n");
      out.write("                </div>\n");
      out.write("                <div class=\"panel-body\">\n");
      out.write("                    <!--what does form action = ./sign up do here?-->\n");
      out.write("                        <form  action=\"view_news.jsp\" method=\"post\">\n");
      out.write("            \n");
      out.write("                \n");
      out.write("                \n");
      out.write("                \n");
      out.write("             \n");
      out.write("\t\t\t  \n");
      out.write("            \n");
      out.write("                \n");
      out.write("                \n");
      out.write("              <div class=\"row\">\n");
      out.write("\t\t<div class=\"col-xs-6 col-sm-6 col-md-12\">\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                    <label class=\"label label-default\">News Category</label>\n");
      out.write("                    <select class=\"form-control input-sm\" name=\"icat\">\n");
      out.write("                            <option value=\"Politics\">Politics</option>\n");
      out.write("                            <option value=\"Health\">Health</option>\n");
      out.write("                            <option value=\"Science\">Science</option>\n");
      out.write("                            <option value=\"Economy\">Economy</option>\n");
      out.write("                   </select>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("              </div>\n");
      out.write("                            \n");
      out.write("                            \n");
      out.write("              \n");
      out.write("                <input type=\"submit\" value=\"Proceed\" class=\"btn btn-info btn-block\" >\n");
      out.write("         </form>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</div>\n");
      out.write("     \n");
      out.write("\n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("    <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js\"></script>\n");
      out.write("    <script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("  </body>\n");
      out.write("</html>\n");
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
