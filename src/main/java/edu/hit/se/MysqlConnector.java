package edu.hit.se;

import java.sql.*;
public class MysqlConnector {
    //声明Connection对象
    static Connection con;
    //驱动程序名
    static String driver = "com.mysql.jdbc.Driver";
    //URL指向要访问的数据库名login
    static String url = "jdbc:mysql://123.207.143.243:3306/PDO";
    //MySQL配置时的用户名
    static String user = "root";
    //MySQL配置时的密码
    static String password = "zu1gmysqlmm";
    //    static String password = "bahksysdd";
    //查询statment
    static Statement statement=null;
    public Connection solution()
    {

        //遍历查询结果集
        try
        {
            //加载驱动程序
            Class.forName(driver);
            //1.getConnection()方法，连接MySQL数据库！！
            con = DriverManager.getConnection(url,user,password);
            if(!con.isClosed())
                System.out.println("Succeeded connecting to the Database!");
        }
        catch(ClassNotFoundException e)
        {
            //数据库驱动类异常处理
            System.out.println("Sorry,can`t find the Driver!");
            e.printStackTrace();
        }
        catch(SQLException e)
        {
            //数据库连接失败异常处理
            e.printStackTrace();
        }
        catch (Exception e)
        {
            // TODO: handle exception
            e.printStackTrace();
        }
        finally {
            // System.out.println("数据库数据成功获取！！");
            return con;
        }
    }
}