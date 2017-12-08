package edu.hit.se;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpSession;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.Vector;

public class UpdateRecord extends ActionSupport {
    String pdoName;
    Vector<String> property=new Vector<>();
    Vector<String> inofo=new Vector<>();

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

    public Vector<String> getInofo() {
        return inofo;
    }

    public void setInofo(Vector<String> inofo) {
        this.inofo = inofo;
    }



    public String execute(){
        try {
            HttpSession session = null;
            session = ServletActionContext.getRequest().getSession();
            String user=(String )session.getAttribute("user");
            String sql="UPDATE "+user+"_"+pdoName+" SET "+property.elementAt(1)+" ='"+inofo.elementAt(1)+"'";
            for (int i=2;i<property.size();i++){
                sql+=", "+property.elementAt(i)+" ='"+inofo.elementAt(i)+"'";
            }
            sql+=" WHERE generateTime='"+inofo.elementAt(0)+"'";
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