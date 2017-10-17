package edu.hit.se;

import java.sql.Timestamp;
import java.util.Date;
import java.util.Vector;

public class InsertRecordTest {
    public static void main(String []args){
        InsertRecord insertRecord=new InsertRecord();
        insertRecord.setPdoName("Eat");
        Vector<String > property=new Vector<String >();
        Vector<String > info=new Vector<>();
        property.add("address");
        property.add("time");
        property.add("expense");
        property.add("people");
        info.add("Harbin");
        info.add((new Timestamp((new java.util.Date()).getTime())).toString());
        info.add("200");
        info.add("4");
        insertRecord.setInfo(info);
        insertRecord.setProperty(property);
        insertRecord.execute();
//        property.add()
    }
}
