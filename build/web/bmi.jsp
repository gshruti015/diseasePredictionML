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
					<li >
						<a href="services.jsp">Our services</a>
						<ul>
							<li class="active">
								<a href="a-z.jsp">Search Diseases</a>
							</li>
							<li>
								<a href="check.jsp">Search Drug And Drug Interaction</a>
							</li>
							<li class="selected collapse">
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
			<h2>BODY MASS INDEX CALCULATOR</h2>
                                        
        <form name ="form" action ="bmi.jsp">
            <fieldset>
                <legend> BODY MASS INDEX </legend>
                 WEIGHT : <input type="text" name="wt" required /> <br>
                
                 KG:<input type="radio" name="radio" value="kg"/> 
                 
                 POUND:<input type="radio" name="radio" value="lb"/><br>
                 HEIGHT:<input type="text" name="ht" required /><br>
                 CM:<input type="radio" name="radio1" value="m"/>
                 
                 INCH:<input type="radio" name="radio1" value="in"/><br>
            
              
            
            <br>
            <input type="submit" name="submit"/><br>
           
            (1 kg = 2.2 pounds)<br>
            (1 foot = 12 inches)
            
            </fieldset>
            
        </form>
        
    


<% 

String wt= request.getParameter("wt");

String ht=request.getParameter("ht");

String input=request.getParameter("radio") ;
String input1=request.getParameter("radio1") ;

if(input!=null && input1!=null)
    
{

if(input.equals("kg")&& input1.equals("m"))
{

float wt1=Integer.parseInt(wt);

float ht1=Integer.parseInt(ht);
float  ht2= ht1/100 ;


float  bmi= (wt1/(ht2*ht2)) ;

%>

<h4>YOUR BMI IS :</h4><% 

out.println(bmi) ;
} 




else if(input.equals("lb")&& input1.equals("in"))
{

float wt1=Integer.parseInt(wt);
float ht1=Integer.parseInt(ht) ;

float bmi = ((wt1*703)/(ht1*ht1)) ;

%>

<h4>your bmi is :</h4>


<%
out.println(bmi) ;

}%>

<h5>BMI Categories:</h5>


<ul>
    <li>Underweight = <18.5 </li>
    <li>Normal weight = 18.5?24.9</li>
    <li>Overweight = 25?29.9</li>
    <li>Obesity = BMI of 30 or greater</li>

</ul>



<%}
%>  
				


<br>
<br>
<br>
<br>

<img src="images/monitoring.jpg" alt="">
                     
		
				
				
			
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