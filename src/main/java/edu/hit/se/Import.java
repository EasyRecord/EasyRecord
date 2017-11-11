package edu.hit.se;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpSession;
import java.io.*;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.List;
import java.util.Vector;

public class Import extends ActionSupport {


    private File uploadImage; //得到上传的文件
    private String uploadImageContentType; //得到文件的类型
    private String uploadImageFileName; //得到文件的名称

    public File getUploadImage() {
        return uploadImage;
    }

    public void setUploadImage(File uploadImage) {
        this.uploadImage = uploadImage;
    }

    public String getUploadImageContentType() {
        return uploadImageContentType;
    }

    public void setUploadImageContentType(String uploadImageContentType) {
        this.uploadImageContentType = uploadImageContentType;
    }

    public String getUploadImageFileName() {
        return uploadImageFileName;
    }

    public void setUploadImageFileName(String uploadImageFileName) {
        this.uploadImageFileName = uploadImageFileName;
    }

    public String execute() {

        System.out.println("fileName:"+this.getUploadImageFileName());
        System.out.println("contentType:"+this.getUploadImageContentType());
        System.out.println("File:"+this.getUploadImage());

        //获取要保存文件夹的物理路径(绝对路径)
//        String realPath=ServletActionContext.getServletContext().getRealPath("E:\\upload");
        String realPath="E:\\upload";
        System.out.println(realPath);
        File file = new File(realPath);

        //测试此抽象路径名表示的文件或目录是否存在。若不存在，创建此抽象路径名指定的目录，包括所有必需但不存在的父目录。
        if(!file.exists())file.mkdirs();

        try {
            //保存文件
            FileUtils.copyFile(uploadImage, new File(file,uploadImageFileName));

        } catch (IOException e) {
            e.printStackTrace();
        }
//        return SUCCESS;
        String pdoName=getUploadImageFileName().split("\\.")[0];

        Vector<String > property=new Vector<>();
        HttpSession session = null;
        session = ServletActionContext.getRequest().getSession();
        String user = (String) session.getAttribute("user");

        DealWithExcelFile poi = new DealWithExcelFile();
        // List<List<String>> list = poi.read("d:/aaa.xls");
        List<List<String>> list = poi.read("E:\\upload\\"+(getUploadImageFileName()));
        System.out.println("E:\\upload\\"+(getUploadImageFileName()));
        if (list != null) {
            boolean fisrt = true;
            for (int i = 1; i < list.size(); i++) {
//                System.out.print("第" + (i) + "行");
                List<String> cellList = list.get(i);
                if (i == 1) {
//                    String sql=""
                    for (int j = 0; j < cellList.size(); j++) {
                        // System.out.print("    第" + (j + 1) + "列值：");
//                        System.out.print("    " + cellList.get(j));
                        property.add(cellList.get(j));
                    }
                    try {

                        String sql = "CREATE TABLE " + user + "_" + pdoName + " (\r\n`generateTime` Timestamp(3) NOT NULL,\r\n";
                        for (int j = 0; j < property.size(); j++) {
//                System.out.println("In");

                            sql += "`" + property.elementAt(j) + "` VARCHAR(" + "255" + ") NULL,\r\n";

                        }
                        sql += "PRIMARY KEY (`generateTime`));";
                        System.out.println(sql);

                        MysqlConnector mysqlConnector = new MysqlConnector();


                        Connection con = mysqlConnector.solution("PDO");
                        Statement statement = null;

                        statement = con.createStatement();
                        statement.executeUpdate(sql);

                        sql = "INSERT INTO " + user + "_pdoName (names) VALUES ('" + pdoName + "')";
                        System.out.println(sql);
                        statement.executeUpdate(sql);

                        con.close();

                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                } else {
                    Vector<String> info = new Vector<>();
                    for (int j = 0; j < cellList.size(); j++) {
                        // System.out.print("    第" + (j + 1) + "列值：");
                        info.add(cellList.get(j));
//                        System.out.print("    " + cellList.get(j));
                    }
                    try {

                        Timestamp now = new Timestamp((new java.util.Date()).getTime());
//                        System.out.println(property);
//                        System.out.println(info);
                        String sql = "INSERT INTO " + user + "_" + pdoName + " (generateTime";
                        for (int j = 0; j < property.size(); j++) {
                            sql += "," + property.elementAt(j) + "";
                        }
                        sql += ") VALUES ('" + now + "'";
                        for (int j = 0; j < info.size(); j++) {
                            sql += ",'" + info.elementAt(j) + "'";
                        }
                        sql += ")";
                        System.out.println(sql);
                        MysqlConnector mysqlConnector = new MysqlConnector();

                        Connection con = mysqlConnector.solution("PDO");
                        Statement statement = null;

                        statement = con.createStatement();
                        int rs = statement.executeUpdate(sql);

                        con.close();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }


                }
            }

        }
        return SUCCESS;
    }
}
