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
				<li class="selected">
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
					<h2>Welcome to Drug Science Center!</h2>
					<img src="images/heart.jpg" alt="">
					<p>
					
                                            
                                          A disease or medical condition is an abnormal condition of an organism that impairs bodily functions, associated with specific symptoms and signs. It may be caused by external factors, such as infectious disease, or it may be caused by internal dysfunctions, such as autoimmune diseases. 
                                          <br><b> This web service will help you to know more about your body and abnormalities.</b>
                                            
                                            
					</p>
				</div>
				<div class="aside">
					<b>Helping people be healthy</b>
					<p>
						
					
                                         <h1>Find your Disease..!!</h1>
        <form action="test.jsp" >
            <h2>Enter your Symptoms</h2>
            Symptom:<input type="text" name="symp1">
            Symptom:<input type="text" name="symp2">
            Symptom:<input type="text" name="symp3">
            <input type="submit" name="submit">
              
            
        </form>
    <%-- start web service invocation --%><hr/>
    <%
    try {
	pak.Web_Service service = new pak.Web_Service();
	pak.Web port = service.getWebPort();
	 // TODO initialize WS operation arguments here
	java.lang.String symp1 = "";
	java.lang.String symp2 = "";
	java.lang.String symp3 = "";
	// TODO process result here
        String a=request.getParameter("symp1");
        String b=request.getParameter("symp2");
        String c=request.getParameter("symp3");
        
	java.lang.String result = port.operation(a, b, c);
	out.println("The Predicted Diseases Result is= "+result);
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    %>
                                        
                                        </p>
					
				</div>
			</div>
		</div>
		<div class="footer">
			<div>
				<a href="programs.jsp"><img src="images/doctors.jpg" alt=""></a>
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