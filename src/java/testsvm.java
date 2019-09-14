

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
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Scanner;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;


public class testsvm extends HttpServlet {

  
    @SuppressWarnings("empty-statement")
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException, SQLException,RuntimeException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        HttpSession session=request.getSession(false);
        String[] userquery=(String[])session.getAttribute("str");
        String qry,qry1;
            	String symptoms,ID,filestr;
                String output = null;
                int IDD;
                int outID;
            
            	String dis[]=new String[1136];
            	
            	String first1,first2,first3="";
            
                //TO BE CONVERTDED USING USER QUERY
//              String symp1 = request.getParameter("symp1");
//              String symp2 = request.getParameter("symp2");
//              String symp3 = request.getParameter("symp3");
//              String[] userquery=new String[3];
//              userquery[0]=symp1;
//              userquery[1]=symp2;
//              userquery[2]=symp3;
//              for(int q=0;q<userquery.length;q++)
//              {
//                  out.print(" "+userquery[q]);
//              }
              
                
                
      String nameOfTextFile;
      nameOfTextFile = "C:/Users/Gateway/Documents/NetBeansProjects/svm/src/java/svm/libsvm-3.18/libsvm-3.18/java/query.txt";
      response.setContentType("text/html;charset=UTF-8");
      
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
        	int[][] d= new int[1136][stringArr.length];
            	int[][] d2= new int[1136][stringArr.length];
                  int[] pref=new int[stringArr.length];
        int[] userflag=new int[stringArr.length];
        for(int j=0;j<stringArr.length;j++)
           {
               userflag[j]=0;
           }
         try 
            {
              //String userquery="";
              //userquery+= "corticosteroid height";
               // String[] userquery={"sores","moles","bowel"};
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
               String  userstring="+10 ";
               for(int g=0;g<userquery.length;g++)
               {
                  for(int k=0;k<stringArr.length;k++)
                  {
                     if(userquery[g].indexOf(stringArr[k])>=0)
                     {
                       userflag[k]=1;
                       userstring+=(k+1)+":"+pref[k]+" ";
                     }
                  }
               }
                pw.print(userstring);
                pw.close();
            // Process p = Runtime.getRuntime().exec("javac C:/Users/Gateway/Documents/NetBeansProjects/svm/src/java/svm/libsvm-3.18/libsvm-3.18/java/svm_predict.java");
            //Process p2 = Runtime.getRuntime().exec("java C:/Users/Gateway/Documents/NetBeansProjects/svm/src/java/svm/libsvm-3.18/libsvm-3.18/java/svm_predict C:/Users/Gateway/Documents/NetBeansProjects/svm/src/java/svm/libsvm-3.18/libsvm-3.18/java/query.txt C:/Users/Gateway/Documents/NetBeansProjects/svm/src/java/svm/libsvm-3.18/libsvm-3.18/java/finaltrained.txt.model C:/Users/Gateway/Documents/NetBeansProjects/svm/src/java/svm/libsvm-3.18/libsvm-3.18/java/output");


         String st[]={"C:/Users/Gateway/Documents/NetBeansProjects/svm/src/java/svm/libsvm-3.18/libsvm-3.18/java/query.txt","C:/Users/Gateway/Documents/NetBeansProjects/svm/src/java/svm/libsvm-3.18/libsvm-3.18/java/finaltrained.txt.model","output"};
         svm_predict.main(st);
         
         
          String outputfile="C:/Users/Gateway/Documents/NetBeansProjects/svm/src/java/svm/libsvm-3.18/libsvm-3.18/java/output.txt";
          BufferedReader br1=new BufferedReader(new FileReader(new File(outputfile)));
                  while(br1.ready())
           {
                 out.println("Output is here HHHHHH");
                 output=br1.readLine();
                 out.println(output);
                 break;
           }
           out.print(" hhiiii i am output  i n decimal "+output);
           double data=Double.parseDouble(output.trim());
           outID=(int)data;
           out.print(" I AM OUT ID"+outID);
           String finaloutput=" ";
           Connection cn;
           Statement stm;
           //out.print("gbfjdsbg");
           Class.forName("com.mysql.jdbc.Driver");
           cn=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/work","root","");
           stm=(Statement) cn.createStatement();
           qry="select * from diseases where ID='"+outID+"'";
           ResultSet rs;
           rs=stm.executeQuery(qry); 
           while(rs.next())
              {
                 finaloutput=rs.getString("name");
                 out.print(finaloutput);
              }
          ServletContext context=getServletConfig().getServletContext();
         context.setAttribute("disname",finaloutput);
         response.sendRedirect("input.jsp");
        } finally {
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
            throws ServletException, IOException, RuntimeException{
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(testsvm.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(testsvm.class.getName()).log(Level.SEVERE, null, ex);
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
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(testsvm.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(testsvm.class.getName()).log(Level.SEVERE, null, ex);
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
