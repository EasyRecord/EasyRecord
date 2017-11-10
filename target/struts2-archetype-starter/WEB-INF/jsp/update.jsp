<%@ page import="java.util.Vector" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: qiusuo
  Date: 2017/10/19
  Time: 18:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>更新</title>
</head>
<body>
<s:debug></s:debug>


<s:property value="pdoName"></s:property>
<form>
<% String pdoName=(String)request.getAttribute("pdoName");
    Vector<String> property=(Vector<String>)request.getAttribute("property");
    Vector<String> info=(Vector<String>)request.getAttribute("info"); %>
<%--//            out.println(pdoName);--%>
</form>
<table>


    <form class="form-horizontal" action="updating.action" method="post">
        <%
            for (int i=0;i<property.size();i++){
                out.println("<tr>");
                out.println("<div style=\"display: none\"><td style=\"display: none\"><input name=\"property[i]\" style=\"display: none\"></td></div>");
                out.println("<td>"+property.elementAt(i)+"</td>");
                out.println(" <td><input name=\"info[i]\" value=\""+info.elementAt(i)+"\"></td>");
                out.println("</tr>");
            }

        %>

        <tr>
            <td></td>
            <td><input type="submit" value="提交" class="btn btn-info"></td>
        </tr>

    </form>
</table>

</body>
</html>
