package edu.hit.se;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpSession;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class Login extends ActionSupport {
    String username,passwd;


    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPasswd() {
        return passwd;
    }

    public void setPasswd(String passwd) {
        this.passwd = passwd;
    }

    public String execute(){
        HttpSession session = null;
        session = ServletActionContext.getRequest().getSession();
        try {
            String sql="select * from userInfo WHERE username='"+username+"' AND passwd='"+passwd+"'";

            MysqlConnector mysqlConnector=new MysqlConnector();

            Connection con=mysqlConnector.solution("users");

            Statement statement=null;

            statement = con.createStatement();
            System.out.println(sql);
            ResultSet rs = statement.executeQuery(sql);
            if(rs.next()){
                session.setAttribute("user",username);
            }
            else
                session.removeAttribute("user");

            rs.close();
            con.close();

        }
        catch (Exception e){
            e.printStackTrace();
        }

        return SUCCESS;
    }
}
