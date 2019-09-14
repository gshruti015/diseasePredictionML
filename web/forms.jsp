
<%@page import="java.io.File"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.util.List"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="com.mysql.jdbc.Statement"%>
<%@page import="com.mysql.jdbc.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
				<li class="selected">
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
					<h2>Welcome to Drug Science Center!</h2>
					<img src="images/heart.jpg" alt="">
					<p>
								<form name="frm" action="forms.jsp">
                                                                    Symp1 :<input type="text" name="symp1"><br>
                                                                    Symp2 :<input type="text" name="symp2" ><br>
                                                                    Symp3 :<input type="text" name="symp3" ><br>
                                                                    <input type="submit" name="submit" value="click to check ur disease"/><br>
        <br>
       
     <%
         String qry,qry1;
            	String id,str;
            	int i,j;
            	
            	String dis[]=new String[1136];
            	String names="",names2="",names3="",namesuse="";
            	String first1,first2,first3="";
            	double[] count=new double[1136];
            	
            	double[] length=new double[1136];
            	double[] cos1=new double[1136];
            	double[] cos2=new double[1136];
                double[] finalcos2=new double[1136];
            	double[] sim=new double[1136];
            	double lengthuser=0.0;       
                
                
                
                String SYMParr;
 List<String> list = new ArrayList<String>();
 String SYMPstr[]={"C:/Users/Gateway/Documents/NetBeansProjects/svm/web/inherited","C:/Users/Gateway/Documents/NetBeansProjects/svm/web/pregnancyAndChildbirth","C:/Users/Gateway/Documents/NetBeansProjects/svm/web/cancer","C:/Users/Gateway/Documents/NetBeansProjects/svm/web/endocrine","C:/Users/Gateway/Documents/NetBeansProjects/svm/web/infectious","C:/Users/Gateway/Documents/NetBeansProjects/svm/web/env","C:/Users/Gateway/Documents/NetBeansProjects/svm/web/autoimmune","C:/Users/Gateway/Documents/NetBeansProjects/svm/web/brainAndNervous"};
 for(i=0;i<SYMPstr.length;i++)
 {         
  BufferedReader br=new BufferedReader(new FileReader(new File(SYMPstr[i])));
  while((SYMParr = br.readLine()) != null)
     {
       list.add(SYMParr);
     }             
 }
 String[] arr = list.toArray(new String[0]);
 
        try {
            
             for( i=0;i<arr.length;i++)
                    	{  
                          count[i]=0.0;
                        }
             double[][] d= new double[1136][arr.length];
            	double[][] d2= new double[1136][arr.length];
                double[] count2=new double[arr.length];
            	double[] use=new double[arr.length];
              String symp1 = request.getParameter("symp1");
              String symp2 = request.getParameter("symp2");
              String symp3 = request.getParameter("symp3");
              String[] userquery=new String[3];
              userquery[0]=symp1;
              userquery[1]=symp2;
              userquery[2]=symp3;
         
                        Connection cn;
                	Statement st;
                        Class.forName("com.mysql.jdbc.Driver");
                	cn=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/work","root","");
                	st=(Statement) cn.createStatement();
                	qry="select * from diseases";
                	ResultSet rs;
                	rs=st.executeQuery(qry);
                       
                        while(rs.next())
                        {
                            
                           names=rs.getString("symptoms");
                    	   id=rs.getString("ID");
                           int id1 = Integer.parseInt(id);
		           dis[id1-1]=rs.getString("name");
                    	   for( i=0;i<arr.length;i++)
                    	    {  
                             
                               if(names.indexOf(arr[i])>=0)
                   	         {
                        	   d[id1-1][i]=1.0;
                   	         }
                   	       else
                   	         {
                     	           d[id1-1][i]=0.0;
                   	         } 
                    	    }
                    	        names2=names2+names;   
                	    
                        }
   				
                        names3="";
			names3+=names2;
                        for(int h=0;h<arr.length;h++)
                         {
		           int p=names2.indexOf(arr[h]);
                           //names2+=names3;
                     	   while(true)
                     	   {
                             if(p<0)
                                  break;
                             else
                         	{
                             	  count[h]++;         
                                  p++;
			          p=names2.indexOf(arr[h],p);
                                 
                         	}
                            }
                         }
                   
            	  for(int k=0;k<arr.length;k++)
            	   {
                      if(count[k]==0.0)
                       {
                         count2[k]=0.0;
                       }  
                       else
                       {
                         double dislen=(double)dis.length;  
                         count2[k]=((Math.log(dislen/count[k])/Math.log(2.0)));
                       }
               	                
                   }
             
                
             	///calculation of next matrix     
            	for(int l=0;l<dis.length;l++)
             	{
                 	for(int m=0;m<arr.length;m++)
                 	{
                     	   d2[l][m]=d[l][m]*count2[m];
                 	}
             	}
            
             	//calculation of length
                for(int n=0;n<dis.length;n++)
             	{
                  for(int nn=0;nn<arr.length;nn++)
                 	{
                  	  length[n]=length[n]+(d2[n][nn]*d2[n][nn]);
                 	}
            	}
                //printing that array
             
             	for(int n=0;n<dis.length;n++)
                	{
                 	length[n]=Math.sqrt(length[n]);
                	} 
              
             	///calculation of values for user query here there will be changes when html is connected
             	//String user="sores abdominal";
             	///calculation of tf ifd
             
              for(int g=0;g<userquery.length;g++)
                  {
             	    for(int pp=0;pp<arr.length;pp++)
             	     {
              	      if(userquery[g].indexOf(arr[pp])<0)
                   	{
                        	use[pp]=0.0;
                   	}
              	       else
                  	use[pp]=((1.0/count[pp])*count2[pp]);
             	     }
                   }
          
                //calculation of length
              	for(int ng=0;ng<arr.length;ng++)
             	{
                        lengthuser=lengthuser+(use[ng]*use[ng]);
                }
                lengthuser=Math.sqrt(lengthuser);
              
                 
             	///COSINE SIMILARIY
             	for(int xx=0;xx<dis.length;xx++)
             	{
                   for(int yy=0;yy<arr.length;yy++)
                     {
                       sim[xx]=sim[xx]+(d2[xx][yy]*use[yy]);
                     }
             	}
        	for(int yy=0;yy<dis.length;yy++)
                {
                   if(length[yy]==0.0)
                       cos2[yy]=0.0;
                   else            
                       cos2[yy]=(sim[yy]/(length[yy]*lengthuser));
                }
              
                ///select only non zero values 
//                for(int yy=0;yy<dis.length;yy++)
//                {
//                   if(cos2[yy]!=0.0)
//                       finalcos2[yy]=cos2[yy];
//                   else            
//                       finalcos2[yy]=0;
//                }
                
               ///finding maximum  value
               double max=cos2[0];  
               int index=0;
               for(int t=0;t<dis.length;t++)
               {
                   if(max<cos2[t])
                   {
                       max=cos2[t]; 
                       index=t;
                   }
                        }
             
               	// giving final result
              	qry1="select * from diseases where id='"+(index+1)+"'";
                rs=st.executeQuery(qry1);
            
               	while(rs.next())
                {
                  namesuse=rs.getString("name");
                  out.println(namesuse);
                }
                //THIS PART OF CODE NEEDS TO BE CORRECTED IN ORDER TO REDIRECT ANSWER AT JSP PAGE
//                ServletContext context=getServletConfig().getServletContext();
//         context.setAttribute("disname",namesuse);
//         response.sendRedirect("VSMindex.jsp");
        }
//               catch(Exception ex)
//             	{out.println(ex);}
          
         

finally {
            out.close();
        }
     %>	
					</p>
				</div>
				<div class="aside">
					<b>Helping people be healthy</b>
					<p>
						DrugScience is ready to serve any medical need you may have. DrugScience is a full service medical center and health system. As an 851-bed not-for-profit medical center, DrugScience (DrugScience) is the fifth largest hospital in the state of Florida and also operates the busiest single-site Emergency Department in the state. Lakeland Regional Cancer Center is the area?s dedicated, comprehensive center of its kind, offering more coordinated care.
					</p>
					<a href="#">-Mr.Robinson, Ohio</a>
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