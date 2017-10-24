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
            HttpSession session = null;
            session = ServletActionContext.getRequest().getSession();
            String user=(String )session.getAttribute("user");
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
            Vector<String > pdoHeader=new Vector<>();
            for (int i=0;i<pdoNames.size();i++){
                sql="SHOW  columns from "+user+"_"+pdoNames.elementAt(i);
                rs = statement.executeQuery(sql);
                pdoHeader.clear();
                while (rs.next()){
                    pdoHeader.add(rs.getString("Field"));
                }
                properties.add(pdoHeader);
            }
            Vector<String >info=new Vector<>();
            Vector<Vector<String>> infoOfOnePDO=new Vector<>();
            for(int i=0;i<pdoNames.size();i++){
                infoOfOnePDO.clear();
                boolean first=true;
                for (int j=0;j<properties.elementAt(i).size();j++){
                    sql="SELECT * FROM "+user+"_"+pdoNames.elementAt(i)+" where "+properties.elementAt(i).elementAt(j)+"='"+keyWord+"'";
                    rs = statement.executeQuery(sql);
                    while (rs.next()){
                        info.clear();
                        if(first) {
                            pdoNameShot.add(pdoNames.elementAt(i));
                            propertiesShot.add(properties.elementAt(i));
                        }
                        for(int k=0;k<properties.elementAt(i).size();k++){
                            info.add(rs.getString(properties.elementAt(i).elementAt(k)));
                        }
                        if(!infoOfOnePDO.contains(info))
                            infoOfOnePDO.add(info);
                    }
                }
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
