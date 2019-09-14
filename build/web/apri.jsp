<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>



<%@page import="java.util.concurrent.TimeUnit"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>



<%@page import="java.sql.*"%>



<%@ page  import="java.awt.*" %>
<%@ page  import="java.io.*" %>
<%@ page  import="org.jfree.chart.*" %>
<%@ page  import="org.jfree.chart.axis.*" %>
<%@ page  import="org.jfree.chart.entity.*" %>
<%@ page  import="org.jfree.chart.labels.*" %>
<%@ page  import="org.jfree.chart.plot.*" %>
<%@ page  import="org.jfree.chart.renderer.category.*" %>
<%@ page  import="org.jfree.chart.urls.*" %>
<%@ page  import="org.jfree.data.category.*" %>
<%@ page  import="org.jfree.data.general.*" %>
<!DOCTYPE HTML>
<!-- Website Template by freewebsitetemplates.com -->
<html>
<head>
	<meta charset="UTF-8">
	<title>Drug Science </title>
	<link rel="stylesheet" href="css/style.css" type="text/css">
	<!--[if IE 7]>
		<link rel="stylesheet" href="css/ie7.css" type="text/css">
	<![endif]-->
</head>
<body>
	<div id="header">
		<div>
                    <%%>
			<div>
				<span>A healthy heart means a healthy life...</span>
				<a href="index.jsp" class="logo"><img src="images/logo.png" alt=""></a>
				<span class="tagline">Experience life to the fullest.</span>
			</div>
			<ul>
				<li >
					<a href="index.jsp">home</a>
				</li>
				<li>
					<a href="about.jsp">about</a>
				</li>
				
				<li>
					<a href="services.jsp">services</a>
				</li>
				<li>
					<a href="forms.jsp">forms</a>
				</li>
                                
                                <li>
					<a href="input.jsp">Input</a>
				</li>
				<li>
					<a href="contact.jsp">contact</a>
				</li>
				<li>
					<a href="blog.jsp">blog</a>
				</li>
			</ul>
		</div>
	</div>
	<div id="body">
		<div class="header">
			<div>
				
<!--				<ul>
					<li>
						<a href="services.jsp">we truly care</a>
					</li>
					<li>
						<a href="services.jsp">modern equipments</a>
					</li>
					<li>
						<a href="about.jsp">highly trained proffesionals</a>
					</li>
					<li>
						<a href="blog.jsp">fast and accurate results</a>
					</li>
				</ul>-->
			</div>
		</div>
		<div class="body">
			<div class="section">
				<div class="article">
					
					<%!String disease = "";
        String count = "";
        int c = 0;
        int j = 0;
        String img;
    %>
    <%
                      
          //in('1960-61','1961-62','1962-63' ,'1963-64','1964-65','1965-66')
        try {

            DefaultCategoryDataset categoryDataset = new DefaultCategoryDataset();
            Connection cn;
            String qry;
            String img1;
            Statement st;
            Class.forName("com.mysql.jdbc.Driver");
            cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/work", "root", "");
            st = cn.createStatement();
            qry = "select * from summerid ";
            ResultSet rs1 = st.executeQuery(qry);
            while (rs1.next()) {
                disease = rs1.getString("name");
                count = rs1.getString("count");

                c = Integer.parseInt(count);
                // Enrollment in Bachelors level
                categoryDataset.setValue(c, "mostlikely", disease);
                j++;
            }

            JFreeChart chart = ChartFactory.createBarChart3D("SEASONAL DISEASES", // Title
                    "Disease", // X-Axis label
                    "Views",// Y-Axis label
                    categoryDataset, // Dataset
                    PlotOrientation.VERTICAL,
                    true, // Show legend
                    true,
                    false
            );

            final ChartRenderingInfo info = new ChartRenderingInfo(new StandardEntityCollection());
            final File file1 = new File("D:/svm/web/" + "tam1" + disease + count + ".png");
             img = "tam1" + disease + count + ".png";
            ChartUtilities.saveChartAsPNG(file1, chart, 300, 400, info);
        }
        catch (Exception e)
        {
            out.println(e);
        }
        //my ob=new my();

    %>
   
        
            <div style="border:1px solid; float:left;width:55%;margin-top:10px;margin-left:20px;border-radius:5px;height:360px;">
                
                <%TimeUnit.SECONDS.sleep(5); %>
                
                <img style="margin-top:5px;margin-left:20px;width: 300px;height: 340px;"src=<%=img%> USEMAP="#chart"/>
				</div>
                                </div>
				<div class="aside">
                                    
					<img src="images/heart.jpg" alt="">
					<p>
					    <script type="text/javascript">
document.write ('<p>Current time is: <span id="date-time">', new Date().toLocaleString(), '<\/span>.<\/p>')
if (document.getElementById) onload = function () {
	setInterval ("document.getElementById ('date-time').firstChild.data = new Date().toLocaleString()", 50)
}
</script>		
   <form action="runApriori">
 

  <input type="submit" value="Submit">
  

        </form>
                                    
<%
    List <String> lis=(List)session.getAttribute("shruti");
    
    if(lis!=null)
    {
        Iterator it=lis.iterator();
    while(it.hasNext())
    {
        
out.println(it.next());
        }
    }
        %>	
					</p>
                                  
                                </div>
  
				</div>
			
		</div>
		<div class="footer">
			<div>
				<a href="about.jsp"><img src="images/doctors.jpg" alt=""></a>
				<h3>our doctors</h3>
				<p>
					Have you always been curious as to what the day-to-day life of a doctor truly entails?<br>Our advanced program integration capability lets you seamlessly blend .
                                        
				</p>
			</div>
			<div>
				<a href="services.jsp"><img src="images/what-can-we-do.jpg" alt=""></a>
				<h3>what we can do for you</h3>
				<p>
					We plan on providing services to layman users having no information about from what they suffering but everyone can feel symptoms. 
				</p>
			</div>
			<div>
				<a href="contact.jsp"><img src="images/where-you-can-find.jpg" alt=""></a>
				<h3>where you can find us</h3>
				<p>
					Request information, get a physician referral, or simply comment on how we are doing. You can reach us in the following ways:
				</p>
			</div>
		</div>
	</div>
	<div id="footer">
		<div>
			<p>
				Copyright &copy; <a href="index.jsp">Drug Science Center</a>
			</p>
			<ul>
				<li>
					<a href="index.jsp">home</a>
				</li>
				<li>
					<a href="about.jsp">about</a>
				</li>
				
				<li>
					<a href="services.jsp">services</a>
				</li>
				<li>
					<a href="forms.jsp">forms</a>
				</li>
				<li>
					<a href="contact.jsp">contact</a>
				</li>
				<li>
					<a href="blog.jsp">blog</a>
				</li>
			</ul>
			<div>
				<span>stay connected:</span>
				<a href="http://freewebsitetemplates.com/go/facebook/" id="facebook">facebook</a>
				<a href="http://freewebsitetemplates.com/go/twitter/" id="twitter">twitter</a>
				<a href="http://freewebsitetemplates.com/go/googleplus/" id="googleplus">googleplus</a>
			</div>
		</div>
	</div>
</body>
</html>