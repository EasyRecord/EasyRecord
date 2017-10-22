package edu.hit.se;

import com.opensymphony.xwork2.ActionSupport;

import java.sql.Connection;
import java.sql.Statement;

public class Register extends ActionSupport {

    String username;
    String passwd;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPasswd() {
        return passwd;
    }

    public void setPasswd(String passwd) {
        this.passwd = passwd;
    }

    public String execute(){
        try {
            String sql="INSERT into users.userInfo (username, passwd) VALUES ('"+username+"','"+passwd+"')";

            MysqlConnector mysqlConnector=new MysqlConnector();

            Connection con=mysqlConnector.solution("users");

            Statement statement=null;

            statement = con.createStatement();
            System.out.println(sql);
            int rs = statement.executeUpdate(sql);
//            sql="CREATE DATABASE "+username;
//            System.out.println(sql);
//            statement.execute(sql);
            sql="CREATE TABLE `"+username+".pdoName` (\n" +
                    "  `names` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,\n" +
                    "  PRIMARY KEY (`names`)\n" +
                    ") ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci";
            con=mysqlConnector.solution("PDO");

            statement = con.createStatement();
            statement.execute(sql);
            sql="CREATE TABLE `"+username+".link` (\n" +
                    "  `generateTime` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),\n" +
                    "  `source` timestamp(3) NULL DEFAULT NULL,\n" +
                    "  `target` timestamp(3) NULL DEFAULT NULL,\n" +
                    "  `pdoNameTarget` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,\n" +
                    "  PRIMARY KEY (`generateTime`)\n" +
                    ") ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci";
            con=mysqlConnector.solution("PDO");

            statement = con.createStatement();
            statement.execute(sql);
//            statement.execute(sql);
            con.close();

        }
        catch (Exception e){
            e.printStackTrace();
        }
        return SUCCESS;
    }
}
