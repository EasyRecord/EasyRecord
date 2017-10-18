package edu.hit.se;

import com.opensymphony.xwork2.ActionSupport;

import java.sql.Connection;
import java.sql.Statement;
import java.sql.Timestamp;

public class Association extends ActionSupport {

    String key; //当前记录的key A
    String keyDestination; // 目标key B
    String pdoNameDestination;

    public String getPdoNameDestination() {
        return pdoNameDestination;
    }

    public void setPdoNameDestination(String pdoNameDestination) {
        this.pdoNameDestination = pdoNameDestination;
    }

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

    public String execute() {
        try {
//            Timestamp now = new Timestamp((new java.util.Date()).getTime());
//            System.out.println(property);
//            System.out.println(info);

            String sql = "INSERT INTO link (generateTime,source,target,pdoNameTarget) VALUES ('"+ (new Timestamp((new java.util.Date()).getTime())).toString()+ " ','" +key+"','"+keyDestination+"','"+pdoNameDestination+"'";
//            for (int i = 0; i < property.size(); i++) {
//                sql += "," + property.elementAt(i) + "";
//            }
//            sql += ") VALUES ('" + now + "'";
//            for (int i = 0; i < info.size(); i++) {
//                sql += ",'" + info.elementAt(i) + "'";
//            }
//            sql += ")";
            MysqlConnector mysqlConnector = new MysqlConnector();

            Connection con = mysqlConnector.solution();

            Statement statement = null;

            statement = con.createStatement();
            int rs = statement.executeUpdate(sql);

            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return SUCCESS;
    }
}
