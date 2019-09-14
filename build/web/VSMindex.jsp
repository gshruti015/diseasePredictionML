<%-- 
    Document   : VSMindex
    Created on : May 8, 2014, 12:47:28 AM
    Author     : Gateway
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         
       <form name="frm" action="vsm">
   
       <input type="submit" name="submit" value="click to check ur disease"/>
        <br>
       </form>
         <form name="frm" action="runApriori">
      
       <input type="submit" name="submit" value="click to check disease trending"/>
       
       </form>
   <%
        String name=(String)application.getAttribute("disname");
        out.print(name);
    %> 
    </body>
</html>
