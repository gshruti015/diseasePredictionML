<%@page import= "java.sql.*" %>
<%@page import="java.util.*" %>
<!DOCTYPE HTML>
<!-- Website Template by freewebsitetemplates.com -->
<html>
<head>
	<meta charset="UTF-8">
	<title>Services</title>
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
				<h2>Our Services</h2>
                                
                                  <form   name ="form" action ="fetch.jsp">
            <fieldset>
                <legend> DISEASE SEARCH BAR </legend>
                disease name : <input type="text/css" id="name" name="name" required />
                (by default will give all information)
            <br>
            <!--ALL:<input type="radio " name="first"/>-->
            ALL :<input type="radio" name="radio" value="ALL"/><br>
                CAUSE:<input type="radio" name="radio" value="CAUSE"/><br>
            <!--DEFINITION:<input type="radio " name="fourth"/>-->
            DEFINITION: <input type="radio" name="radio" value="DEFINITION"  /><br>
            SYMPTOMS:<input type="radio" name="radio" value="SYMPTOMS"/><br>
            TREATMENT:<input type="radio" name="radio" value="TREATMENT"/><br>
            <br>
            
            <br>
            <input type="submit" name="submit"/>
           
            
                        <a href="check.jsp" >
                CHECK DRUG FOR YOUR DISEASE
            </fieldset>
            
        </form>
        
    
    



   <%
            Connection conn=null;
            ResultSet rs,rs1;
            Statement stmt=null;
            
           try {  
             Class.forName("com.mysql.jdbc.Driver");
             conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/work","root","");
             stmt=conn.createStatement();
             
             String input =request.getParameter("radio");
             
            String disease=request.getParameter("name") ;
             
            String qry3= "update diseases set freq= freq+1 where name='"+disease+"'"  ;
            int rf=stmt.executeUpdate(qry3) ;
            
            
            
             if(request.getParameter("submit")!=null)
             {
              if (input!=null)
            {
             if(input.equals("ALL")){
             
             
            
             String qry = "select * from diseases where name='"+disease+"' ";
             rs=stmt.executeQuery(qry);
             
                 
                 
                 
                 



             while (rs.next())
             { %>
             <h3> DEFINITION </h3>
                 <br>
                 <%
                 out.println(rs.getString("defination"));
                 
                 %>
                 
                 <h3>SYMPTOMS </h3>
                 <br>
                 
                 
                 <%
                 out.println(rs.getString("symptoms"));
                 %>
                 
                 <br>
                 
             
                 
             
                 
                 
                 <h3>WHEN YOU SHOULD SEE A DOCTOR</h3>
                 <br>
                 
                 
                 <%
                 out.println(rs.getString("treatment"));
                 %>
                 
                 <br>
                 
                 <h3> CASUSES </h3>
                 <br>
                 
                 
                 <% 
                 out.println(rs.getString("causes"));
                 
                 %>
                 
                 <br>
                 
                 
                 
                 <br>
                 <br>
                 
                 <h3>TREATMENT AND DRUGS </h3>
                 <%
                 out.println(rs.getString("treatment"));
                 
                 %>
                 <br>
               
                 <%
                
             }
             
                     
                     
                     }
             else if(input.equals("CAUSE"))
             {
             
             String qry="select causes from diseases where name='"+disease+"'";
             rs=stmt.executeQuery(qry);
             while(rs.next())
             {
             out.println(rs.getString("causes"));
             %>
             <br>
           
             <%
            
             }
             
             }
           
             
             
             else if(input.equals("DEFINITION"))
             {
             
             String qry="select defination from diseases where name='"+disease+"'";
             rs=stmt.executeQuery(qry);
             while(rs.next())
             {
             out.println(rs.getString("defination"));
             
             
            }
             
             }
             
             else if(input.equals("SYMPTOMS"))
             {
             
             String qry="select symptoms from diseases where name='"+disease+"'";
             rs=stmt.executeQuery(qry);
             while(rs.next())
             {
             out.println(rs.getString("symptoms"));
             %>
             <br>
            
             <%
             
             }
             
             }
             else if(input.equals("TREATMENT"))
             {
             
             String qry="select treatment from diseases where name='"+disease+"'";
             rs=stmt.executeQuery(qry);
             while(rs.next())
             {
             out.println(rs.getString("treatment"));
             %>
             <br>
            
             
             <%
             
             }
             
             }
             
            }
                           else if (input==null)
             {
             
             String qry = "select * from diseases where name='"+disease+"' ";
             rs=stmt.executeQuery(qry);
             
                 
                 
                 
                 



             while (rs.next())
             { %>
             <h3> DEFINITION </h3>
                 <br>
                 <%
                 out.println(rs.getString("defination"));
                 
                 %>

                 <h3>SYMPTOMS </h3>
                 <br>-->
                 

                 <%
                 out.println(rs.getString("symptoms"));
                 %>

                 <br>
  

                 

                                  
                 

                 <br>
                 
                 <h3> CASUSES </h3>
                 <br>-->
 

                 <% 
                 out.println(rs.getString("causes"));
                 
                 %>



                 

                 <br>
                 <br>
                 
                <h3>TREATMENT AND DRUGS </h3>-->
                <%
                 out.println(rs.getString("treatment"));
                 
                 %>
                 <br>
                 
           <%
                
            }
    
 }

             
            }
             
             else if (request.getParameter("submit")==null){
                 if(request.getParameter("when")!=null)
                 {
                 
             
             String qry="select treatment from diseases where name='"+disease+"'" ;
             rs=stmt.executeQuery(qry);
             while(rs.next())
             {
             out.println(rs.getString("treatment"));
             
             }
             
             }
             }
             
           }
           catch (SQLException e)
           {
           out.println(e);
           }
           
            
           %>
     
                                
                                <br>
                                <br>
                                <br>
                                <br>
                                <br>
                                <br>
                                
				<img src="images/monitoring.jpg" alt="">
                     
		<div>
                    <div>
                        
                      
                        
                        

                    </div>
                </div>
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