package edu.hit.se;
import java.sql.Date;
public class Eat{
String address="";
Date time=new Date(0,0,0);
double expense;
int people;
public String getAddress() {
        return address;
    }
public void setAddress(String address) {
        this.address=address;
    }
public Date getTime() {
        return time;
    }
public void setTime(Date time) {
        this.time=time;
    }
public double getExpense() {
        return expense;
    }
public void setExpense(double expense) {
        this.expense=expense;
    }
public int getPeople() {
        return people;
    }
public void setPeople(int people) {
        this.people=people;
    }
}

