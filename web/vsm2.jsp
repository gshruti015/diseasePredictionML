<%-- 
    Document   : vsm2
    Created on : May 9, 2014, 6:12:59 PM
    Author     : Gateway
--%>

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
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
          <form name="frm" action="vsm2.jsp">
       Symp1 :<input type="text" name="symp1">
       Symp2 :<input type="text" name="symp2" >
       Symp3 :<input type="text" name="symp3" >
       <input type="submit" name="submit" value="click to check ur disease"/>
        <br>
       
     <%
              
                
                
                
                String SYMParr;
 List<String> list = new ArrayList<String>();
 String SYMPstr[]={"C:/Users/Gateway/Documents/NetBeansProjects/svm/web/inherited","C:/Users/Gateway/Documents/NetBeansProjects/svm/web/pregnancyAndChildbirth","C:/Users/Gateway/Documents/NetBeansProjects/svm/web/cancer","C:/Users/Gateway/Documents/NetBeansProjects/svm/web/endocrine","C:/Users/Gateway/Documents/NetBeansProjects/svm/web/infectious","C:/Users/Gateway/Documents/NetBeansProjects/svm/web/env","C:/Users/Gateway/Documents/NetBeansProjects/svm/web/autoimmune","C:/Users/Gateway/Documents/NetBeansProjects/svm/web/brainAndNervous"};
 for(int n=0;n<SYMPstr.length;n++)
 {         
  BufferedReader br=new BufferedReader(new FileReader(new File(SYMPstr[n])));
  while((SYMParr = br.readLine()) != null)
     {
       list.add(SYMParr);
     }             
 }
 
                    String qry,qry1;
            	String id,str;
            	int i,j;
            	double[][] d= new double[1136][263];
            	double[][] d2= new double[1136][263];
            	String dis[]=new String[1136];
            	String names="",names2="",names3="",namesuse="";
            	String first1,first2,first3="";
            	double[] count=new double[1136];
            	double[] count2=new double[263];
            	double[] use=new double[263];
            	double[] length=new double[1136];
            	double[] cos1=new double[1136];
            	double[] cos2=new double[1136];
                double[] finalcos2=new double[1136];
            	double[] sim=new double[1136];
            	double lengthuser=0.0;
 String[] arr = list.toArray(new String[0]);
 
        try {
            
             for( i=0;i<arr.length;i++)
                    	{  
                          count[i]=0.0;
                        }
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
                                  //out.print(p);
                                  //names2+=names2.substring(names2.indexOf(arr[h]));
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

               ////finding maximum  value
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

       </form>
    </body>
</html>
