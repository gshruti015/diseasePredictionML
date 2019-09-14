<%@page import= "java.sql.*" %>
<%@page import="java.util.*" %>
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
								<a href="a-z.jsp">Search Diseases </a>
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
				<h2>Search Disease By First Letter</h2>
                                  <form name ="form" action ="a-z.jsp">
                                        <fieldset>
                                            <legend> A-Z DISEASE LIST </legend>
                                            <select name="list" >
                                                <option value="a">A</option>
                                                <option value="b">B</option>
                                                <option value="c">C</option>
                                                <option value="d">D</option>
                                                <option value="e">E</option>
                                                <option value="f">F</option>
                                                <option value="g">G</option>
                                                <option value="h">H</option>
                                                <option value="i">I</option>
                                                <option value="j">J</option>
                                                <option value="k">K</option>
                                                <option value="l">L</option>
                                                <option value="m">M</option>
                                                <option value="n">N</option>
                                                <option value="o">O</option>
                                                <option value="p">P</option>
                                                <option value="q">Q</option>
                                                <option value="r">R</option>
                                                <option value="s">S</option>
                                                <option value="t">T</option>
                                                <option value="u">U</option>
                                                <option value="v">V</option>
                                                <option value="w">W</option>
                                                <option value="x">X</option>
                                                <option value="y">Y</option>
                                                <option value="z">Z</option>



                                            </select>

                                            <input type="submit" name="submit"/>

                                        </fieldset>

                                    </form>
                                    
                                    
                                    
                                    <%
    
    Connection con;
    ResultSet rs;
    Statement stmt;
    try {  
             Class.forName("com.mysql.jdbc.Driver");
             con=DriverManager.getConnection("jdbc:mysql://localhost:3306/work","root","");
             stmt=con.createStatement();
           String word=request.getParameter("list");
           
           
        
           
            if (word!=null)
            {
                if (word.equals("a"))
                { %>
                <h3> DISEASE WITH LETTER A </h3>
                <BR>
                <BR>
                <%    
           String qry1=" select name from diseases where name like 'A%'   "  ;
           
           rs=stmt.executeQuery(qry1);
           while (rs.next())
           {
           out.println(rs.getString("name")+"<br>");
           
           
           }
                }
                
                
                
                else if (word.equals("b"))
                { %>
                <h3> DISEASE WITH LETTER B </h3>
                <BR>
                <BR>
                <%
                    
           String qry1=" select name from diseases where name like 'B%'   "  ;
           
           rs=stmt.executeQuery(qry1);
           while (rs.next())
           {
           out.println(rs.getString("name")+"<br>");
           
           
           }
                }
           
                else if (word.equals("c"))
                { %>
                <h3> DISEASE WITH LETTER C </h3>
                <BR>
                <BR>
                <%
                    
           String qry1=" select name from diseases where name like 'C%'   "  ;
           
           rs=stmt.executeQuery(qry1);
           while (rs.next())
           {
           out.println(rs.getString("name")+"<br>");
           
           
           }
                }
                
                
                else if (word.equals("d"))
                { %>
                <h3> DISEASE WITH LETTER D </h3>
                <BR>
                <BR>
                <%
                    
           String qry1=" select name from diseases where name like 'D%'   "  ;
           
           rs=stmt.executeQuery(qry1);
           while (rs.next())
           {
           out.println(rs.getString("name")+"<br>");
           
           
           }
                }
                
                else if (word.equals("e"))
                { %>
                <h3> DISEASE WITH LETTER E </h3>
                <BR>
                <BR>
                <%
                    
           String qry1=" select name from diseases where name like 'E%'   "  ;
           
           rs=stmt.executeQuery(qry1);
           while (rs.next())
           {
           out.println(rs.getString("name")+"<br>");
           
           
           }
                }
                
                else if (word.equals("f"))
                { %>
                <h3> DISEASE WITH LETTER F </h3>
                <BR>
                <BR>
                <%
                    
           String qry1=" select name from diseases where name like 'F%'   "  ;
           
           rs=stmt.executeQuery(qry1);
           while (rs.next())
           {
           out.println(rs.getString("name")+"<br>");
           
           
           }
                }
                
                else if (word.equals("g"))
                { %>
                <h3> DISEASE WITH LETTER G </h3>
                <BR>
                <BR>
                <%
                    
           String qry1=" select name from diseases where name like 'G%'   "  ;
           
           rs=stmt.executeQuery(qry1);
           while (rs.next())
           {
           out.println(rs.getString("name")+"<br>");
           
           
           }
                }
                
                else if (word.equals("h"))
                { %>
                <h3> DISEASE WITH LETTER H </h3>
                <BR>
                <BR>
                <%
                    
           String qry1=" select name from diseases where name like 'H%'   "  ;
           
           rs=stmt.executeQuery(qry1);
           while (rs.next())
           {
           out.println(rs.getString("name")+"<br>");
           
           
           }
                }
                
                else if (word.equals("i"))
                { %>
                <h3> DISEASE WITH LETTER I </h3>
                <BR>
                <BR>
                <%
                    
           String qry1=" select name from diseases where name like 'I%'   "  ;
           
           rs=stmt.executeQuery(qry1);
           while (rs.next())
           {
           out.println(rs.getString("name")+"<br>");
           
           
           }
                }
                
                else if (word.equals("j"))
                { %>
                <h3> DISEASE WITH LETTER J </h3>
                <BR>
                <BR>
                <%
                    
           String qry1=" select name from diseases where name like 'J%'   "  ;
           
           rs=stmt.executeQuery(qry1);
           while (rs.next())
           {
           out.println(rs.getString("name")+"<br>");
           
           
           }
                }
                
                else if (word.equals("k"))
                { %>
                <h3> DISEASE WITH LETTER K </h3>
                <BR>
                <BR>
                <%
                    
           String qry1=" select name from diseases where name like 'K%'   "  ;
           
           rs=stmt.executeQuery(qry1);
           while (rs.next())
           {
           out.println(rs.getString("name")+"<br>");
           
           
           }
                }
                
                
                else if (word.equals("l"))
                { %>
                <h3> DISEASE WITH LETTER L </h3>
                <BR>
                <BR>
                <%
                    
           String qry1=" select name from diseases where name like 'L%'   "  ;
           
           rs=stmt.executeQuery(qry1);
           while (rs.next())
           {
           out.println(rs.getString("name")+"<br>");
           
           
           }
                }
                
                else if (word.equals("m"))
                { %>
                <h3> DISEASE WITH LETTER M </h3>
                <BR>
                <BR>
                <%
                    
           String qry1=" select name from diseases where name like 'M%'   "  ;
           
           rs=stmt.executeQuery(qry1);
           while (rs.next())
           {
           out.println(rs.getString("name")+"<br>");
           
           
           }
                }
                
                
                else if (word.equals("n"))
                { %>
                <h3> DISEASE WITH LETTER N </h3>
                <BR>
                <BR>
                <%
                    
           String qry1=" select name from diseases where name like 'N%'   "  ;
           
           rs=stmt.executeQuery(qry1);
           while (rs.next())
           {
           out.println(rs.getString("name")+"<br>");
           
           
           }
                }
                
                
                else if (word.equals("o"))
                { %>
                <h3> DISEASE WITH LETTER O </h3>
                <BR>
                <BR>
                <%
                    
           String qry1=" select name from diseases where name like 'O%'   "  ;
           
           rs=stmt.executeQuery(qry1);
           while (rs.next())
           {
           out.println(rs.getString("name")+"<br>");
           
           
           }
                }
                
                
                else if (word.equals("p"))
                { %>
                <h3> DISEASE WITH LETTER P </h3>
                <BR>
                <BR>
                <%
                    
           String qry1=" select name from diseases where name like 'P%'   "  ;
           
           rs=stmt.executeQuery(qry1);
           while (rs.next())
           {
           out.println(rs.getString("name")+"<br>");
           
           
           }
                }
                
                
                else if (word.equals("q"))
                { %>
                <h3> DISEASE WITH LETTER Q </h3>
                <BR>
                <BR>
                <%
                    
           String qry1=" select name from diseases where name like 'Q%'   "  ;
           
           rs=stmt.executeQuery(qry1);
           while (rs.next())
           {
           out.println(rs.getString("name")+"<br>");
           
           
           }
                }
                
                
                else if (word.equals("r"))
                { %>
                <h3> DISEASE WITH LETTER R </h3>
                <BR>
                <BR>
                <%
                    
           String qry1=" select name from diseases where name like 'R%'   "  ;
           
           rs=stmt.executeQuery(qry1);
           while (rs.next())
           {
           out.println(rs.getString("name")+"<br>");
           
           
           }
                }
                
                else if (word.equals("s"))
                { %>
                <h3> DISEASE WITH LETTER S </h3>
                <BR>
                <BR>
                <%
                    
           String qry1=" select name from diseases where name like 'S%'   "  ;
           
           rs=stmt.executeQuery(qry1);
           while (rs.next())
           {
           out.println(rs.getString("name")+"<br>");
           
           
           }
                }
                
                else if (word.equals("t"))
                { %>
                <h3> DISEASE WITH LETTER T </h3>
                <BR>
                <BR>
                <%
                    
           String qry1=" select name from diseases where name like 'T%'   "  ;
           
           rs=stmt.executeQuery(qry1);
           while (rs.next())
           {
           out.println(rs.getString("name")+"<br>");
           
           
           }
                }
                
                else if (word.equals("u"))
                { %>
                <h3> DISEASE WITH LETTER U </h3>
                <BR>
                <BR>
                <%
                    
           String qry1=" select name from diseases where name like 'U%'   "  ;
           
           rs=stmt.executeQuery(qry1);
           while (rs.next())
           {
           out.println(rs.getString("name")+"<br>");
           
           
           }
                }
                
                
                else if (word.equals("v"))
                { %>
                <h3> DISEASE WITH LETTER V </h3>
                <BR>
                <BR>
                <%
                    
           String qry1=" select name from diseases where name like 'V%'   "  ;
           
           rs=stmt.executeQuery(qry1);
           while (rs.next())
           {
           out.println(rs.getString("name")+"<br>");
           
           
           }
                }
                
                
           
            
            else if (word.equals("w"))
                { %>
                <h3> DISEASE WITH LETTER W </h3>
                <BR>
                <BR>
                <%
                    
           String qry1=" select name from diseases where name like 'W%'   "  ;
           
           rs=stmt.executeQuery(qry1);
           while (rs.next())
           {
           out.println(rs.getString("name")+"<br>");
           
           
           }
                }
            else if (word.equals("x"))
                { %>
                <h3> DISEASE WITH LETTER X </h3>
                <BR>
                <BR>
                <%
                    
           String qry1=" select name from diseases where name like 'X%'   "  ;
           
           rs=stmt.executeQuery(qry1);
           while (rs.next())
           {
           out.println(rs.getString("name")+"<br>");
           
           
           }
                }
            else if (word.equals("y"))
                { %>
                <h3> DISEASE WITH LETTER Y </h3>
                <BR>
                <BR>
                <%
                    
           String qry1=" select name from diseases where name like 'Y%'   "  ;
           
           rs=stmt.executeQuery(qry1);
           while (rs.next())
           {
           out.println(rs.getString("name")+"<br>");
           
           
           }
                }
            
            else if (word.equals("z"))
                { %>
                <h3> DISEASE WITH LETTER Z </h3>
                <BR>
                <BR>
                <%
                    
           String qry1=" select name from diseases where name like 'Z%'   "  ;
           
           rs=stmt.executeQuery(qry1);
           while (rs.next())
           {
           out.println(rs.getString("name")+"<br>");
           
           
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
                                <br>
                                <br>
                                <br>
				<img src="images/monitoring.jpg" alt="">
                                  <div id="body">
                   
                        
                            <div>
                                <div style="height: auto">   <!--style="height:1007px;-->
                                    <!--write here                             -->

                                  
                                   
				
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