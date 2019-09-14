/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package beans;

import java.sql.*;

/**
 *
 * @author elijah
 */
public class contactdet {
    
    private String username;
    private String useremail;
    private String userphone;
    private String usermsg;
    private Connection cn=null;
    private ResultSet rs = null;
    private Statement st = null;
    String connectionURL = "jdbc:mysql://localhost:3306/work";
    
    public contactdet()
    {
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            cn=DriverManager.getConnection(connectionURL,"root","");
        }
        catch(Exception ex)
        {
            System.out.println("Exception is : " + ex);
        }
    }
    
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }
    
    public String getUseremail() {
        return useremail;
    }

    public void setUseremail(String useremail) {
        this.useremail = useremail;
    }
    
    public String getUserphone() {
        return userphone;
    }

    public void setUserphone(String userphone) {
        this.userphone = userphone;
    }
    
    public String getUsermsg() {
        return usermsg;
    }

    public void setUsermsg(String usermsg) {
        this.usermsg = usermsg;
    }
    
    public void insert()
    {
        try
        {
            String qry="insert into contact(name,mail,mobile,cmnt) values('"+username+"','"+useremail+"','"+userphone+"','"+usermsg+"')";
            st=cn.createStatement();
            st.executeUpdate(qry);
            st.close();
        }
        catch(Exception ex)
        {
            System.out.println("Error : " + ex);
        }
    }
}

