package edu.hit.se;

import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpSession;
import java.sql.Connection;

public class MysqlConnectorTest {
    public static void main(String []args){
        MysqlConnector mysqlConnector=new MysqlConnector();
        HttpSession session = null;
        session = ServletActionContext.getRequest().getSession();
        Connection con=mysqlConnector.solution(session.getAttribute("user").toString());
    }
}
