package edu.hit.se;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpSession;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Vector;

public class ReadyToUpdateRecord extends ActionSupport {
    String pdoName;
    String key;
    Vector<String> property = new Vector<>();
    Vector<String> info = new Vector<>();
    Vector<String > type=new Vector<>();

    public Vector<String> getType() {
        return type;
    }

    public void setType(Vector<String> type) {
        this.type = type;
    }

    public String getKey() {
        return key;
    }

    public void setKey(String key) {
        this.key = key;
    }

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

    public String execute() {
        try {
            HttpSession session = null;
            session = ServletActionContext.getRequest().getSession();
            String user = (String) session.getAttribute("user");
            String sql = "SHOW  columns from " + user + "_" + pdoName;
            MysqlConnector mysqlConnector = new MysqlConnector();


            Connection con = mysqlConnector.solution("PDO");
            Statement statement = null;

            statement = con.createStatement();
            ResultSet rs = statement.executeQuery(sql);

            while (rs.next()) {
                property.add(rs.getString("Field"));
            }
            sql = "select * from " + user + "_" + pdoName + " where generateTime='" + key + "'";

            System.out.println(sql);


            statement = con.createStatement();
            rs = statement.executeQuery(sql);
            if (rs.next())
                for (int i = 0; i < property.size(); i++)
                    info.add(rs.getString(property.elementAt(i)));

            sql="show columns from PDO."+user + "_" + pdoName;
            rs=statement.executeQuery(sql);
            while (rs.next()){
                type.add(rs.getString("Type"));

            }
            for (int i=0;i<type.size();i++){
                if(type.elementAt(i).contains("timestamp"))
                    type.set(i,"time");
                else if (type.elementAt(i).contains("varchar"))
                type.set(i,"string");
                else if(type.elementAt(i).contains("nt"))
                    type.set(i,"int");
                else if(type.elementAt(i).contains("ouble"))
                    type.set(i,"double");

            }
            System.out.println(type);
//            System.out.println(pdoHeader);
            rs.close();
            con.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
        return SUCCESS;
    }
}
