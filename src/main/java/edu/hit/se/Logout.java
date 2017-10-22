package edu.hit.se;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpSession;

public class Logout extends ActionSupport {
    public String execute(){
        HttpSession session = null;
        session = ServletActionContext.getRequest().getSession();
        session.removeAttribute("user");
        return SUCCESS;
    }
}
