
<%@page import= "java.sql.*" %>
<%@page import="java.util.*" %>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.SQLException"%>
<!DOCTYPE HTML>
<!-- Website Template by freewebsitetemplates.com -->
<html>
<head>
	<meta charset="UTF-8">
	<title>Drug Science </title>
                <link href='http://fonts.googleapis.com/css?family=Mr+Dafoe' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Amaranth:700' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" type="text/css" href="css/component.css" />
	<script src="js/modernizr.custom.js"></script>
	<link rel="stylesheet" href="css/slider.css" />
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
		<div class="">
			<!--<div>
				<img src="images/biking.jpg" alt="">
				<ul>
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
				</ul>
			</div>-->
                        	<section id="slideshow">
		
		<div class="container">
			<div class="c_slider"></div>
			<div class="slider">
				<figure>
					<img src="images/dummy1-640x310-1.jpg" alt="" style="width:900px;height:310px;"/>
					<figcaption>Waking Life</figcaption>
				</figure><!--
				--><figure>
					<img src="images/dummy2-640x310-2.jpg" alt="" style="width:900px;height:310px;" />
					<figcaption>Leading The Way To Future Of Health</figcaption>
				</figure><!--
				--><figure>
					<img src="images/dummy3-640x310-3.jpg" alt="" style="width:900px;height:310px;" />
					<figcaption>Dreaming Of Healthy Lives</figcaption>
				</figure><!--
				--><figure>
					<img src="images/dummy4-640x310-4.jpg" alt="" style="width:900px;height:310px;"  />
					<figcaption>Join Our 7 Million Campaign </figcaption>
				</figure>
			</div>
		</div>
		
		
		<ul class="dots_commands"><!--
			--><li><a title="Show slide 1" href="#sl_i1">Slide 1</a></li><!--
			--><li><a title="Show slide 2" href="#sl_i2">Slide 2</a></li><!--
			--><li><a title="Show slide 3" href="#sl_i3">Slide 3</a></li><!--
			--><li><a title="Show slide 4" href="#sl_i4">Slide 4</a></li>
		</ul>
		
	</section>
		</div>
            

		<div class="body">
			<div class="section">
				<div class="article">
					<h2>Welcome to Drug Science Center!</h2>
					<img src="images/heart.jpg" alt="">
					<p>
						Drug Science has again redefined what a health assessment can be. Making it brief (15 minutes or less to complete), highly visual and interactive was just the beginning. The new DrugScience Compass health assessment is unique in that it enables consumers to update their assessment?in whole or in part?any time during the year, creating the first truly evergreen assessment linked to a real-time personalization and prioritization engine. 
					</p>
				</div>
                            		<div class="aside">
				<b>Common Drugs And Their Price </b>
                                       
                                           <marquee  behavior="scroll" direction="up" scrollamount="1">
                                                                <table style="width:100%">

                                            <% 
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
                 
             { %>
              <table style="width:100%">
 
  
            

  <tr>
    <td align="left"><%out.println(rs12.getString("disease"));%></td>
    <td></td>
    <td></td>
    <td  align="right"><%out.println(rs12.getString("drug"));%> </td>
    <td></td>
    <td></td>
    <td  align="right"><%out.println(rs12.getString("cost"));%> </td>
  </tr>

</table>

       <%       i++ ;
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
                                            
                                        </marquee>
                                        </div>
			</div>
		</div>
            
		<div class="container">

			<div class="wrapper">
				<ul class="stage clearfix">

					<li class="scene">
						<div class="movie" onclick="return true">
							<div class="poster"></div>
							<div class="info">
								<header>
									<h1>Shivam Khandelwal</h1>
									<span class="year">skbly7</span>
									<span class="rating">PG</span>
									<span class="duration">130 minutes</span>
								</header>
								<p>
									In Bedford Falls, New York on Christmas Eve, George Bailey is deeply troubled. Prayers for his well-being from friends and family reach Heaven. Clarence Odbody, Angel Second Class, is assigned to visit Earth to save George, thereby earning his wings. Franklin and Joseph, the head angels, review George's life with Clarence.
								</p>
							</div>
						</div>
					</li>

					<li class="scene">
						<div class="movie" onclick="return true">
							<div class="poster"></div>
							<div class="info">
								<header>
									<h1>Vengeance Valley</h1>
									<span class="year">1951</span>
									<span class="rating">NR</span>
									<span class="duration">83 minutes</span>
								</header>
								<p>
									A cattle baron takes in an orphaned boy and raises him, causing his own son to resent the boy. As they get older the resentment festers into hatred, and eventually the real son frames his stepbrother for fathering an illegitimate child that is actually his, seeing it as an opportunity to get his half-brother out of the way so he can have his father's empire all to himself.
								</p>
							</div>
						</div>
					</li>

					<li class="scene">
						<div class="movie" onclick="return true">
							<div class="poster"></div>
							<div class="info">
								<header>
									<h1>The Gold Rush</h1>
									<span class="year">1925</span>
									<span class="rating">NR</span>
									<span class="duration">95 minutes</span>
								</header>
								<p>
									The Tramp travels to the Yukon to take part in the Klondike Gold Rush. He gets mixed up with some burly characters and falls in love with the beautiful Georgia. He tries to win her heart with his singular charm.
								</p>
							</div>
						</div>
					</li>

				</ul>
			</div><!-- /wrapper -->
		</div><!-- /container -->
                
             
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