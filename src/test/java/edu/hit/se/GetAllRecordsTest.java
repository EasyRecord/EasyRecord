package edu.hit.se;

public class GetAllRecordsTest {
    public static void main (String[] args){
        GetAllRecord getAllRecord=new GetAllRecord();
        getAllRecord.setPdoName("运动");
        getAllRecord.execute();
        System.out.println(getAllRecord.getProperty());
    }
}
