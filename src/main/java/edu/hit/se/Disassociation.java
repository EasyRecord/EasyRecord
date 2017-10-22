package edu.hit.se;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpSession;
import java.sql.Connection;
import java.sql.Statement;
import java.util.Set;

public class Disassociation extends ActionSupport {
    String key; //A的主键
    String keyDestination;//B的主键

    public String getKey() {
        return key;
    }

    public void setKey(String key) {
        this.key = key;
    }

    public String getKeyDestination() {
        return keyDestination;
    }

    public void setKeyDestination(String keyDestination) {
        this.keyDestination = keyDestination;
    }

    public String execute(){

        try {
            HttpSession session = null;
            session = ServletActionContext.getRequest().getSession();
            String user=(String )session.getAttribute("user");
            String sql="DELETE FROM "+user+".link WHERE source='"+key+" ' AND target='"+keyDestination+"'";

            System.out.println(sql);
            MysqlConnector mysqlConnector=new MysqlConnector();


            Connection con=mysqlConnector.solution("PDO");
            Statement statement=null;

            statement = con.createStatement();
            int rs = statement.executeUpdate(sql);

            con.close();
        }
        catch (Exception e){
            e.printStackTrace();
        }

        return SUCCESS;
    }
}
