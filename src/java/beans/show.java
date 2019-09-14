

package beans;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class show 
{
    String error;
    List<Object> allData=new ArrayList<Object>();
    public String msg,name;
    Object obj=new Object();
 
    public void setObj(Object obj) 
    {
        this.obj = obj;
    }
    public String getError() {
        return error;
    }
    public List getDb_Data()
    {
        int i=0;
        int j=0;
        try
        {
                String qry;
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/work","root","");
                Statement s = con.createStatement();                
                qry="select cmnt,name from contact";
                ResultSet r=s.executeQuery(qry);
                while(j<5)
                {
                    if(r.next())
                    {
                        DataFields d=new DataFields(r.getString("cmnt"), r.getString("name"));                    
                        allData.add(i,d);
                        i++;
                    } 
                    j++;
                }
                
                 
        }
        catch(Exception ex)
        {
                error="<b>Contact Administrator :</b><br/>" + ex;
                System.out.println("Your query is not working" + ex);
        }
       return allData;
    }
    public String getName()
    {
        this.name=((DataFields)obj).name;
        return this.name;
    }
    public String getCmnt() {
        this.msg=((DataFields)obj).msg;
        return this.msg;
    }
 
      
 
    public class DataFields
    {
        public String name,msg;
 
        public DataFields(String  msg,String  name)
        {
            this.name=name;
            this.msg=msg;
        }
    }
    public static void main(String[] args)
    {
        List<Object> list=new ArrayList<Object>();
        show ob=new show();
         list=ob.getDb_Data();
                                    
    }
}
