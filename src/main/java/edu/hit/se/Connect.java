package edu.hit.se;

import com.opensymphony.xwork2.ActionSupport;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Vector;

public class Connect extends ActionSupport{
    String pdoName;
    String key;
    Vector<String> pdoNames=new Vector<>();

    public Vector<String> getPdoNames() {
        return pdoNames;
    }

    public void setPdoNames(Vector<String> pdoNames) {
        this.pdoNames = pdoNames;
    }

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
            String sql="SELECT * FROM PDO";
            MysqlConnector mysqlConnector=new MysqlConnector();

            Connection con=mysqlConnector.solution();

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
