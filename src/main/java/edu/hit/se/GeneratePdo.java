package edu.hit.se;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;

//import java.io.File;
//import java.io.FileWriter;
//import java.io.PrintWriter;
import javax.servlet.http.HttpSession;
import java.sql.Connection;
//import java.sql.ResultSet;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Vector;

//import static freemarker.template.utility.StringUtil.capitalize;

public class GeneratePdo extends ActionSupport{
    Vector<String > property=new Vector<String >();
    Vector<String > elementType= new Vector<String>();
    Vector<Integer> size=new Vector<Integer>();


    String pdoName="";

    public String getPdoName() {
        return pdoName;
    }

    public void setPdoName(String pdoName) {
        this.pdoName = pdoName;
    }

    public Vector<String> getProperty() {
        return property;
    }

    public void setProperty(Vector<String> property) {
        this.property = property;
    }

    public Vector<String> getElementType() {
        return elementType;
    }

    public void setElementType(Vector<String> elementType) {
        this.elementType = elementType;
    }

    public Vector<Integer> getSize() {
        return size;
    }

    public void setSize(Vector<Integer> size) {
        this.size = size;
    }

    public String execute(){

        try {
            System.out.println(pdoName.toString());
            System.out.println(property.toString());
            System.out.println(elementType.toString());
            HttpSession session = null;
            session = ServletActionContext.getRequest().getSession();
            String user=(String )session.getAttribute("user");
            String sql="CREATE TABLE "+user+"_"+pdoName+" (\r\n`generateTime` Timestamp(3) NOT NULL,\r\n";
            for (int i=0;i<property.size();i++){
//                System.out.println("In");
                if(elementType.elementAt(i).equals("int")){
                    sql+="`"+property.elementAt(i)+"` INT NULL,\r\n";

                }
                else if(elementType.elementAt(i).equals("double")){
                    sql+="`"+property.elementAt(i)+"` DOUBLE NULL,\r\n";

                }
                else if(elementType.elementAt(i).equals("Timestamp")){
                    sql+="`"+property.elementAt(i)+"` Timestamp(3) NULL,\r\n";

                }
                else if(elementType.elementAt(i).equals("String")){
                    if(size.elementAt(i)!=null)
                        sql+="`"+property.elementAt(i)+"` VARCHAR("+size.elementAt(i)+") NULL,\r\n";
                    else sql+="`"+property.elementAt(i)+"` VARCHAR(255"+") NULL,\r\n";
                }
            }
            sql+="PRIMARY KEY (`generateTime`));";
            System.out.println(sql);

            MysqlConnector mysqlConnector=new MysqlConnector();


            Connection con=mysqlConnector.solution("PDO");
            Statement statement=null;

            statement = con.createStatement();
            statement.executeUpdate(sql);

            sql="INSERT INTO "+user+"_pdoName (names) VALUES ('"+pdoName+"')";
            System.out.println(sql);
            statement.executeUpdate(sql);




            con.close();


        }
        catch (Exception e){
            e.printStackTrace();
        }

        return SUCCESS;
    }
}
