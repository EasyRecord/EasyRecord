package edu.hit.se;

import com.opensymphony.xwork2.ActionSupport;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Vector;

public class GetAllPdoName extends ActionSupport {
    Vector<String> pdoNames=new Vector<>();

    public Vector<String> getPdoNames() {
        return pdoNames;
    }

    public void setPdoNames(Vector<String> pdoNames) {
        this.pdoNames = pdoNames;
    }
    public  String execute(){
        try {
        String sql="select * from pdoName";

        MysqlConnector mysqlConnector=new MysqlConnector();

        Connection con=mysqlConnector.solution();

        Statement statement=null;

        statement = con.createStatement();
        ResultSet rs = statement.executeQuery(sql);
        Vector<String > temp=new Vector<>();

        while (rs.next()){
            pdoNames.add(rs.getString("names"));
        }
//            System.out.println(pdoHeader);
        rs.close();
        con.close();

    }
        catch (Exception e){
        e.printStackTrace();
    }
        return SUCCESS;
    }
}
