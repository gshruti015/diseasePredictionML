/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Gateway
 */
public class trainsvm extends HttpServlet {

  
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        	String qry,qry1;
            	String symptoms,ID,filestr;
                int IDD;
            	int[][] d= new int[1136][264];
            	int[][] d2= new int[1136][264];
            	String dis[]=new String[1136];
            	
            	String first1,first2,first3="";
                int[] pref=new int[264];
                String nameOfTextFile; 
        nameOfTextFile = "C:/Users/Gateway/Documents/NetBeansProjects/svm/web/finaltrained.txt";
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        PrintWriter pw = new PrintWriter(new FileOutputStream(nameOfTextFile));
      String arr;
      List<String> list = new ArrayList<String>();
      String str[]={"C:/Users/Gateway/Documents/NetBeansProjects/svm/web/inherited","C:/Users/Gateway/Documents/NetBeansProjects/svm/web/pregnancyAndChildbirth","C:/Users/Gateway/Documents/NetBeansProjects/svm/web/cancer","C:/Users/Gateway/Documents/NetBeansProjects/svm/web/endocrine","C:/Users/Gateway/Documents/NetBeansProjects/svm/web/infectious","C:/Users/Gateway/Documents/NetBeansProjects/svm/web/env","C:/Users/Gateway/Documents/NetBeansProjects/svm/web/autoimmune","C:/Users/Gateway/Documents/NetBeansProjects/svm/web/brainAndNervous"};
      for(int i=0;i<str.length;i++)
        {         
        BufferedReader br=new BufferedReader(new FileReader(new File(str[i])));
          while((arr = br.readLine()) != null)
          {
            list.add(arr);
          }             
           //out.println("NEXT FILE "+i);
        }//this is the symptom array the main array with which we compare
        String[] stringArr = list.toArray(new String[0]);
        out.println("Length of symptom array is "+(stringArr.length));
        
        
        try {
           for(int i=0;i<stringArr.length;i++)
                {
                    if(stringArr[i].indexOf("extreme")>=0)
                    {
                        pref[i]=6;
                    }
                    else if(stringArr[i].indexOf("high")>=0)
                    {
                        pref[i]=5;
                    }
                    else if(stringArr[i].indexOf("persistent")>=0)
                    {
                        pref[i]=4;
                    }
                    else if(stringArr[i].indexOf("average")>=0)
                    {
                        pref[i]=3;
                    }
                    else if(stringArr[i].indexOf("low")>=0)
                    {
                        pref[i]=1;
                    }
                    else
                        pref[i]=2;
                }

                    
                    
                	Connection cn;
                	Statement st;
                        Class.forName("com.mysql.jdbc.Driver");
                	cn=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/work","root","");
                	st=(Statement) cn.createStatement();
                	qry="select * from diseases ";
                	ResultSet rs;
                	rs=st.executeQuery(qry);
                        
                        while(rs.next())
                        {
                         symptoms=rs.getString("symptoms");
                         symptoms=symptoms.toLowerCase();
                         ID=rs.getString("ID");
                         IDD = Integer.parseInt(ID);
		         dis[IDD-1]=rs.getString("name");
                      for(int i=0;i<stringArr.length;i++)
                    	   {
                    	    if(symptoms.indexOf(stringArr[i])>=0)
                   	       { 
                        	d[IDD-1][i]=1;
                   	       }
                   	     else
                   	       {
                     	       d[IDD-1][i]=0;
                   	       }
                    	    }
                        }
               
   		int i,j;
                	//for printing first matrix
                	for(i=0;i<stringArr.length;i++)
                    
                	out.print("<br>");
                	for(i=0;i<dis.length;i++)
                	{
                    	out.print("<br>"+dis[i]+" ");
                    	for(j=0;j<stringArr.length;j++)
                    	{
               
                              out.print(d[i][j]+" ");
                              
                    	}
                        out.print("<br>");
               	}
                        for(i=0;i<dis.length;i++)
                        {
                            filestr="";
                            filestr+="+"+(i+1)+" ";
                            for(j=0;j<stringArr.length;j++)
                            {
                                if(d[i][j]==1)
                                {
                                    double dd=((double)pref[j]/stringArr.length);
                                    filestr+=(j+1)+":"+dd+" ";
                                }
                            }
                            filestr+="\n";
                            pw.print(filestr);
                        }
                   pw.close();
                   out.println("FILE written sucessfully");
        }
     
                  	catch(Exception ex)
            	{
                	out.println(ex);
            	}
        
 
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
        processRequest(request, response);
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
        processRequest(request, response);
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
