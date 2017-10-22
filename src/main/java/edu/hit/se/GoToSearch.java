package edu.hit.se;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpSession;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Vector;

public class GoToSearch extends ActionSupport {

    Vector<String> pdoNames;

    public Vector<String> getPdoNames() {
        return pdoNames;
    }

    public void setPdoNames(Vector<String> pdoNames) {
        this.pdoNames = pdoNames;
    }

    public String execute(){
        try {
            HttpSession session = null;
            session = ServletActionContext.getRequest().getSession();
            String user=(String )session.getAttribute("user");
            String sql="SELECT * FROM "+user+"_pdoName";
            MysqlConnector mysqlConnector=new MysqlConnector();


            Connection con=mysqlConnector.solution("PDO");
            Statement statement=null;

            statement = con.createStatement();
            ResultSet rs = statement.executeQuery(sql);

            while (rs.next()){
                pdoNames.add(rs.getString("names"));
            }
            rs.close();
            con.close();

        }
        catch (Exception e){
            e.printStackTrace();
        }
        return SUCCESS;
    }
}
