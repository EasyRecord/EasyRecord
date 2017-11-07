package edu.hit.se;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpSession;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Vector;

public class GetAllUserNames extends ActionSupport {

    Vector<String > usernames=new Vector<>();

    public Vector<String> getUsernames() {
        return usernames;
    }

    public void setUsernames(Vector<String> usernames) {
        this.usernames = usernames;
    }

    public String execute(){
        try {

            String sql="select * from users.userInfo";

            MysqlConnector mysqlConnector=new MysqlConnector();

            Connection con=mysqlConnector.solution("PDO");
            Statement statement=null;

            statement = con.createStatement();
            ResultSet rs = statement.executeQuery(sql);
//            Vector<String > temp=new Vector<>();
//            property.insertElementAt("generateTime",0);
            while (rs.next()){
                usernames.add(rs.getString("username"));
            }

            rs.close();
            con.close();

        }
        catch (Exception e){
            e.printStackTrace();
        }
        return  SUCCESS;
    }
}
