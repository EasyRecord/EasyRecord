package edu.hit.se;

public class SearchAllTest {
    public static void main(String []args){
        SearchAll searchAll=new SearchAll();
        searchAll.setKeyWord("测");
        searchAll.execute();
        System.out.println(searchAll.getPdoNameShot());
        System.out.println(searchAll.getPropertiesShot());
        System.out.println(searchAll.getInfoShot());
    }
}
