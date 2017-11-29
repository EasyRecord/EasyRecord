package edu.hit.se;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpSession;
import java.sql.Connection;
import java.sql.Statement;

public class DeleteRecord extends ActionSupport{
    String pdoName;
    String key;

    public String getPdoName() {
        return pdoName;
    }

    public void setPdoName(String pdoName) {
        this.pdoName = pdoName;
    }

    public String getKey() {
        return key;
    }

    public void setKey(String key) {
        this.key = key;
    }

    public String execute(){
        try {
            HttpSession session = null;
            session = ServletActionContext.getRequest().getSession();
            String user=(String )session.getAttribute("user");
            String sql="DELETE FROM "+user+"_"+pdoName+" WHERE generateTime='"+key+"'";

            System.out.println(sql);
            MysqlConnector mysqlConnector=new MysqlConnector();


            Connection con=mysqlConnector.solution("PDO");
            Statement statement=null;

            statement = con.createStatement();
            int rs = statement.executeUpdate(sql);
            sql="DELETE FROM "+user+"_link"+" WHERE source='"+key+"'";
            rs = statement.executeUpdate(sql);
            sql="DELETE FROM "+user+"_link"+" WHERE target='"+key+"'";
            rs = statement.executeUpdate(sql);
            con.close();
        }
        catch (Exception e){
            e.printStackTrace();
        }

        return SUCCESS;
    }
}
