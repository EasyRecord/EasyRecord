package edu.hit.se;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpSession;
import java.io.*;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.List;
import java.util.Vector;

public class Import extends ActionSupport {


    private File upload;
    private String uploadFileName;
    private String uploadContentType;

    public File getUpload() {
        return upload;
    }

    public void setUpload(File upload) {
        this.upload = upload;
    }

    public String getUploadFileName() {
        return uploadFileName;
    }

    public void setUploadFileName(String uploadFileName) {
        this.uploadFileName = uploadFileName;
    }

    public String getUploadContentType() {
        return uploadContentType;
    }

    public void setUploadContentType(String uploadContentType) {
        this.uploadContentType = uploadContentType;
    }

    public String execute() {

        try {
            String root = ServletActionContext.getServletContext().getRealPath("/upload");

            InputStream is = new FileInputStream(upload);

            OutputStream os = new FileOutputStream(new File(root, uploadFileName));

            System.out.println("fileFileName: " + uploadFileName);

            System.out.println("file: " + upload.getName());
            System.out.println("file: " + upload.getPath());

            byte[] buffer = new byte[5000];
            int length = 0;

            while(-1 != (length = is.read(buffer, 0, buffer.length)))
            {
                os.write(buffer);
            }

            os.close();
            is.close();
        }
        catch (Exception e){
            e.printStackTrace();
        }



        return SUCCESS;
//        String pdoName="";
//        Vector<String> property = new Vector<>();
//        System.out.println("here is ok");
//
//        System.out.println(uploadFileName);
//        System.out.println(upload);
//        System.out.println(uploadContentType);
////        System.out.println(pdoName.toString());
//
//        HttpSession session = null;
//        session = ServletActionContext.getRequest().getSession();
//        String user = (String) session.getAttribute("user");
//
//        DealWithExcelFile poi = new DealWithExcelFile();
//        // List<List<String>> list = poi.read("d:/aaa.xls");
//        List<List<String>> list = poi.read(pdoName+".xlsx");
//        if (list != null) {
//            boolean fisrt = true;
//            for (int i = 1; i < list.size(); i++) {
////                System.out.print("第" + (i) + "行");
//                List<String> cellList = list.get(i);
//                if (i == 1) {
////                    String sql=""
//                    for (int j = 0; j < cellList.size(); j++) {
//                        // System.out.print("    第" + (j + 1) + "列值：");
////                        System.out.print("    " + cellList.get(j));
//                        property.add(cellList.get(j));
//                    }
//                    try {
//
//                        String sql = "CREATE TABLE " + user + "_" + pdoName + " (\r\n`generateTime` Timestamp(3) NOT NULL,\r\n";
//                        for (int j = 0; j < property.size(); j++) {
////                System.out.println("In");
//
//                            sql += "`" + property.elementAt(j) + "` VARCHAR(" + "255" + ") NULL,\r\n";
//
//                        }
//                        sql += "PRIMARY KEY (`generateTime`));";
//                        System.out.println(sql);
//
//                        MysqlConnector mysqlConnector = new MysqlConnector();
//
//
//                        Connection con = mysqlConnector.solution("PDO");
//                        Statement statement = null;
//
//                        statement = con.createStatement();
//                        statement.executeUpdate(sql);
//
//                        sql = "INSERT INTO " + user + "_pdoName (names) VALUES ('" + pdoName + "')";
//                        System.out.println(sql);
//                        statement.executeUpdate(sql);
//
//                        con.close();
//
//                    } catch (Exception e) {
//                        e.printStackTrace();
//                    }
//                } else {
//                    Vector<String> info = new Vector<>();
//                    for (int j = 0; j < cellList.size(); j++) {
//                        // System.out.print("    第" + (j + 1) + "列值：");
//                        System.out.print("    " + cellList.get(j));
//                    }
//                    try {
//
//                        Timestamp now = new Timestamp((new java.util.Date()).getTime());
//                        System.out.println(property);
//                        System.out.println(info);
//                        String sql = "INSERT INTO " + user + "_" + pdoName + " (generateTime";
//                        for (int j = 0; j < property.size(); j++) {
//                            sql += "," + property.elementAt(j) + "";
//                        }
//                        sql += ") VALUES ('" + now + "'";
//                        for (int j = 0; j < info.size(); j++) {
//                            sql += ",'" + info.elementAt(j) + "'";
//                        }
//                        sql += ")";
//                        System.out.println(sql);
//                        MysqlConnector mysqlConnector = new MysqlConnector();
//
//                        Connection con = mysqlConnector.solution("PDO");
//                        Statement statement = null;
//
//                        statement = con.createStatement();
//                        int rs = statement.executeUpdate(sql);
//
//                        con.close();
//                    } catch (Exception e) {
//                        e.printStackTrace();
//                    }
//
//
//                }
//            }
//
//        }
//        return SUCCESS;
    }
}
