/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.StringTokenizer;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Gateway
 */
public class runApriori extends HttpServlet {
    private String qry;
    private String qry1="";

    private String finaloutput="";


    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @SuppressWarnings("empty-statement")
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, Exception {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
                Connection cn;
                Statement stm;
                Class.forName("com.mysql.jdbc.Driver");
                cn=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/work","root","");
                stm=(Statement) cn.createStatement();
                String string1 = "March 1, 2014";
                String string2 = "September 1, 2014";
Date date1 = new SimpleDateFormat("MMMM d, yyyy", Locale.ENGLISH).parse(string1);
Date date2 = new SimpleDateFormat("MMMM d, yyyy", Locale.ENGLISH).parse(string2);
//out.println(date1);
//out.println(date2);
Date sysdate = new Date(); 
out.println(sysdate);
if(sysdate.after(date1) && sysdate.before(date2))
{
 String st[]={"C:/Users/Gateway/Documents/NetBeansProjects/svm/src/java/dataSummer.txt","0.4"};
      Apriori.main(st);
       qry="select name from summerid where id =";
}
else 
{
String st[]={"C:/Users/Gateway/Documents/NetBeansProjects/svm/src/java/dataWinter.txt","0.4"};
      Apriori.main(st);
        qry="select name from winterid where id =";
}
 
     
    
      String output;   
      int p;
      int v;
      int i;
      int tot=0;
      
      BufferedReader br=new BufferedReader(new FileReader("C:/Users/Gateway/Documents/NetBeansProjects/svm/src/java/outfile.txt"));  
      String s; 
      List<String> tmp = new ArrayList<String>();  
      do
        {  
            s = br.readLine();  
            tmp.add(s);  

        }while(s!=null);  
      String[] ss=new String[tmp.size()]; 
      for(i=tmp.size()-1;i>=0;i--) 
      {  
          ss[i]=tmp.get(i);
     }  
    String t=ss[tmp.size()-2];
    String t2=t.replace(',', ' ');
    String t3=t2.replace('[', ' '); 
    String t4=t3.replace(']', ' '); 
    t4=t4.trim();
    
    int len=t4.length();
    int[] dis=new int[len];
       for(i=0;i<len;i++) 
      {  dis[i]=0;}
    //out.print(t4);
    //out.print(len);
    //out.print("<br>");
        for(i=0;i<len;i++) 
      {  
        if(t4.charAt(i)!=' ')
        {
          
           int x = Character.getNumericValue(t4.charAt(i));
            dis[i]=x;
            //out.print("<br>");
            //out.print("I am index of these numbers"+dis[i]);
            tot++;
        }
   
      }
       List<String> tmp1 = new ArrayList<String>();     
          
      for(i=0;i<len;i++) 
      {
          if(dis[i]!=0)
          {
           ResultSet rs;
           rs=stm.executeQuery(qry+dis[i]); 
         
           while(rs.next())
              {
                 out.print("<br>");
                 finaloutput=rs.getString("name");
                 tmp1.add(finaloutput);
                 //out.print(finaloutput);
                 out.print("<br>");
                 
              }
           }
          
          
          finaloutput="";
      }
      HttpSession session= request.getSession();
      session.setAttribute("shruti",tmp1);
      response.sendRedirect("apri.jsp");
        }
        catch(Exception ex)
        {
            out.print(ex);
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
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(runApriori.class.getName()).log(Level.SEVERE, null, ex);
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
        } catch (Exception ex) {
            Logger.getLogger(runApriori.class.getName()).log(Level.SEVERE, null, ex);
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
