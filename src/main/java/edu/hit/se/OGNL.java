package edu.hit.se;

import com.opensymphony.xwork2.ActionSupport;

import java.util.Set;
import java.util.Vector;

public class OGNL  extends ActionSupport{
    Vector<Vector<String >> a=new Vector<>();

    public Vector<Vector<String>> getA() {
        return a;
    }
    Vector<Integer> b=new Vector<>();
    public void setA(Vector<Vector<String>> a) {
        this.a = a;
    }

    public Vector<Integer> getB() {
        return b;
    }

    public void setB(Vector<Integer> b) {
        this.b = b;
    }

    public  String execute(){
        Vector<String> te=new Vector<>();
        te.add("one");
        te.add("two");
        a.add(te);
        b.add(1);
        b.add(2);
        return  SUCCESS;
    }
}