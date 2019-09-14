<%@page import= "java.sql.*" %>
<%@page import="java.util.*" %>


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
	<title>Services </title>
	<link rel="stylesheet" href="css/style.css" type="text/css">
	<!--[if IE 7]>
		<link rel="stylesheet" href="css/ie7.css" type="text/css">
	<![endif]-->
</head>
<body>
	<div id="header">
		<div>
			<div>
				<span>A healthy heart means a healthy life...</span>
				<a href="index.jsp" class="logo"><img src="images/logo.png" alt=""></a>
				<span class="tagline">Experience life to the fullest.</span>
			</div>
			<ul>
				<li>
					<a href="index.jsp">home</a>
				</li>
				<li>
					<a href="about.jsp">about</a>
				</li>
				
				<li class="selected">
					<a href="services.jsp">services</a>
				</li>
				<li>
					<a href="forms.jsp">Search</a>
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
		<div id="content">
			<div id="sidebar">
				<h3>Services</h3>
				<ul>
					<li class="selected collapse">
						<a href="services.jsp">Our services</a>
						<ul>
							<li class="active">
								<a href="a-z.jsp">Search Diseases</a>
							</li>
							<li>
								<a href="check.jsp">Search Drug And Drug Interaction</a>
							</li>
							<li>
						<a href="bmi.jsp">BMI Calculator</a>
					</li>
						</ul>
					</li>
					<li>
						<a href="fetch.jsp">When to see Doctors</a>
					</li>
					<li>
						<a href="fetch.jsp">Drug Interaction</a>
					</li>
					                                                    <li>
                                                              <h4>
                            RECENTLY SEARCHED DISEASE
                        </h4>
                        <%
                        Connection conn12;
                        ResultSet rs12;
                        Statement stmt12;
             try {
                        Class.forName("com.mysql.jdbc.Driver");
             conn12=DriverManager.getConnection("jdbc:mysql://localhost:3306/work","root","");
             stmt12=conn12.createStatement();
                        int i=0;
             String qry12="select name from diseases order by freq desc " ;
             rs12=stmt12.executeQuery(qry12);
             while (rs12.next() && i<4 )
                 
             {
             out.println(rs12.getString("name")+"<br>");
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
             
                        
                        
                        
                        
                        %>
                        
                                                        </li>
                                     
				</ul>
			</div>
			<div id="section">
				<span> <a href="services.jsp">&lt;&nbsp;&nbsp;Back to Testing and Drug interaction services</a> </span>
				<h2>DRUG BY YOUR AGE</h2>
                                 <form   name ="form" action ="check.jsp">
            <fieldset>
                <legend> DRUG SEARCH BAR </legend>
                disease name : <select name="disease">
                    <option value="acne">Acne </option>
                    <option value="aids">Aids </option>
                    <option value="malaria">Malaria </option>
                    <option value="diabetes">Diabetes </option>
                    <option value="asthma">Asthma </option>
                    <option value="alzheimer disease">Alzheimer disease </option>
                    <option value="cholera">Cholera </option>
                    <option value="amnesia">Amnesia </option>
                    
                    
                </select>
          
            <!--ALL:<input type="radio " name="first"/>-->
            choose age:<select name="age">
                <option value ="21-35" >21-35</option> 
                <option value ="36-50">36-50</option>
                <option value="51-65">51-65</option>
                
                
            </select>
            <br>
            
            <br>
            <input type="submit" name="submit"/>


            
            
            </fieldset>
            
        </form>
 

<%
             Connection conn1;
             Statement stmt1;
             ResultSet rs;
             try {
                        Class.forName("com.mysql.jdbc.Driver");
             conn1=DriverManager.getConnection("jdbc:mysql://localhost:3306/work","root","");
             stmt1=conn1.createStatement();
             
             String input=request.getParameter("disease");
             String output=request.getParameter("age");
             
             
             if(request.getParameter("submit")!=null)
             {
             if(input!=null && output!=null)
             {
             if (input.equals("acne") && output.equals("21-35"))
                
             {%>
             <h4> DRUG YOU SHOULD TAKE : <h4>
                     <br>
                 
             <% 
                 out.println("durg for "+input);%>
                 <br>
                 <%out.println("for " +output+ "age group"); %>
                 <br>
                 
                 <%
                 String qry="select * from drug where disease='"+input+"' and age='"+output+"' " ;
             rs=stmt1.executeQuery(qry);
             while(rs.next())
             {
             out.println(rs.getString("drug"));
             
             }
             
             
             }
             
             
             
             else if (input.equals("acne") && output.equals("36-50"))
                
             {%>
             <h4> DRUG YOU SHOULD TAKE : <h4>
                     <br>
                 
                      <% 
                 out.println("durg for "+input);%>
                 <br>
                 <%out.println("for " +output+ "age group"); %>
                 <br>
                 
                
                     
             <% 
                 String qry="select * from drug where disease='"+input+"' and age='"+output+"' " ;
             rs=stmt1.executeQuery(qry);
             while(rs.next())
             {
             out.println(rs.getString("drug"));
             
             }
             
             
             }
             

             else if (input.equals("acne") && output.equals("51-65"))
                
             {%>
             <h4> DRUG YOU SHOULD TAKE : <h4>
                     <br>
                 
                     
                     <% 
                 out.println("durg for "+input);%>
                 <br>
                 <%out.println("for " +output+ "age group"); %>
                 <br>
                     
             <% 
                 String qry="select * from drug where disease='"+input+"' and age='"+output+"' " ;
             rs=stmt1.executeQuery(qry);
             while(rs.next())
             {
             out.println(rs.getString("drug"));
             
             }
             
             
             }
             
             
             
             else if (input.equals("aids") && output.equals("21-35"))
                
             {%>
             <h4> DRUG YOU SHOULD TAKE : <h4>
                     <br>
                 
                     <% 
                 out.println("durg for "+input);%>
                 <br>
                 <%out.println("for " +output+ "age group"); %>
                 <br>
                     
             <% 
                 String qry="select * from drug where disease='"+input+"' and age='"+output+"' " ;
             rs=stmt1.executeQuery(qry);
             while(rs.next())
             {
             out.println(rs.getString("drug"));
             
             }
             
             
             }
             
             else if (input.equals("malaria") && output.equals("21-35"))
                
             {%>
             <h4> DRUG YOU SHOULD TAKE : <h4>
                     <br>
                     
                     
                     <% 
                 out.println("durg for "+input);%>
                 <br>
                 <%out.println("for " +output+ "age group"); %>
                 <br>
                     
                 
             <% 
                 String qry="select * from drug where disease='"+input+"' and age='"+output+"' " ;
             rs=stmt1.executeQuery(qry);
             while(rs.next())
             {
             out.println(rs.getString("drug"));
             
             }
             
             
             }


             else if (input.equals("diabetes") && output.equals("21-35"))
                
             {%>
             <h4> DRUG YOU SHOULD TAKE : <h4>
                     <br>
                 
                     
                     <% 
                 out.println("durg for "+input);%>
                 <br>
                 <%out.println("for " +output+ "age group"); %>
                 <br>
                     
                     
             <% 
                 String qry="select * from drug where disease='"+input+"' and age='"+output+"' " ;
             rs=stmt1.executeQuery(qry);
             while(rs.next())
             {
             out.println(rs.getString("drug"));
             
             }
             
             
             }
             
             else if (input.equals("asthma") && output.equals("21-35"))
                
             {%>
             <h4> DRUG YOU SHOULD TAKE : <h4>
                     <br>
                 
                     <% 
                 out.println("durg for "+input);%>
                 <br>
                 <%out.println("for " +output+ "age group"); %>
                 <br>
                     
             <% 
                 String qry="select * from drug where disease='"+input+"' and age='"+output+"' " ;
             rs=stmt1.executeQuery(qry);
             while(rs.next())
             {
             out.println(rs.getString("drug"));
             
             }
             
             
             }
             
             else if (input.equals("alzheimer disease") && output.equals("21-35"))
                
             {%>
             <h4> DRUG YOU SHOULD TAKE : <h4>
                     <br>
                 
                     <% 
                 out.println("durg for "+input);%>
                 <br>
                 <%out.println("for " +output+ "age group"); %>
                 <br>
                     
                     
             <% 
                 String qry="select * from drug where disease='"+input+"' and age='"+output+"' " ;
             rs=stmt1.executeQuery(qry);
             while(rs.next())
             {
             out.println(rs.getString("drug"));
             
             }
             
             
             }
             
              else if (input.equals("cholera") && output.equals("21-35"))
                
             {%>
             <h4> DRUG YOU SHOULD TAKE : <h4>
                     <br>
                 
                     <% 
                 out.println("durg for "+input);%>
                 <br>
                 <%out.println("for " +output+ "age group"); %>
                 <br>
                     
                     
             <% 
                 String qry="select * from drug where disease='"+input+"' and age='"+output+"' " ;
             rs=stmt1.executeQuery(qry);
             while(rs.next())
             {
             out.println(rs.getString("drug"));
             
             }
             
             
             }
             
              else if (input.equals("amnesia") && output.equals("21-35"))
                
             {%>
             <h4> DRUG YOU SHOULD TAKE : <h4>
                     <br>
                     
                     
                     <% 
                 out.println("durg for "+input);%>
                 <br>
                 <%out.println("for " +output+ "age group"); %>
                 <br>
                 
             <% 
                 String qry="select * from drug where disease='"+input+"' and age='"+output+"' " ;
             rs=stmt1.executeQuery(qry);
             while(rs.next())
             {
             out.println(rs.getString("drug"));
             
             }
             
             
             }
             
                
             else if (input.equals("aids") && output.equals("36-50"))
                
             {%>
             <h4> DRUG YOU SHOULD TAKE : <h4>
                     <br>
                     
                     
                     <% 
                 out.println("durg for "+input);%>
                 <br>
                 <%out.println("for " +output+ "age group"); %>
                 <br>
                 
             <% 
                 String qry="select * from drug where disease='"+input+"' and age='"+output+"' " ;
             rs=stmt1.executeQuery(qry);
             while(rs.next())
             {
             out.println(rs.getString("drug"));
             
             }
             
             
             }
             
             
             
                
             else if (input.equals("malaria") && output.equals("36-50"))
                
             {%>
             <h4> DRUG YOU SHOULD TAKE : <h4>
                     <br>
                     
                     <% 
                 out.println("durg for "+input);%>
                 <br>
                 <%out.println("for " +output+ "age group"); %>
                 <br>
                 
             <% 
                 String qry="select * from drug where disease='"+input+"' and age='"+output+"' " ;
             rs=stmt1.executeQuery(qry);
             while(rs.next())
             {
             out.println(rs.getString("drug"));
             
             }
             
             
             }
             
             
                       
             else if (input.equals("diabetes") && output.equals("36-50"))
                
             {%>
             <h4> DRUG YOU SHOULD TAKE : <h4>
                     <br>
                 <% 
                 out.println("durg for "+input);%>
                 <br>
                 <%out.println("for " +output+ "age group"); %>
                 <br>
             <% 
                 String qry="select * from drug where disease='"+input+"' and age='"+output+"' " ;
             rs=stmt1.executeQuery(qry);
             while(rs.next())
             {
             out.println(rs.getString("drug"));
             
             }
             
             
             }
             
             
             
                
             else if (input.equals("asthma") && output.equals("36-50"))
                
             {%>
             <h4> DRUG YOU SHOULD TAKE : <h4>
                     <br>
                 
                     <% 
                 out.println("durg for "+input);%>
                 <br>
                 <%out.println("for " +output+ "age group"); %>
                 <br>
                     
                     
             <% 
                 String qry="select * from drug where disease='"+input+"' and age='"+output+"' " ;
             rs=stmt1.executeQuery(qry);
             while(rs.next())
             {
             out.println(rs.getString("drug"));
             
             }
             
             
             }
             
             
             
                
             else if (input.equals("cholera") && output.equals("36-50"))
                
             {%>
             <h4> DRUG YOU SHOULD TAKE : <h4>
                     <br>
                 <% 
                 out.println("durg for "+input);%>
                 <br>
                 <%out.println("for " +output+ "age group"); %>
                 <br>
                 
                 
             <% 
                 String qry="select * from drug where disease='"+input+"' and age='"+output+"' " ;
                 
             rs=stmt1.executeQuery(qry);
             while(rs.next())
             {
             out.println(rs.getString("drug"));
             
             }
             
             
             }
             
             
                
             else if (input.equals("amnesia") && output.equals("36-50"))
                
             {%>
             <h4> DRUG YOU SHOULD TAKE : <h4>
                     <br>
                 
                     <% 
                 out.println("durg for "+input);%>
                 <br>
                 <%out.println("for " +output+ "age group"); %>
                 <br>
                     
             <% 
                 String qry="select * from drug where disease='"+input+"' and age='"+output+"' " ;
             rs=stmt1.executeQuery(qry);
             while(rs.next())
             {
             out.println(rs.getString("drug"));
             
             }
             
             
             }
             
                
             else if (input.equals("alzheimer disease") && output.equals("36-50"))
                
             {%>
             <h4> DRUG YOU SHOULD TAKE : <h4>
                     <br>
                 
                     <% 
                 out.println("durg for "+input);%>
                 <br>
                 <%out.println("for " +output+ "age group"); %>
                 <br>
                     
                     
             <% 
                 String qry="select * from drug where disease='"+input+"' and age='"+output+"' " ;
             rs=stmt1.executeQuery(qry);
             while(rs.next())
             {
             out.println(rs.getString("drug"));
             
             }
             
             
             }
             
               else if (input.equals("alzheimer disease") && output.equals("51-65"))
                
             {%>
             <h4> DRUG YOU SHOULD TAKE : <h4>
                     <br>
                 
                     <% 
                 out.println("durg for "+input);%>
                 <br>
                 <%out.println("for " +output+ "age group"); %>
                 <br>
                     
                     
                     
             <% 
                 String qry="select * from drug where disease='"+input+"' and age='"+output+"' " ;
             rs=stmt1.executeQuery(qry);
             while(rs.next())
             {
             out.println(rs.getString("drug"));
             
             }
             
             
             }
             
             
             else if (input.equals("aids") && output.equals("51-65"))
                
             {%>
             <h4> DRUG YOU SHOULD TAKE : <h4>
                     <br>
                     
                     <% 
                 out.println("durg for "+input);%>
                 <br>
                 <%out.println("for " +output+ "age group"); %>
                 <br>
                     
                     
                 
             <% 
                 String qry="select * from drug where disease='"+input+"' and age='"+output+"' " ;
             rs=stmt1.executeQuery(qry);
             while(rs.next())
             {
             out.println(rs.getString("drug"));
             
             }
             
             
             }
             
             
             else if (input.equals("malaria") && output.equals("51-65"))
                
             {%>
             <h4> DRUG YOU SHOULD TAKE : <h4>
                     <br>
                 
                     <% 
                 out.println("durg for "+input);%>
                 <br>
                 <%out.println("for " +output+ "age group"); %>
                 <br>
                     
                     
                     
                     
             <% 
                 String qry="select * from drug where disease='"+input+"' and age='"+output+"' " ;
             rs=stmt1.executeQuery(qry);
             while(rs.next())
             {
             out.println(rs.getString("drug"));
             
             }
             
             
             }
             
             else if (input.equals("diabetes") && output.equals("51-65"))
                
             {%>
             <h4> DRUG YOU SHOULD TAKE : <h4>
                     <br>
                 
                     <% 
                 out.println("durg for "+input);%>
                 <br>
                 <%out.println("for " +output+ "age group"); %>
                 <br>
                     
                     
                     
                     
             <% 
                 String qry="select * from drug where disease='"+input+"' and age='"+output+"' " ;
             rs=stmt1.executeQuery(qry);
             while(rs.next())
             {
             out.println(rs.getString("drug"));
             
             }
             
             
             }
             else if (input.equals("asthma") && output.equals("51-65"))
                
             {%>
             <h4> DRUG YOU SHOULD TAKE : <h4>
                     <br>
                 
                     <% 
                 out.println("durg for "+input);%>
                 <br>
                 <%out.println("for " +output+ "age group"); %>
                 <br>
                     
                     
             <% 
                 String qry="select * from drug where disease='"+input+"' and age='"+output+"' " ;
             rs=stmt1.executeQuery(qry);
             while(rs.next())
             {
             out.println(rs.getString("drug"));
             
             }
             
             
             }
             
             
             else if (input.equals("cholera") && output.equals("51-65"))
                
             {%>
             <h4> DRUG YOU SHOULD TAKE : <h4>
                     <br>
                 
                     <% 
                 out.println("durg for "+input);%>
                 <br>
                 <%out.println("for " +output+ "age group"); %>
                 <br>
                     
             <% 
                 String qry="select * from drug where disease='"+input+"' and age='"+output+"' " ;
             rs=stmt1.executeQuery(qry);
             while(rs.next())
             {
             out.println(rs.getString("drug"));
             
             }
             
             
             }
             
             
             else if (input.equals("amnesia") && output.equals("51-65"))
                
             {%>
             <h4> DRUG YOU SHOULD TAKE : <h4>
                     <br>
                 
                     <% 
                 out.println("durg for "+input);%>
                 <br>
                 <%out.println("for " +output+ "age group"); %>
                 <br>
                     
                     
             <% 
                 String qry="select * from drug where disease='"+input+"' and age='"+output+"' " ;
             rs=stmt1.executeQuery(qry);
             while(rs.next())
             {
             out.println(rs.getString("drug"));
             
             }
             
             
             }
             
             
             
             }
             }
                 
             }
             
             catch (SQLException e){
                 out.println(e);
             
             }
             
             %>
                                
             <br>
             <br>
             <br>
             <BR>
             <BR>
             <BR>
				

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
            qry = "select * from diseases ";
            ResultSet rs1 = st.executeQuery(qry);
            while (rs1.next() && j < 10) {
                disease = rs1.getString("name");
                count = rs1.getString("freq");

                c = Integer.parseInt(count);
                // Enrollment in Bachelors level
                categoryDataset.setValue(c, "recentlyviewed", disease);
                j++;
            }

            JFreeChart chart = ChartFactory.createBarChart3D("RECENT SEARCHES", // Title
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
            ChartUtilities.saveChartAsPNG(file1, chart, 400, 400, info);
        }
        catch (Exception e)
        {
            out.println(e);
        }
        //my ob=new my();

    %>
   
        
            <div style="border:1px solid; float:left;width:60%;margin-top:10px;margin-left:20px;border-radius:5px;height:400px;">
                
                <%TimeUnit.SECONDS.sleep(5); %>
                
                <img style="margin-top:5px;margin-left:20px;width: 300px;height: 450px;"src=<%=img%> USEMAP="#chart"/>
  

</div>
    
				<div class="body">
                <div class="services">
                    <div>
                        <div>
                            <div style="height: auto">   <!--style="height:1007px;-->
<!--write here                             -->
        
       

                            </div>
                        </div>
			</div>
		</div>
	</div>
	<div id="footer">
		<div>
			<p>
				
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