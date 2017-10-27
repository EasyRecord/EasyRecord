package edu.hit.se;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpSession;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Vector;

public class GetAllPdoNames extends ActionSupport {
    Vector<String> pdoNames = new Vector<>();

    public Vector<String> getPdoNames() {
        return pdoNames;
    }

    public void setPdoNames(Vector<String> pdoNames) {
        this.pdoNames = pdoNames;
    }

    public String execute() {
        try {

            HttpSession session = null;
            session = ServletActionContext.getRequest().getSession();

            String user = (String) session.getAttribute("user");
            System.out.println(user);
//            if(user==null || user.equals("null")||user.length()<=0 || user.equals("NULL")) return SUCCESS;
            String sql = "select * from " + user + "_pdoName";

            MysqlConnector mysqlConnector = new MysqlConnector();


            Connection con = mysqlConnector.solution("PDO");
            Statement statement = null;

            statement = con.createStatement();
            System.out.println(sql);

            ResultSet rs = statement.executeQuery(sql);
            Vector<String> temp = new Vector<>();

            while (rs.next()) {
                pdoNames.add(rs.getString("names"));
            }
//            System.out.println(pdoHeader);
            rs.close();
            con.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
        return SUCCESS;
    }
}
