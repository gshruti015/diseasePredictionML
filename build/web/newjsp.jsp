
<%-- 
    Document   : chart
    Created on : May 13, 2014, 7:29:10 PM
    Author     : User
--%>



<%@page import="java.util.concurrent.TimeUnit"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>



<%@page import="java.sql.*"%>



<%@ page  import="java.awt.*" %>
<%@ page  import="java.io.*" %>
<%@ page  import="org.jfree.chart.*" %>
<%@ page  import="org.jfree.chart.axis.*" %>
<%@ page  import="org.jfree.chart.entity.*" %>
<%@ page  import="org.jfree.chart.labels.*" %>
<%@ page  import="org.jfree.chart.plot.*" %>
<%@ page  import="org.jfree.chart.renderer.category.*" %>
<%@ page  import="org.jfree.chart.urls.*" %>
<%@ page  import="org.jfree.data.category.*" %>
<%@ page  import="org.jfree.data.general.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <%!String disease = "";
        String count = "";
        int c = 0;
        int j = 0;
        String img;
    %>
    <%
                      
          //in('1960-61','1961-62','1962-63' ,'1963-64','1964-65','1965-66')
        try {

            DefaultCategoryDataset categoryDataset = new DefaultCategoryDataset();
            Connection cn;
            String qry;
            String img1;
            Statement st;
            Class.forName("com.mysql.jdbc.Driver");
            cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/work", "root", "");
            st = cn.createStatement();
            qry = "select * from diseases ";
            ResultSet rs = st.executeQuery(qry);
            while (rs.next() && j < 5) {
                disease = rs.getString("name");
                count = rs.getString("freq");

                c = Integer.parseInt(count);
                // Enrollment in Bachelors level
                categoryDataset.setValue(c, "recentlyviewed", disease);
                j++;
            }

            JFreeChart chart = ChartFactory.createBarChart3D("RECENT SEARCHES", // Title
                    "Disease", // X-Axis label
                    "Views",// Y-Axis label
                    categoryDataset, // Dataset
                    PlotOrientation.VERTICAL,
                    true, // Show legend
                    true,
                    false
            );

            final ChartRenderingInfo info = new ChartRenderingInfo(new StandardEntityCollection());
            final File file1 = new File("C:/Users/User/Documents/NetBeansProjects/svm/web/" + "tam1" + disease + count + ".png");
             img = "tam1" + disease + count + ".png";
            ChartUtilities.saveChartAsPNG(file1, chart, 200, 400, info);
        }
        catch (Exception e)
        {
            out.println(e);
        }
        //my ob=new my();

    %>
   
        
            <div style="border:1px solid; float:left;width:30%;margin-top:5px;margin-left:20px;border-radius:5px;height:310px;">
                
                <%TimeUnit.SECONDS.sleep(5); %>
                
                <img style="margin-top:2px;margin-left:5px;width: 300px;height: 300px;"src=<%=img%> USEMAP="#chart"/>
  

</div>
    
    </body>
</html>

