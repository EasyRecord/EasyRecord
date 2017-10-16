package edu.hit.se;
import java.sql.Date;

import java.util.Vector;

public class GeneratePdoTest {


    static public void main(String []args){

        GeneratePdo generatePdo=new GeneratePdo();
        String pdoName="Eat";


        Vector<String > property=new Vector<String >();
        Vector<String > elementType= new Vector<String>();
        Vector<Integer> size=new Vector<Integer>();


        property.add("address");
        property.add("time");
        property.add("expense");
        property.add("people");

        elementType.add("String");
        elementType.add("Date");
        elementType.add("double");
        elementType.add("int");

        size.add(255);
        size.add(255);
        size.add(255);
        size.add(255);

        generatePdo.setElementType(elementType);
        generatePdo.setPdoName(pdoName);
        generatePdo.setSize(size);
        generatePdo.setProperty(property);
        generatePdo.execute();
    }
}
