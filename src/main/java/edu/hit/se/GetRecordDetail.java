package edu.hit.se;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpSession;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Vector;

public class GetRecordDetail extends ActionSupport{

    String key;

    String pdoName; //当前记录所属PDO的名称
    Vector<String> property=new Vector<>(); //
    Vector<String> info=new Vector<>();

    Vector<String> relatedPdoNames=new Vector<>();
    Vector<Vector<String>> relatedRecordProperties=new Vector<>();
    Vector<Vector<Vector<String>>> relatedRecordInfos =new Vector();

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

    public Vector<Vector<Vector<String>>> getRelatedRecordInfos() {
        return relatedRecordInfos;
    }

    public void setRelatedRecordInfos(Vector<Vector<Vector<String>>> relatedRecordInfos) {
        this.relatedRecordInfos = relatedRecordInfos;
    }

    public String execute(){
        try {
            System.out.println(pdoName);
            System.out.println(key);
            HttpSession session = null;
            session = ServletActionContext.getRequest().getSession();
            String user=(String )session.getAttribute("user");
//            String user="admin";
            String sql="SHOW  columns from "+user+"_"+pdoName;
            System.out.println(sql);
            MysqlConnector mysqlConnector=new MysqlConnector();


            Connection con=mysqlConnector.solution("PDO");
            Statement statement=null;

            statement = con.createStatement();
            ResultSet rs = statement.executeQuery(sql);

            while (rs.next()){
                property.add(rs.getString("Field"));
            }
            sql="SELECT * from "+user+"_"+pdoName+" WHERE generateTime='"+key+"'";

//            rs.close();
//            statement = con.createStatement();
            System.out.println(sql);
            rs = statement.executeQuery(sql);

            if (rs.next()){
               for (int i=0;i<property.size();i++)
                   info.add(rs.getString(property.elementAt(i)));
            }
            sql="select * from "+user+"_link WHERE source='"+key+"'";
            System.out.println(sql);
            rs = statement.executeQuery(sql);
            Vector<String > targetPk=new Vector<>();
//            Vector<String > pdoNameDestination=new Vector<>();
            Vector<String > relatedPdoNamesTemp=new Vector<>();
            while (rs.next()) {
                targetPk.add(rs.getString("target"));
                relatedPdoNamesTemp.add(rs.getString("pdoNameTarget"));
            }

            Vector<String > tempProperty=new Vector<>();
            Vector<String > tempInfo=new Vector<>();
            for(int i=0;i<relatedPdoNamesTemp.size();i++){
                if(!relatedPdoNames.contains(relatedPdoNamesTemp.elementAt(i))){
                    relatedPdoNames.add(relatedPdoNamesTemp.elementAt(i));
                    tempProperty=new Vector<>();

                    sql="SHOW  columns from "+user+"_"+relatedPdoNames.elementAt(i);
                    System.out.println(sql);
                    rs = statement.executeQuery(sql);

                    while (rs.next()){
                        tempProperty.add(rs.getString("Field"));
                    }
                    relatedRecordProperties.add(tempProperty);
                    relatedRecordInfos.add(new Vector<>());

                }

                tempInfo=new Vector<>();
                sql="SELECT * FROM "+user+"_"+relatedPdoNamesTemp.elementAt(i)+" WHERE generateTime='"+targetPk.elementAt(i)+"'";
                System.out.println(sql);
                rs = statement.executeQuery(sql);
                if(rs.next()){
                    for(int j=0;j<tempProperty.size();j++){
                        tempInfo.add(rs.getString(tempProperty.elementAt(j)));
                    }
                }
                relatedRecordInfos.elementAt(relatedPdoNames.indexOf(relatedPdoNamesTemp.elementAt(i))).add(tempInfo);
            }
            System.out.println(relatedPdoNames);
            System.out.println(relatedRecordProperties);
            System.out.println(relatedRecordInfos);

            rs.close();
            con.close();

        }
        catch (Exception e){
            e.printStackTrace();
        }
        return SUCCESS;
    }
}
