package edu.hit.se;

import com.opensymphony.xwork2.ActionSupport;
//import com.sun.xml.internal.ws.api.ha.StickyFeature;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Vector;

public class GetPdoHeader extends ActionSupport{
    String pdoName;

    Vector<String > pdoHeader=new Vector<String>();

//    String pdo;
//
//    public String getPdo() {
//        return pdo;
//    }
//
//    public void setPdo(String pdo) {
//        this.pdo = pdo;
//    }

    public Vector<String> getPdoHeader() {
        return pdoHeader;
    }

    public void setPdoHeader(Vector<String> pdoHeader) {
        this.pdoHeader = pdoHeader;
    }

    public String getPdoName() {
        return pdoName;
    }

    public void setPdoName(String pdoName) {
        this.pdoName = pdoName;
    }

    public String execute(){
        System.out.println(pdoName);
        try {
            String sql="SHOW  columns from "+pdoName;
            MysqlConnector mysqlConnector=new MysqlConnector();

            Connection con=mysqlConnector.solution();

            Statement statement=null;

            statement = con.createStatement();
            ResultSet rs = statement.executeQuery(sql);

            while (rs.next()){
                pdoHeader.add(rs.getString("Field"));
            }
            System.out.println(pdoHeader);
            rs.close();
            con.close();

        }
        catch (Exception e){
            e.printStackTrace();
        }
        return SUCCESS;
    }
}
