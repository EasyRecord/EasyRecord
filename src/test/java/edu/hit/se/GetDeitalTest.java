package edu.hit.se;

public class GetDeitalTest {
    public static void main(String []args){
        GetRecordDetail getRecordDetail=new GetRecordDetail();
        getRecordDetail.setKey("2017-10-26 19:36:27.596");
        getRecordDetail.setPdoName("出行");
        getRecordDetail.execute();
        System.out.println(getRecordDetail.getRelatedRecordProperties());
        System.out.println(getRecordDetail.getRelatedRecordInfos());
    }
}
