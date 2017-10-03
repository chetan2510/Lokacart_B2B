package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class test_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        ");
      out.write("\n");
      out.write("        <style>\n");
      out.write("            \n");
      out.write("    \n");
      out.write("    img\n");
      out.write("    {\n");
      out.write("         opacity: 0.8;\n");
      out.write("        width:70px;height: 70px;\n");
      out.write("         -webkit-box-reflect: below 0px -webkit-gradient(linear, left top, left bottom, from(transparent), color-stop(.7, transparent), to(rgba(0,0,0,0.1)));\n");
      out.write("  \n");
      out.write("    } \n");
      out.write("    .imgs:hover\n");
      out.write("\n");
      out.write("    {\n");
      out.write("        opacity: 1;\n");
      out.write("        transform: scale(1.1,1.1);\n");
      out.write("        -webkit-box-shadow: 0px 0px 20px rgba(255,255,255,0.8);\n");
      out.write("        -moz-box-shadow: 0px 0px 20px rgba(255,255,255,0.8);\n");
      out.write("        box-shadow: 0px 0px 20px rgba(255,255,255,0.8);\n");
      out.write("         -webkit-box-reflect: below 0px -webkit-gradient(linear, left top, left bottom, from(transparent), color-stop(.7, transparent), to(rgba(5,2,2,1.4)));\n");
      out.write("    }\n");
      out.write("   \n");
      out.write("</style>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("       <link href=\"bootstrap.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <script src=\"js/jquery-1.12.2.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"js/bootstrap.js\" type=\"text/javascript\"></script>\n");
      out.write("        <title>USER Login</title>\n");
      out.write("        <script>\n");
      out.write("            $(document).ready(function()\n");
      out.write("            {\n");
      out.write("                go();\n");
      out.write("            });\n");
      out.write("            function po()\n");
      out.write("            {\n");
      out.write("                 var depart = document.getElementById(\"depart\").value;\n");
      out.write("                xmlhttp = new XMLHttpRequest();\n");
      out.write("                xmlhttp.onreadystatechange = function()\n");
      out.write("                {\n");
      out.write("                    if (xmlhttp.readyState == 4 && xmlhttp.status == 200)\n");
      out.write("                    {\n");
      out.write("                        var res = xmlhttp.responseText;\n");
      out.write("                        res = res.trim();\n");
      out.write("                        document.getElementById(\"coursediv\").innerHTML = res;\n");
      out.write("                    }\n");
      out.write("                };\n");
      out.write("                xmlhttp.open(\"GET\", \"usercourseadd.jsp?cat=\"+depart, true);\n");
      out.write("                xmlhttp.send();\n");
      out.write("            }\n");
      out.write("            function goo()\n");
      out.write("            {\n");
      out.write("                var p1=document.getElementById(\"p1\").value;\n");
      out.write("                var cp1=document.getElementById(\"cp1\").value;\n");
      out.write("                if(p1!=cp1)\n");
      out.write("                {\n");
      out.write("                    document.getElementById(\"p1\").value=\"\";\n");
      out.write("                    document.getElementById(\"cp1\").value=\"\";\n");
      out.write("                    alert(\"password and confirmed password does not match!!\")\n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("                }\n");
      out.write("                \n");
      out.write("                    \n");
      out.write("            }\n");
      out.write("            \n");
      out.write("        </script>\n");
      out.write("    </head>\n");
      out.write("    <body >\n");
      out.write("        ");
      out.write("\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"col-sm-6\">\n");
      out.write("                <h1 style=\"color: blue\">User Login</h1>\n");
      out.write("                \n");
      out.write("          <form action=\"check_username.jsp\" method=\"post\">\n");
      out.write("            \n");
      out.write("            <div class=\"form-group\">\n");
      out.write("                Email Id\n");
      out.write("                <input type=\"text\" class=\"form-control\" name=\"email\" style=\"color:blue\" required=\"\"/>\n");
      out.write("            </div>   \n");
      out.write("\n");
      out.write("            <div class=\"form-group\">\n");
      out.write("                Password\n");
      out.write("         <input type=\"password\" class=\"form-control\" name=\"password\" style=\"color:blue\" required/>\n");
      out.write("         </div>   \n");
      out.write("            <div class=\"form-group\"> \n");
      out.write("                <input type=\"submit\" value=\"login\" class=\"btn btn-success\" /><br><br>\n");
      out.write("         <a href=\"user_login.jsp?msg=noemail\" class=\"btn btn-info\">SIGN UP</a>\n");
      out.write("         <a href=\"user_recoverpassword.jsp\" class=\"btn btn-info\">RECOVER PASSWORD</a>\n");
      out.write("            </div>\n");
      out.write("              \n");
      out.write("         </form>\n");
      out.write("               \n");
      out.write("                 ");

                  String msg=request.getParameter("msg");
                  if(msg!=null)
                  {
                  if(msg.equals("noemail"))
                  {
                   
      out.write("\n");
      out.write("                   <input type=\"text\" id=\"check\" value=\"noemail\" hidden />\n");
      out.write("                   ");

                  }
                  else
                  {
                   
      out.write("\n");
      out.write("                     <h1>");
      out.print(msg);
      out.write("</h1>\n");
      out.write("                   ");

                  }
                 }
                 
      out.write("\n");
      out.write("            </div>\n");
      out.write("           \n");
      out.write("           \n");
      out.write("         <div class=\"col-sm-6\"></div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("           <div class=\"modal\" id=\"myModal\" >\n");
      out.write("        <div class=\"modal-dialog\">\n");
      out.write("            <!-- Modal content-->\n");
      out.write("            <div class=\"modal-content\">\n");
      out.write("                <div class=\"modal-header\">\n");
      out.write("                    <button type=\"button\" class=\"close\" data-dismiss=\"modal\">&times;</button>\n");
      out.write("                    <h4 class=\"modal-title\">NOT A USER, SIGN UP NOW </h4>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"modal-body\">\n");
      out.write("                    <form action=\"add_user_details.jsp\" method=\"post\">\n");
      out.write("                        <table class=\"table table-hover\">\n");
      out.write("                            <tr>\n");
      out.write("                                <td>USER NAME</td> \n");
      out.write("                                <td><input type=\"text\" name=\"username\" class=\"form-control\" required></td> \n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>EMAIL</td> \n");
      out.write("                                <td><input type=\"text\" name=\"email\" class=\"form-control\" required ></td> \n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>PASSWORD</td> \n");
      out.write("                                <td><input type=\"password\" name=\"password\" class=\"form-control\" id=\"p1\" required></td> \n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>CONFIRM PASSWORD</td> \n");
      out.write("                                <td><input type=\"password\" name=\"confirmpassword\" class=\"form-control\" id=\"cp1\" required></td> \n");
      out.write("                            </tr>\n");
      out.write("                             <tr>\n");
      out.write("                                <td>PHONE NUMBER(+91)</td> \n");
      out.write("                                <td><input type=\"number\" name=\"phone\" class=\"form-control\" onclick=\"goo()\" required></td> \n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>DEPARTMENT</td> \n");
      out.write("                                ");

                                   try {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conn
                            = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/test", "root", "system");
                    Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
                            ResultSet.CONCUR_UPDATABLE);
                    ResultSet rs = stmt.executeQuery("select * from department");
                    
      out.write("\n");
      out.write("                    <td><select name=\"department\" class=\"form-control\" id=\"depart\" onchange=\"po()\" required>\n");
      out.write("                            <option>---Select Department---</option>\n");
      out.write("                            ");

                                while (rs.next()) {
                              
      out.write("\n");
      out.write("\n");
      out.write("                            <option >");
      out.print(rs.getString("department_name"));
      out.write("</option>\n");
      out.write("                            ");


                                    }
                                } catch (Exception ex) {
                                    ex.printStackTrace();
                                }

                            
      out.write(" \n");
      out.write("                        </select></td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>COURSE</td> \n");
      out.write("                                <td><div id=\"coursediv\"></div></td> \n");
      out.write("                            </tr>\n");
      out.write("                             <tr>\n");
      out.write("                                <td></td> \n");
      out.write("                                <td><input type=\"submit\" value=\"SIGN UP\" class=\"btn btn-success\"></td> \n");
      out.write("                             </tr>\n");
      out.write("                        </table>\n");
      out.write("                    </form>\n");
      out.write("                  </div>\n");
      out.write("                \n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("                 \n");
      out.write("     <script>\n");
      out.write("            function go()\n");
      out.write("            {\n");
      out.write("                if(document.getElementById(\"check\").value==\"noemail\")\n");
      out.write("                {\n");
      out.write("                   $('#myModal').modal('show');\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("        </script>\n");
      out.write("         ");
      out.write("\n");
      out.write("     </body>\n");
      out.write("    \n");
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
