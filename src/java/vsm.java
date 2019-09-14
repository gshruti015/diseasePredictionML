/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Gateway
 */
public class vsm extends HttpServlet {
    private Object finaloutput;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException, ClassNotFoundException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
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
           //out.println("NEXT FILE "+i);
 }//this is the symptom array the main array with which we compare
 String[] arr = list.toArray(new String[0]);
 out.println("Length of symptom array is "+(arr.length));
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
              for(int q=0;q<userquery.length;q++)
              {
                  out.print(" "+userquery[q]);
              }
              
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
                               out.print("<br>");
                    	       //out.print("****"+names.indexOf(arr[i])+"\n"+arr[i]+"*****\n");
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
                	        out.print("<br>");
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
                       for(i=0;i<arr.length;i++)
                    	{  
                          //out.print("shruti1");                             
                            out.print("Counts of "+arr[i]+"  in the whole document is :"+count[i]);
                            out.print("<br>");
                        }
                   //for printing first matrix if symptom mathces then one else 0
                   for(i=0;i<arr.length;i++)
                   //out.print(arr[i]+"<br> ");
                   out.print("<br>");
                   for(i=0;i<dis.length;i++)
                     {
                    	out.print("<br>"+dis[i]+" ");
                    	for(j=0;j<arr.length;j++)
                    	{
                           out.print(d[i][j]+" ");
                        }
                        out.print("<br>");
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
                    //out.print("hello "+count2[k]+" ");
                    //out.print("  hi "+((Math.log(7.0/5.0)*1000)/Math.log(2.0))); 	                
                   }
                for(int b=0;b<arr.length;b++)
                    	{  
                         out.print("Count of "+arr[b]+"  in the whole document is :"+count[b]);
                         out.print("Cost of "+arr[b]+"  in the whole document is :"+count2[b]);
                         out.print("<br>");
                        }
                
             	///calculation of next matrix     
            	for(int l=0;l<dis.length;l++)
             	{
                 	for(int m=0;m<arr.length;m++)
                 	{
                     	   d2[l][m]=d[l][m]*count2[m];
                 	}
             	}
                //printing it
                for(i=0;i<arr.length;i++)
                    	//out.print(arr[i]+"<br> ");
                out.print("<br>");
                 for(i=0;i<dis.length;i++)
                	{
                    	   out.print("<br>"+dis[i]+" ");
                    	   for(j=0;j<arr.length;j++)
                    	    {
                              out.print(d2[i][j]+" ");
                            }
                            out.print("<br>");
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
                for(int nn=0;nn<dis.length;nn++)
                 	{
                        out.print(nn+1);
                  	out.print("Hi i am length of all documents square thing  "+length[nn]);
                        out.print("<br>");
                 	}
                             
             	for(int n=0;n<dis.length;n++)
                	{
                 	length[n]=Math.sqrt(length[n]);
                	} 
                 for(int nn=0;nn<dis.length;nn++)
                 	{
                        out.print(nn+1);    
                  	out.print("Hi i am length of all documents square ROOT thing  "+length[nn]);
                        out.print("<br>");
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
                for(int nn=0;nn<arr.length;nn++)
                {
                    out.print("Hi i am user tf-idf thing "+use[nn]+"The symptom being "+arr[nn]);
                    out.print("<br>");
                }
                //calculation of length
              	for(int ng=0;ng<arr.length;ng++)
             	{
                        lengthuser=lengthuser+(use[ng]*use[ng]);
                }
                lengthuser=Math.sqrt(lengthuser);
                out.print("<br>");
                out.print("Length of user query :"+lengthuser);
                     
                 
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
                for(int yy=0;yy<dis.length;yy++)
                {
                   out.print("<br>"+(yy+1)); 
                   out.print("  I am cosine similarity of disease at ID "+(yy+1)+" "+cos2[yy]);
                   out.print("<br>");
                }
                ///select only non zero values 
                for(int yy=0;yy<dis.length;yy++)
                {
                   if(cos2[yy]!=0.0)
                       finalcos2[yy]=cos2[yy];
                   else            
                       finalcos2[yy]=0;
                }
                
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
                   out.print("<br>"); 
                }
                out.print("I AM INDEX OF SEARCHED DISEASE  "+index);
               
               	// giving final result
              	qry1="select * from diseases where id='"+(index+1)+"'";
                rs=st.executeQuery(qry1);
            
               	while(rs.next())
                {
                  namesuse=rs.getString("name");
                  out.println(namesuse);
                }
                //THIS PART OF CODE NEEDS TO BE CORRECTED IN ORDER TO REDIRECT ANSWER AT JSP PAGE
                ServletContext context=getServletConfig().getServletContext();
         context.setAttribute("disname",namesuse);
         response.sendRedirect("VSMindex.jsp");
        }
//               catch(Exception ex)
//             	{out.println(ex);}
          
         

finally {
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */

@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(vsm.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(vsm.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(vsm.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(vsm.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
