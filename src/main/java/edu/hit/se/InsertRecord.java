package edu.hit.se;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpSession;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.Vector;

public class InsertRecord extends ActionSupport{
    String pdoName;
    Vector<String> property = new Vector<String >();
    Vector<String> info = new Vector<String >();

    public String getPdoName() {
        return pdoName;
    }

    public void setPdoName(String pdoName) {
        this.pdoName = pdoName;
    }

    public Vector<String> getProperty() {
        return property;
    }

    public void setProperty(Vector<String> property) {
        this.property = property;
    }

    public Vector<String> getInfo() {
        return info;
    }

    public void setInfo(Vector<String> info) {
        this.info = info;
    }

    public String execute(){

        try {
            HttpSession session = null;
            session = ServletActionContext.getRequest().getSession();
            String user=(String )session.getAttribute("user");
            Timestamp now=new Timestamp((new java.util.Date()).getTime());
            System.out.println(property);
            System.out.println(info);
            String sql="INSERT INTO "+user+"."+pdoName+" (generateTime";
            for (int i=0;i<property.size();i++){
                sql+=","+property.elementAt(i)+"";
            }
            sql+=") VALUES ('"+now+"'";
            for (int i=0;i<info.size();i++){
                sql+=",'"+info.elementAt(i)+"'";
            }
            sql+=")";
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
