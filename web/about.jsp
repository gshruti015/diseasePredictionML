<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE HTML>
<!-- Website Template by freewebsitetemplates.com -->
<html>
<head>
	<meta charset="UTF-8">
	<title>About </title>
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
				<li class="selected">
					<a href="about.jsp">about</a>
				</li>
				
				<li>
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
		<div class="content">
			<div id="section">
                                        <%StringBuffer requestURL = request.getRequestURL();
if (request.getQueryString() != null) {
    requestURL.append("?").append(request.getQueryString());
}
    String completeURL = requestURL.toString();%>
		
				<h2>about</h2>
				<p>
                                    <b>Mission</b>- To inspire hope and contribute to health and well-being by providing the best care to every patient through integrated clinical practice, education and research. 
                                    <br> <b>Primary value</b>- The needs of the patient come first.
                                    <b>Value statements</b>- These values, which guide Mayo Clinic's mission to this day, are an expression of the vision and intent of our founders, the original Mayo physicians and the Sisters of Saint Francis.
				</p>
				<img src="images/old-couple.jpg" alt="">
				<div class="article">
					<div>
						<h3> OUR COMMITMENT</h3>
						<p>
						Search for answers for every patient through individualized medicine so that Mayo can better understand disease differences at the genetic level, enabling Mayo to personalize treatments more effectively.
Transform the science of health care delivery by improving and sharing what it has learned for the benefit of the entire organization and all of medicine.	
						</p>
						<h3>WHY DRUG SCIENCE</h3>
						<p>
							Why should you blend your price transparency solution directly into your health and wellness platform? It?s simple. It?s about simplicity for participants. Plus it means fewer partnerships for you to manage, stronger engagement and a faster ROI for your organization.
						</p>
					</div>
					<div>
						<h3>Be Part of Our Community</h3>
						<p>
							Our organizational priorities are aimed at ensuring that our patient focus permeates the entire organization, in every department at every location. Mayo Clinic will focus significant effort on improving its ability to: Integrate as a unified organization with multiple locations so that wherever patients are seen, they have the same experience and know that they have access to all of Mayo Clinic's resources.
						</p>
						<h3>TRACKER AND CHALLENGESS</h3>
						<p>
							Hello to Health
						</p>
						
						<p>
							In this year?s report to the community, LRMC reports on the exciting journey to a healthier tomorrow by strengthening the health of the community, by delivering nationally recognized healthcare and by advancing the future of healthcare
						</p>
						<p>
							Nurses at LRMC are educated, professional, knowedgeable, compassionate, innovative, and dedicated to excellence in nursing practice.
						
                                                         Looking to re-energize your member engagement, employer wellness, or medical management initiatives? We can help.
                                                </p>
						
					</div>
				</div>
			</div>
			<div id="sidebar">
				<div class="search">
					<h3>search</h3>
					<form action="services.jsp">
						<input type="text" name="search" id="search" value="Search here...">
						<input type="hidden" name="submit" id="submitBtn" value="">
					</form>
				</div>
				<div class="testimonials">
					<h3>patients' testimonials</h3>
                                       
                                              <jsp:useBean id="show" class="beans.show" scope="request" />
                                <%
                                   
                                    List<Object> list=new ArrayList<Object>();
                                    list=show.getDb_Data();
                   for(int i=0;i<list.size();i++)
                {
                    show.setObj(list.get(i));
                
                                %>
                          <ul>                  
			<li>
                            <p><%out.println(show.getCmnt());%></p>
                   
                            <%out.println(show.getName());%>
                                                   
		         </li>
		            </ul>
                                
                   <%   }%>                          
                                       <br>                             
                  
                  <br>                             
<!--                   <a href="apri.jsp">Trending this season</a>      <br>     
                   <a href="newjsp2.jsp?url1=">BookMark this Page</a><br>
                   <a href="viewBookmarkedPages.jsp">viewAllBookmarkedPages</a><br>  
                          -->
                        
          </div>
          </div>		
				
				
                        </div>	</div>
        
        

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