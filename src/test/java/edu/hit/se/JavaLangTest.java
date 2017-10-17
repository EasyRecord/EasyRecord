package edu.hit.se;

import java.util.Date;
import java.text.SimpleDateFormat;

public class JavaLangTest {
    public static void main(String []args){
        SimpleDateFormat df = new SimpleDateFormat("yyyy/MM/dd-HH:mm:ss:SSS");//设置日期格式
        System.out.println(df.format(new Date()));// new Date()为获取当前系统时间
        java.sql.Timestamp now=new java.sql.Timestamp((new Date().getTime()));
        System.out.println(now);
        now=new java.sql.Timestamp((new Date().getTime()));
        System.out.println(now);
        now=new java.sql.Timestamp((new Date().getTime()));
        System.out.println(now);
        now=new java.sql.Timestamp((new Date().getTime()));
        System.out.println(now);
    }
}
