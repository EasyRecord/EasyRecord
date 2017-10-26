package edu.hit.se;

import com.opensymphony.xwork2.ActionSupport;
import com.sun.xml.internal.ws.api.ha.StickyFeature;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpSession;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Set;
import java.util.Vector;

public class SearchAll extends ActionSupport {
    String keyWord;

    Vector<String > pdoNames=new Vector<>();

    Vector<Vector<String>> properties=new Vector<>();

//    Vector<Vector<String>> infos=new Vector<>();

    Vector<String > pdoNameShot=new Vector<>();
    Vector<Vector<String>> propertiesShot=new Vector<>();
    Vector<Vector<Vector<String >>> infoShot=new Vector<>();

    public Vector<String> getPdoNameShot() {
        return pdoNameShot;
    }

    public void setPdoNameShot(Vector<String> pdoNameShot) {
        this.pdoNameShot = pdoNameShot;
    }

    public Vector<Vector<String>> getPropertiesShot() {
        return propertiesShot;
    }

    public void setPropertiesShot(Vector<Vector<String>> propertiesShot) {
        this.propertiesShot = propertiesShot;
    }

    public Vector<Vector<Vector<String>>> getInfoShot() {
        return infoShot;
    }

    public void setInfoShot(Vector<Vector<Vector<String>>> infoShot) {
        this.infoShot = infoShot;
    }

    public String getKeyWord() {
        return keyWord;
    }

    public void setKeyWord(String keyWord) {
        this.keyWord = keyWord;
    }

    public String execute(){
        try {
//            HttpSession session = null;
//            session = ServletActionContext.getRequest().getSession();
//            String user=(String )session.getAttribute("user");

            String user= "admin";
            String sql="select * from "+user+"_pdoName";

            MysqlConnector mysqlConnector=new MysqlConnector();

            Connection con=mysqlConnector.solution("PDO");
            Statement statement=null;

            statement = con.createStatement();
            ResultSet rs = statement.executeQuery(sql);
//            Vector<String > temp=new Vector<>();
//            property.insertElementAt("generateTime",0);
            while (rs.next()){
                pdoNames.add(rs.getString("names"));
            }
            System.out.println(pdoNames);
            Vector<String > pdoHeader;
            for (int i=0;i<pdoNames.size();i++){
                pdoHeader=new Vector<>();
                sql="SHOW  columns from "+user+"_"+pdoNames.elementAt(i);
                rs = statement.executeQuery(sql);
                pdoHeader.clear();
                while (rs.next()){
                    pdoHeader.add(rs.getString("Field"));
                }
                properties.add(pdoHeader);
            }
            System.out.println(properties);
            Vector<String >info;
            Vector<Vector<String>> infoOfOnePDO;
            for(int i=0;i<pdoNames.size();i++){
                infoOfOnePDO=new Vector<>();
                boolean first=true;
                for (int j=0;j<properties.elementAt(i).size();j++){
                    sql="SELECT * FROM "+user+"_"+pdoNames.elementAt(i)+" where "+properties.elementAt(i).elementAt(j)+" LIKE binary '%"+keyWord+"%'";
                    System.out.println(sql);
                    rs = statement.executeQuery(sql);
                    while (rs.next()){
                        info=new Vector<>();
                        if(first) {
                            pdoNameShot.add(pdoNames.elementAt(i));
                            propertiesShot.add(properties.elementAt(i));
                            first=false;
                        }
                        for(int k=0;k<properties.elementAt(i).size();k++){
                            info.add(rs.getString(properties.elementAt(i).elementAt(k)));
                        }
                        if(info.size()>=1)
                            infoOfOnePDO.add(info);
                    }
                }
                if(infoOfOnePDO.size()>=1)
                    infoShot.add(infoOfOnePDO);
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
