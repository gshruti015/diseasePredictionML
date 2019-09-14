package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.util.*;
import java.sql.SQLException;
import java.sql.SQLException;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE HTML>\n");
      out.write("<!-- Website Template by freewebsitetemplates.com -->\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("\t<meta charset=\"UTF-8\">\n");
      out.write("\t<title>Drug Science </title>\n");
      out.write("                <link href='http://fonts.googleapis.com/css?family=Mr+Dafoe' rel='stylesheet' type='text/css'>\n");
      out.write("\t<link href='http://fonts.googleapis.com/css?family=Amaranth:700' rel='stylesheet' type='text/css'>\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"css/component.css\" />\n");
      out.write("\t\n");
      out.write("\t<link rel=\"stylesheet\" href=\"css/slider.css\" />\n");
      out.write("\t<link rel=\"stylesheet\" href=\"css/style.css\" type=\"text/css\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/sideMenuIcons.css\" />\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"css/sideMenu.css\" />\n");
      out.write("        <script src=\"js/modernizr.custom.js\"></script>\n");
      out.write("        <script src=\"js/borderMenu.js\"></script>\n");
      out.write("        <script src=\"js/classie.js\"></script>\n");
      out.write("       <script src=\"js/modernizr.custom.sidemenu.js\"></script>\n");
      out.write("        \n");
      out.write("\t<!--[if IE 7]>\n");
      out.write("\t\t<link rel=\"stylesheet\" href=\"css/ie7.css\" type=\"text/css\">\n");
      out.write("\t<![endif]-->\n");
      out.write("\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\t<div id=\"header\">\n");
      out.write("\t\t<div>\n");
      out.write("                   \n");
      out.write("\t\t\t<div>\n");
      out.write("\t\t\t\t<span>A healthy heart means a healthy life...</span>\n");
      out.write("\t\t\t\t<a href=\"index.jsp\" class=\"logo\"><img src=\"images/logo.png\" alt=\"\"></a>\n");
      out.write("\t\t\t\t<span class=\"tagline\">Experience life to the fullest.</span>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<ul>\n");
      out.write("\t\t\t\t<li class=\"selected\">\n");
      out.write("\t\t\t\t\n");
      out.write("\t\t\t\t\t<a href=\"index.jsp\">home</a>\n");
      out.write("\t\t\t\t</li>\n");
      out.write("\t\t\t\t<li>\n");
      out.write("\t\t\t\t\t<a href=\"about.jsp\">about</a>\n");
      out.write("\t\t\t\t</li>\n");
      out.write("\t\t\t\t\n");
      out.write("\t\t\t\t<li>\n");
      out.write("\t\t\t\t\t<a href=\"services.jsp\">services</a>\n");
      out.write("\t\t\t\t</li>\n");
      out.write("\t\t\t\t<li>\n");
      out.write("\t\t\t\t\t<a href=\"forms.jsp\">Search</a>\n");
      out.write("\t\t\t\t</li>\n");
      out.write("                         \n");
      out.write("\t\t\t\t<li>\n");
      out.write("\t\t\t\t\t<a href=\"input.jsp\">Input</a>\n");
      out.write("\t\t\t\t</li>\n");
      out.write("\t\t\t\t<li>\n");
      out.write("\t\t\t\t\t<a href=\"contact.jsp\">contact</a>\n");
      out.write("\t\t\t\t</li>\n");
      out.write("\t\t\t\t<li>\n");
      out.write("\t\t\t\t\t<a href=\"blog.jsp\">blog</a>\n");
      out.write("\t\t\t\t</li>\n");
      out.write("\t\t\t</ul>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("\t<div id=\"body\">\n");
      out.write("\t\t<div class=\"\">\n");
      out.write("\t\t\t<!--<div>\n");
      out.write("\t\t\t\t<img src=\"images/biking.jpg\" alt=\"\">\n");
      out.write("\t\t\t\t<ul>\n");
      out.write("\t\t\t\t\t<li>\n");
      out.write("\t\t\t\t\t\t<a href=\"services.jsp\">we truly care</a>\n");
      out.write("\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t<li>\n");
      out.write("\t\t\t\t\t\t<a href=\"services.jsp\">modern equipments</a>\n");
      out.write("\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t<li>\n");
      out.write("\t\t\t\t\t\t<a href=\"about.jsp\">highly trained proffesionals</a>\n");
      out.write("\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t<li>\n");
      out.write("\t\t\t\t\t\t<a href=\"blog.jsp\">fast and accurate results</a>\n");
      out.write("\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t</ul>\n");
      out.write("\t\t\t</div>-->\n");
      out.write("                        \t<section id=\"slideshow\">\n");
      out.write("\t\t\n");
      out.write("\t\t<div class=\"container\">\n");
      out.write("\t\t\t<div class=\"c_slider\"></div>\n");
      out.write("\t\t\t<div class=\"slider\">\n");
      out.write("\t\t\t\t<figure>\n");
      out.write("\t\t\t\t\t<img src=\"images/dummy1-640x310-1.jpg\" alt=\"\" style=\"width:900px;height:310px;\"/>\n");
      out.write("\t\t\t\t\t<figcaption>Waking Life</figcaption>\n");
      out.write("\t\t\t\t</figure><!--\n");
      out.write("\t\t\t\t--><figure>\n");
      out.write("\t\t\t\t\t<img src=\"images/ot.jpg\" alt=\"\" style=\"width:900px;height:310px;\" />\n");
      out.write("\t\t\t\t\t<figcaption>Leading The Way To Future Of Health</figcaption>\n");
      out.write("\t\t\t\t</figure><!--\n");
      out.write("\t\t\t\t--><figure>\n");
      out.write("\t\t\t\t\t<img src=\"images/sht.jpg\" alt=\"\" style=\"width:900px;height:310px;\" />\n");
      out.write("\t\t\t\t\t<figcaption>Dreaming Of Healthy Lives</figcaption>\n");
      out.write("\t\t\t\t</figure><!--\n");
      out.write("\t\t\t\t--><figure>\n");
      out.write("\t\t\t\t\t<img src=\"images/stay-active.jpg\" alt=\"\" style=\"width:900px;height:310px;\"  />\n");
      out.write("\t\t\t\t\t<figcaption>Join Our 7 Million Campaign </figcaption>\n");
      out.write("\t\t\t\t</figure>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t\n");
      out.write("\t\t\n");
      out.write("\t\t<ul class=\"dots_commands\"><!--\n");
      out.write("\t\t\t--><li><a title=\"Show slide 1\" href=\"#sl_i1\">Slide 1</a></li><!--\n");
      out.write("\t\t\t--><li><a title=\"Show slide 2\" href=\"#sl_i2\">Slide 2</a></li><!--\n");
      out.write("\t\t\t--><li><a title=\"Show slide 3\" href=\"#sl_i3\">Slide 3</a></li><!--\n");
      out.write("-->\t\t\t <li><a title=\"Show slide 4\" href=\"#sl_i4\">Slide 4</a></li>\n");
      out.write("\t\t</ul>\n");
      out.write("\t\t\n");
      out.write("\t</section>\n");
      out.write("\t\t</div>\n");
      out.write("            \n");
      out.write("\n");
      out.write("\t\t<div class=\"body\">\n");
      out.write("\t\t\t<div class=\"section\">\n");
      out.write("\t\t\t\t<div class=\"article\">\n");
      out.write("\t\t\t\t\t<h2>Welcome to Drug Science Center !</h2>\n");
      out.write("\t\t\t\t\t<img src=\"images/heart.jpg\" alt=\"\">\n");
      out.write("\t\t\t\t\t<p>\n");
      out.write("                                                \n");
      out.write("\t\t\t\t\t\tDrug Science has again redefined what a health assessment can be. Making it brief (15 minutes or less to complete), highly visual and interactive was just the beginning. The new DrugScience Compass health assessment is unique in that it enables consumers to update their assessment?in whole or in part?any time during the year, creating the first truly evergreen assessment linked to a real-time personalization and prioritization engine. \n");
      out.write("                                        <h2>Visit Our Pages On Specified Links ! </h2>\n");
      out.write("\t\t\t\t\t</p>\n");
      out.write("                                        <p>\n");
      out.write("                                            <a href=\"cancer.jsp\"><h2>Cancer</h2></a>\n");
      out.write("                                            <a href=\"heart.jsp\"><h2>Heart Attack</h2></a>\n");
      out.write("                                            <a href=\"childbirth.jsp\"><h2>Childbirth</h2></a>\n");
      out.write("                                        </p>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("                            \t\t<div class=\"aside\">\n");
      out.write("\t\t\t\t<b>Common Drugs And Their Price </b>\n");
      out.write("                                       \n");
      out.write("                                           <marquee  behavior=\"scroll\" direction=\"up\" scrollamount=\"1\">\n");
      out.write("                                                                <table style=\"width:100%\">\n");
      out.write("                                                                               ");
 
                                             Connection conn1;
                        ResultSet rs12;
                        Statement stmt1;
             try {
                        Class.forName("com.mysql.jdbc.Driver");
             conn1=DriverManager.getConnection("jdbc:mysql://localhost:3306/work","root","");
             stmt1=conn1.createStatement();
                        int i=0;
             String qry12="select * from minor " ;
             rs12=stmt1.executeQuery(qry12);
                                            
                                   while (rs12.next() )
                 
             { 
      out.write("\n");
      out.write("              <table style=\"width:100%\">\n");
      out.write(" \n");
      out.write("  \n");
      out.write("            \n");
      out.write("\n");
      out.write("  <tr>\n");
      out.write("    <td align=\"left\">");
out.println(rs12.getString("disease"));
      out.write("</td>\n");
      out.write("    <td></td>\n");
      out.write("    <td></td>\n");
      out.write("    <td  align=\"right\">");
out.println(rs12.getString("drug"));
      out.write(" </td>\n");
      out.write("    <td></td>\n");
      out.write("    <td></td>\n");
      out.write("    <td  align=\"right\">");
out.println(rs12.getString("cost"));
      out.write(" </td>\n");
      out.write("  </tr>\n");
      out.write("\n");
      out.write("</table>\n");
      out.write("\n");
      out.write("       ");
       i++ ;
             }
              
             
             
             }
             catch (SQLException e)
             {
             out.println(e);
             
             }
             catch (Exception e)
             {
             out.println(e);
             }
             
                        
                                 
                                            
                                            
                                            
                                            
      out.write("\n");
      out.write("                                           \n");
      out.write("                                            \n");
      out.write("                                        </marquee>\n");
      out.write("                                        </div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("                                          \n");
      out.write("            \n");
      out.write("\t\t<div class=\"container\">\n");
      out.write("\n");
      out.write("\t\t\t<div class=\"wrapper\">\n");
      out.write("\t\t\t\t<ul class=\"stage clearfix\">\n");
      out.write("                                  \n");
      out.write("\t\t\t\t\t<li class=\"scene\">\n");
      out.write("                                              \n");
      out.write("\t\t\t\t\t\t<div class=\"movie\" onclick=\"return true\">\n");
      out.write("\t\t\t\t\t\t\t<div class=\"poster\"></div>\n");
      out.write("\t\t\t\t\t\t\t<div class=\"info\">\n");
      out.write("\t\t\t\t\t\t\t\t<header>\n");
      out.write("\t\t\t\t\t\t\t\t\t<h1>CANCER</h1>\n");
      out.write("\t\t\t\t\t\t\t\t\t<span class=\"year\">Save Yourself</span>\n");
      out.write("\t\t\t\t\t\t\t\t\t<span class=\"rating\">NR</span>\n");
      out.write("\t\t\t\t\t\t\t\t\t<span class=\"duration\">56</span>\n");
      out.write("\t\t\t\t\t\t\t\t</header>\n");
      out.write("\t\t\t\t\t\t\t\t<p>\n");
      out.write("\t\t\t\t\t\t\t\t\tCancer, known medically as malignant neoplasia, is a broad group of diseases involving unregulated cell growth. In cancer, cells divide and grow uncontrollably, forming malignant tumors, which may invade nearby parts of the body. The cancer may also spread to more distant parts of the body through the lymphatic system or bloodstream. \n");
      out.write("\t\t\t\t\t\t\t\t</p>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t</li>\n");
      out.write("\n");
      out.write("\t\t\t\t\t<li class=\"scene\">\n");
      out.write("\t\t\t\t\t\t<div class=\"movie\" onclick=\"return true\">\n");
      out.write("\t\t\t\t\t\t\t<div class=\"poster\"></div>\n");
      out.write("\t\t\t\t\t\t\t<div class=\"info\">\n");
      out.write("\t\t\t\t\t\t\t\t<header>\n");
      out.write("\t\t\t\t\t\t\t\t\t<h1>HEART ATTACK</h1>\n");
      out.write("\t\t\t\t\t\t\t\t\t<span class=\"year\">Old Age</span>\n");
      out.write("\t\t\t\t\t\t\t\t\t<span class=\"rating\">NR</span>\n");
      out.write("\t\t\t\t\t\t\t\t\t<span class=\"duration\">83</span>\n");
      out.write("\t\t\t\t\t\t\t\t</header>\n");
      out.write("\t\t\t\t\t\t\t\t<p>\n");
      out.write("\t\t\t\t\t\t\t\t\tCardiovascular disease refers to any disease that affects the cardiovascular system, principally cardiac disease, vascular diseases of the brain and kidney, and peripheral arterial disease.\n");
      out.write("\t\t\t\t\t\t\t\t</p>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t</li>\n");
      out.write("\n");
      out.write("\t\t\t\t\t<li class=\"scene\">\n");
      out.write("\t\t\t\t\t\t<div class=\"movie\" onclick=\"return true\">\n");
      out.write("\t\t\t\t\t\t\t<div class=\"poster\"></div>\n");
      out.write("\t\t\t\t\t\t\t<div class=\"info\">\n");
      out.write("\t\t\t\t\t\t\t\t<header>\n");
      out.write("\t\t\t\t\t\t\t\t\t<h1>CHILD CARE</h1>\n");
      out.write("\t\t\t\t\t\t\t\t\t<span class=\"year\">Maternity</span>\n");
      out.write("\t\t\t\t\t\t\t\t\t<span class=\"rating\">NR</span>\n");
      out.write("\t\t\t\t\t\t\t\t\t<span class=\"duration\">95</span>\n");
      out.write("\t\t\t\t\t\t\t\t</header>\n");
      out.write("\t\t\t\t\t\t\t\t<p>\n");
      out.write("                                                              \tChildbirth, labour, delivery, birth, partus, or parturition is the culmination of a period of pregnancy with the expulsion of one or more newborn infants from a woman's uterus. The process of normal childbirth is categorized in three stages of labour: the shortening and dilation of the cervix, descent and birth of the infant, and birth of the placenta.\n");
      out.write("\t\t\t\t\t\t\t\t</p>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t</li>\n");
      out.write("\n");
      out.write("\t\t\t\t</ul>\n");
      out.write("\t\t\t</div><!-- /wrapper -->\n");
      out.write("\t\t</div><!-- /container -->\n");
      out.write("                \n");
      out.write("             \n");
      out.write("\t\t<div class=\"footer\">\n");
      out.write("\t\t\t<div>\n");
      out.write("\t\t\t\t<a href=\"about.jsp\"><img src=\"images/doctors.jpg\" alt=\"\"></a>\n");
      out.write("\t\t\t\t<h3>our doctors</h3>\n");
      out.write("\t\t\t\t<p>\n");
      out.write("\t\t\t\t\tHave you always been curious as to what the day-to-day life of a doctor truly entails?<br>Our advanced program integration capability lets you seamlessly blend .\n");
      out.write("                                        \n");
      out.write("\t\t\t\t</p>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<div>\n");
      out.write("\t\t\t\t<a href=\"services.jsp\"><img src=\"images/what-can-we-do.jpg\" alt=\"\"></a>\n");
      out.write("\t\t\t\t<h3>what we can do for you</h3>\n");
      out.write("\t\t\t\t<p>\n");
      out.write("\t\t\t\t\tWe plan on providing services to layman users having no information about from what they suffering but everyone can feel symptoms. \n");
      out.write("\t\t\t\t</p>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<div>\n");
      out.write("\t\t\t\t<a href=\"contact.jsp\"><img src=\"images/where-you-can-find.jpg\" alt=\"\"></a>\n");
      out.write("\t\t\t\t<h3>where you can find us</h3>\n");
      out.write("\t\t\t\t<p>\n");
      out.write("\t\t\t\t\tRequest information, get a physician referral, or simply comment on how we are doing. You can reach us in the following ways:\n");
      out.write("\t\t\t\t</p>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("\t<div id=\"footer\">\n");
      out.write("\t\t<div>\n");
      out.write("\t\t\t<p>\n");
      out.write("\t\t\t\tCopyright &copy; <a href=\"index.jsp\">Drug Science Center</a>\n");
      out.write("\t\t\t</p>\n");
      out.write("\t\t\t<ul>\n");
      out.write("\t\t\t\t<li>\n");
      out.write("\t\t\t\t\t<a href=\"index.jsp\">home</a>\n");
      out.write("\t\t\t\t</li>\n");
      out.write("\t\t\t\t<li>\n");
      out.write("\t\t\t\t\t<a href=\"about.jsp\">about</a>\n");
      out.write("\t\t\t\t</li>\n");
      out.write("\t\t\t\t\n");
      out.write("\t\t\t\t<li>\n");
      out.write("\t\t\t\t\t<a href=\"services.jsp\">services</a>\n");
      out.write("\t\t\t\t</li>\n");
      out.write("\t\t\t\t<li>\n");
      out.write("\t\t\t\t\t<a href=\"forms.jsp\">forms</a>\n");
      out.write("\t\t\t\t</li>\n");
      out.write("\t\t\t\t<li>\n");
      out.write("\t\t\t\t\t<a href=\"contact.jsp\">contact</a>\n");
      out.write("\t\t\t\t</li>\n");
      out.write("\t\t\t\t<li>\n");
      out.write("\t\t\t\t\t<a href=\"blog.jsp\">blog</a>\n");
      out.write("\t\t\t\t</li>\n");
      out.write("\t\t\t</ul>\n");
      out.write("\t\t\t<div>\n");
      out.write("\t\t\t\t<span>stay connected:</span>\n");
      out.write("\t\t\t\t<a href=\"http://freewebsitetemplates.com/go/facebook/\" id=\"facebook\">facebook</a>\n");
      out.write("\t\t\t\t<a href=\"http://freewebsitetemplates.com/go/twitter/\" id=\"twitter\">twitter</a>\n");
      out.write("\t\t\t\t<a href=\"http://freewebsitetemplates.com/go/googleplus/\" id=\"googleplus\">googleplus</a>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("\t<div class=\"popContainer\">\n");
      out.write("\t\t\t<header class=\"codrops-header\">\n");
      out.write("\t\t\t</header>\n");
      out.write("\t\t\t<nav id=\"bt-menu\" class=\"bt-menu\">\n");
      out.write("\t\t\t\t<a href=\"#\" class=\"bt-menu-trigger\">Menu</a>\n");
      out.write("\t\t\t\t<ul>\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t\t<li><a href=\"apri.jsp\" class=\"bt-icon icon-home\">Trending</a></li>\n");
      out.write("\t\t\t\t\t<li><a href=\"newjsp2.jsp\" class=\"bt-icon icon-star\">Bookmark</a></li>\n");
      out.write("\t\t\t\t\t<li><a href=\"viewBookmarkedPages.jsp\" class=\"bt-icon icon-newspaper\">Show all</a></li>\n");
      out.write("\t\t\t\t\t\t<li><a href=\"test.jsp\" class=\"bt-icon icon-refresh\">Use Our Web Service</a></li>\n");
      out.write("\t\t\t\t\t<li><a href=\"yahoo.jsp\" class=\"bt-icon icon-facebook\">FB</a></li>\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t</ul>\n");
      out.write("\t\t\t</nav>\n");
      out.write("\t</div>\n");
      out.write("\t\n");
      out.write("<script src=\"js/classie.js\"></script>\n");
      out.write("\t<script src=\"js/borderMenu.js\"></script>\n");
      out.write("</body>\n");
      out.write("</html>");
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
