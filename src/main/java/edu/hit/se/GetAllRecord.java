package edu.hit.se;

import com.opensymphony.xwork2.ActionSupport;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Vector;

public class GetAllRecord extends ActionSupport {
    String pdoName;
    Vector<String> property;
    Vector<Vector<String>> infos;

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

    public Vector<Vector<String>> getInfos() {
        return infos;
    }

    public void setInfos(Vector<Vector<String>> infos) {
        this.infos = infos;
    }

    public String execute(){
        try {
            String sql="SHOW  columns from "+pdoName;
            MysqlConnector mysqlConnector=new MysqlConnector();

            Connection con=mysqlConnector.solution();

            Statement statement=null;

            statement = con.createStatement();
            ResultSet rs = statement.executeQuery(sql);

            while (rs.next()){
                property.add(rs.getString("Field"));
            }
            sql="select * from "+pdoName;



            statement = con.createStatement();
            rs = statement.executeQuery(sql);
            Vector<String > temp=new Vector<>();
            while (rs.next()){
                temp.clear();
                for (int i=0;i<property.size();i++)
                    temp.add(rs.getString(property.elementAt(i)));
                infos.add(temp);
            }
            rs.close();
            con.close();

        }
        catch (Exception e){
            e.printStackTrace();
        }
        return SUCCESS;
    }
}
