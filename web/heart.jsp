<%@page import="java.util.logging.Logger"%>
<%@page import="java.util.logging.Level"%>
<%@page import="java.io.IOException"%>
<%@page import="org.jsoup.Jsoup"%>
<%@page import="org.jsoup.nodes.Document"%>
<%@page import="org.jsoup.nodes.Element"%>
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
				

			</div>
		</div>
		<div class="body">
			<div class="section">
				<div class="article">
					<h2>Latest Videos !</h2>
					
					<p>
					               <%    String s2=" http://www.youtube.com/watch?v=3cW8__wFXDA";
                    int i=s2.indexOf('=');  
                    String s3=s2.substring(i+1);
                   //out.print("ok here IS HER"+s3);
                    String ss="//www.youtube.com/embed/"+s3;
                    out.print("<BR>");
                    //out.print("OOKKKKKK"+ss); %>
                                  
                    <iframe width="560" height="315" src=<%=ss%> frameborder="0" allowfullscreen></iframe>
                                            <a href="index.jsp"><h2>Back to Home Page</h2>


                                            </p>
				</div>
				<div class="aside">
					<b>Important Links !</b>
					<p>
						 
    <%
         try {
            String s="";
            String p="";
            Document doc = Jsoup.connect("https://www.youtube.com/results?search_query=heart+disease").get();
            
           
            for(Element list : doc.select("ol"))
            {
               //out.println(list.attr("class"));
                
                    for(Element list2: list.select("div"))
                    {
                       if(list.hasClass("result-list")&& list2.hasClass("yt-lockup-thumbnail"))
                       {
                            for(Element anchor : list.select("a"))
                            {
                                 
                                    s="https://www.youtube.com"+anchor.attr("href");
                                    p=anchor.attr("title");
                               
                                                                               %>
                                     <a href=<%=s%>><%=p%></a>
                            

                               
                                  <% out.println("<br>");
                            } 
                       }else
                       {
                         //out.println("Link Broken ");
                         out.println("<br>");
                       }
               
                   }
                    
                     //out.print("HERE I AM "+s); 
                     out.print("<BR>");
            }   
         }  
                                      
                                     
              catch (IOException ex) {
            Logger.getLogger(shruti.webcrawler.class.getName()).log(Level.SEVERE, null, ex);
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