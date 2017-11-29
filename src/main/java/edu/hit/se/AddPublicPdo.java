package edu.hit.se;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpSession;
import java.sql.Connection;
import java.sql.Statement;

public class AddPublicPdo extends ActionSupport {
    String publicpdoName;

    public String getPublicpdoName() {
        return publicpdoName;
    }

    public void setPublicpdoName(String publicpdoName) {
        this.publicpdoName = publicpdoName;
    }

    public String execute() {
        HttpSession session = null;
        session = ServletActionContext.getRequest().getSession();
        String user = (String) session.getAttribute("user");

//        String user="12345";
        String sql;
        Connection con;
        MysqlConnector mysqlConnector;
        Statement statement;

        try {
            switch (publicpdoName) {
                case "聚餐":
                    sql = "CREATE TABLE `" + user + "_聚餐` (\n" +
                            "  `generateTime` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),\n" +
                            "  `时间` timestamp(3) NULL DEFAULT NULL,\n" +
                            "  `地点` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,\n" +
                            "  `人数` int(11) DEFAULT NULL,\n" +
                            "  `花费` double DEFAULT NULL,\n" +
                            "  PRIMARY KEY (`generateTime`)\n" +
                            ") ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci";

                    System.out.println(sql);
                    mysqlConnector = new MysqlConnector();


                    con = mysqlConnector.solution("PDO");

                    statement = con.createStatement();
                    statement.executeUpdate(sql);

                    sql = "INSERT INTO " + user + "_pdoName (names) VALUES ('" + publicpdoName + "')";
                    System.out.println(sql);
                    statement.executeUpdate(sql);

                    con.close();
                    break;
                case "运动":
                    sql = "CREATE TABLE `" + user + "_运动` (\n" +
                            "  `generateTime` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),\n" +
                            "  `时间` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,\n" +
                            "  `地点` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,\n" +
                            "  `项目` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,\n" +
                            "  PRIMARY KEY (`generateTime`)\n" +
                            ") ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci";

                    System.out.println(sql);
                    mysqlConnector = new MysqlConnector();


                    con = mysqlConnector.solution("PDO");

                    statement = con.createStatement();
                    statement.executeUpdate(sql);

                    sql = "INSERT INTO " + user + "_pdoName (names) VALUES ('" + publicpdoName + "')";
                    System.out.println(sql);
                    statement.executeUpdate(sql);

                    con.close();
                    break;
                default:
                    System.out.println("不存在的！");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }


        return SUCCESS;
    }
}
