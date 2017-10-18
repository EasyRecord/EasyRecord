package edu.hit.se;

import com.opensymphony.xwork2.ActionSupport;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Vector;

public class SearchRecord extends ActionSupport{
    String pdoName;
    Vector<String> property=new Vector<>();
    Vector<String> filter=new Vector<>();
    Vector<Vector<String>> recordInfos; //多条记录信息

    public Vector<Vector<String>> getRecordInfos() {
        return recordInfos;
    }

    public void setRecordInfos(Vector<Vector<String>> recordInfos) {
        this.recordInfos = recordInfos;
    }

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

    public Vector<String> getFilter() {
        return filter;
    }

    public void setFilter(Vector<String> filter) {
        this.filter = filter;
    }

    public String execute(){
        try {
            String sql="select * from "+pdoName+"where ";
            sql+=property.elementAt(0)+"='"+filter.elementAt(0)+"' ";
            for (int i=1;i<property.size();i++){
                sql+="AND "+property.elementAt(i)+"='"+filter.elementAt(i)+"'";
            }

            MysqlConnector mysqlConnector=new MysqlConnector();

            Connection con=mysqlConnector.solution();

            Statement statement=null;

            statement = con.createStatement();
            ResultSet rs = statement.executeQuery(sql);
            Vector<String > temp=new Vector<>();
            property.insertElementAt("generateTime",0);
            while (rs.next()){
                temp.clear();
                for (int i=0;i<property.size();i++)
                    temp.add(rs.getString(property.elementAt(i)));
                recordInfos.add(temp);
            }
//            System.out.println(pdoHeader);
            rs.close();
            con.close();

        }
        catch (Exception e){
            e.printStackTrace();
        }
        return SUCCESS;
    }
}
