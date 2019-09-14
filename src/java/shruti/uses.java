/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package shruti;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;

/**
 *
 * @author Gateway
 */
public class uses extends HttpServlet {

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
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

      

        
        try {
            
            Document doc = Jsoup.connect("https://www.youtube.com/results?search_query=cancer").get();
            
           
            for(Element list : doc.select("ol"))
            {
               out.println(list.attr("class"));
                
                    for(Element list2: list.select("div"))
                    {
                       if(list.hasClass("result-list")&& list2.hasClass("yt-lockup-thumbnail"))
                       {
                            for(Element anchor : list.select("a"))
                            {
                                 
                                  //System.out.println("www.youtube.com"+anchor.attr("href")); 
                                  String s="www.youtube.com"+anchor.attr("href");
                                  out.println(s);
                             
                            } 
                       }else
                         out.println("Link Broken ");
               
               
                   }
                    
                       
                 }
              }
              catch (IOException ex) {
            Logger.getLogger(webcrawler.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    

    }


