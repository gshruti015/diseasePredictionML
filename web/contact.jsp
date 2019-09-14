
<%@page import="java.util.regex.Matcher"%>
<%@page import="java.util.regex.Pattern"%>
<%@page import="javax.xml.ws.WebServiceRef"%>
<!DOCTYPE HTML>
<!-- Website Template by freewebsitetemplates.com -->
<html>
<head>
	<meta charset="UTF-8">
	<title>Contact</title>
	<link rel="stylesheet" href="css/style.css" type="text/css">
	
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
				
				<li>
					<a href="services.jsp">services</a>
				</li>
				<li>
					<a href="forms.jsp">Search</a>
				</li>
                                 <li>
					<a href="input.jsp">Input</a>
				</li>
				<li class="selected">
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
				<h2>contact</h2>
				<b><a href="#">visit our India office</a></b> <img src="images/florida.jpg" alt=""> <b><a href="#">visit our vancouver office</a></b> <img src="images/vancouver.jpg" alt="">
				<form action="contact.jsp">
                                    <b>send us a message</b> <br><span>Click on the Send Us button below to send us a message</span>
					<input type="text" name="username" id="username" value="Name">
					<input type="text" name="useremail" id="useremail" value="Email Addess">
                                        <input type="text" name="userphone" id="userphone" value="phone number">					
                                        <textarea name="usermsg" id="usermsg" cols="30" rows="10">Write Message Here...</textarea>
					<input type="submit" name="send" id="send" value="send message">
                                        
                                        
        <%
    
            try
            {
            
	email.Email_Service service = new email.Email_Service();
	email.Email port = service.getEmailPort();
         PHONE.Phone_Service service1 = new PHONE.Phone_Service();
	 PHONE.Phone port1 = service1.getPhonePort();
	 // TODO initialize WS operation arguments here
	java.lang.String email = "";
	// TODO process result here
	
	
        if(request.getParameter("send")!=null)
                                        {
                                            %>
    
                                            
   
                                            
                                        <jsp:useBean id="sample" class="beans.contactdet" scope="page">
                                        <jsp:setProperty name="sample" property="*"/>
                                        </jsp:useBean>
    
    <%-- end web service invocation --%><hr/>
    <%-- start web service invocation --%><hr/>
    <%
      String temp;
        temp=sample.getUseremail();
	boolean result = port.operation(temp);
	 // TODO initialize WS operation arguments here
	java.lang.String phoneNo = "";
        String temp1=sample.getUserphone();
	// TODO process result here
	boolean result1 = port.operation(phoneNo);
        if(result==true)
        {
            if(result1==true)
            {
            
              sample.insert();
            }
            else
            {
               out.println("Invalid phone number");
            }
        }
       else
        {
          
           out.println("Invalid email");
                    }
                    
    
                                        
    }
                                        
            }
        catch (Exception ex) 
                {
	// TODO handle custom exceptions here
    
             out.println(ex);
                }
                                        
    %>                                 
                                        
                                        
                                        
				
      
                                        
                                                                 
                                </form>
			</div>
			<div id="sidebar">
				<div class="search">
					<h3>search</h3>
					<form action="index.jsp">
						<input type="text" name="search" id="search" value="Search here...">
						<input type="hidden" name="submit" id="submitBtn" value="">
					</form>
				</div>
				<div class="contact">
					<h3>contact information</h3>
					<ul class="first">
						<li class="office">
							<b>India office</b><span>2955 Powder House Road Boynton Beach, FL 33436</span>
						</li>
						<li class="telephone">
							561-574-0800
						</li>
						<li class="fax">
							561-574-0811
						</li>
						<li class="email">
							<a href="http://www.freewebsitetemplates.com/misc/contact">info@fl.cardiocenter.com</a>
						</li>
					</ul>
					<ul>
						<li class="office">
							<b>vancouver office</b><span>471 melody Lane Richmond, VA 23225</span>
						</li>
						<li class="telephone">
							804-417-2482
						</li>
						<li class="fax">
							804-417-2483
						</li>
						<li class="email">
							<a href="http://www.freewebsitetemplates.com/misc/contact">info@fl.cardiocenter.com</a>
						</li>
					</ul>
				</div>
				<div>
					<h3>office hours:</h3>
					<span>Monday - Friday <span>7:00 a.m. - 4:30 p.m.</span></span> <span>Saturdays &amp; Sundays <span>7:00 a.m. - 12:00 p.m.</span></span>
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
    <%-- start web service invocation --%><hr/>
   
    <%-- end web service invocation --%><hr/>
    <%-- start web service invocation --%><hr/>

    <%-- end web service invocation --%><hr/>
    <%-- start web service invocation --%><hr/>
  
    <%-- end web service invocation --%><hr/>
    <%-- start web service invocation --%><hr/>
   
    <%-- end web service invocation --%><hr/>
</body>
</html>