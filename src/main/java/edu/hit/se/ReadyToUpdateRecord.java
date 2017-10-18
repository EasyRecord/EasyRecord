package edu.hit.se;

import com.opensymphony.xwork2.ActionSupport;

import java.util.Vector;

public class ReadyToUpdateRecord extends ActionSupport {
    String pdoName;
    Vector<String> property=new Vector<>();
    Vector<String> inofo=new Vector<>();

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

    public Vector<String> getInofo() {
        return inofo;
    }

    public void setInofo(Vector<String> inofo) {
        this.inofo = inofo;
    }

    public String execute(){
        return SUCCESS;
    }
}
