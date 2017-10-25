package edu.hit.se;

import java.security.PublicKey;

public class GetAllUserNamesTest {
    public static void main(String []args){
        GetAllUserNames getAllUserNames=new GetAllUserNames();
        System.out.println(getAllUserNames.execute());
        System.out.println(getAllUserNames.getUsernames());

    }
}
