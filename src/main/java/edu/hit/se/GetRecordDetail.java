package edu.hit.se;

import com.opensymphony.xwork2.ActionSupport;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Vector;

public class GetRecordDetail extends ActionSupport{

    String key;

    String pdoName; //当前记录所属PDO的名称
    Vector<String> property; //
    Vector<String> info;

    Vector<String> relatedPdoNames;
    Vector<Vector<String>> relatedRecordProperties;
    Vector<Vector<String>> relatedRecordInfos;

    public String getKey() {
        return key;
    }

    public void setKey(String key) {
        this.key = key;
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

    public Vector<String> getInfo() {
        return info;
    }

    public void setInfo(Vector<String> info) {
        this.info = info;
    }

    public Vector<String> getRelatedPdoNames() {
        return relatedPdoNames;
    }

    public void setRelatedPdoNames(Vector<String> relatedPdoNames) {
        this.relatedPdoNames = relatedPdoNames;
    }

    public Vector<Vector<String>> getRelatedRecordProperties() {
        return relatedRecordProperties;
    }

    public void setRelatedRecordProperties(Vector<Vector<String>> relatedRecordProperties) {
        this.relatedRecordProperties = relatedRecordProperties;
    }

    public Vector<Vector<String>> getRelatedRecordInfos() {
        return relatedRecordInfos;
    }

    public void setRelatedRecordInfos(Vector<Vector<String>> relatedRecordInfos) {
        this.relatedRecordInfos = relatedRecordInfos;
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
            sql="SELECT * from "+pdoName+" WHERE generateTime='"+key+"'";

//            rs.close();
//            statement = con.createStatement();
            rs = statement.executeQuery(sql);

            while (rs.next()){
               for (int i=0;i<property.size();i++)
                   info.add(rs.getString(property.elementAt(i)));
            }
            sql="select * from link WHERE source='"+key+"'";
            rs = statement.executeQuery(sql);
            Vector<String > targetPk=new Vector<>();
//            Vector<String > pdoNameDestination=new Vector<>();

            while (rs.next()) {
                targetPk.add(rs.getString("target"));
                relatedPdoNames.add(rs.getString("pdoNameTarget"));
            }

            Vector<String > tempProperty=new Vector<>();
            Vector<String > tempInfo=new Vector<>();
            for(int i=0;i<relatedPdoNames.size();i++){
                tempProperty.clear();
                tempInfo.clear();
                sql="SHOW  columns from "+relatedPdoNames.elementAt(i);
                rs = statement.executeQuery(sql);

                while (rs.next()){
                    tempProperty.add(rs.getString("Field"));
                }
                relatedRecordProperties.add(tempProperty);
                sql="SELECT * FROM "+relatedPdoNames.elementAt(i)+" WHERE generateTime='"+targetPk.elementAt(i)+"'";
                rs = statement.executeQuery(sql);
                if(rs.next()){
                   for(int j=0;j<tempProperty.size();j++){
                       tempInfo.add(rs.getString(tempProperty.elementAt(j)));
                   }
                }
                relatedRecordInfos.add(tempInfo);
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
