<%-- 
    Document   : please
    Created on : May 13, 2014, 7:35:14 PM
    Author     : Gateway
--%>

<%@page import="java.util.logging.Logger"%>
<%@page import="java.util.logging.Level"%>
<%@page import="java.io.IOException"%>
<%@page import="org.jsoup.Jsoup"%>
<%@page import="org.jsoup.nodes.Element"%>
<%@page import="org.jsoup.nodes.Document"%>
<%@page import="org.jsoup.nodes.Document"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <%
         try {
            String s="";
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
                                   s="https://www.youtube.com"+anchor.attr("href");
                                  //out.println(s);%>
                                  <a href=<%=s%>>https://www.youtube.com<%=anchor.attr("href")%></a>

                               
                                  <% out.println("<br>");
                             
                            } 
                       }else
                       {
                         out.println("Link Broken ");
                         out.println("<br>");
                       }
               
                   }
                    
                     out.print("HERE I AM "+s); 
                     out.print("<BR>");
            }   
                    String s2="https://www.youtube.com/watch?v=vl_0PGPddiE"; 
                    int i=s2.indexOf('=');  
                    String s3=s2.substring(i+1);
                    out.print("ok here IS HER"+s3);
                    String ss="//www.youtube.com/embed/"+s3;
                    out.print("<BR>");
                    out.print("OOKKKKKK"+ss);
                                  %>
                    <iframe width="560" height="315" src=<%=ss%> frameborder="0" allowfullscreen></iframe>
                 
                       <%              }  
                                     
              catch (IOException ex) {
            Logger.getLogger(shruti.webcrawler.class.getName()).log(Level.SEVERE, null, ex);
        }

    %>
    </body>
</html>
