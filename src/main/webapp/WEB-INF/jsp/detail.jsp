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
    <title>详情页面</title>
    <link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="../bootstrap/css/bootstrap-theme.min.css"/>
    <link rel="stylesheet" href="../css/index.css"/>
    <link rel="stylesheet" href="../css/createPdo.css"/>
    <script type="text/javascript" src="../bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="../bootstrap/js/jquery-1.12.0.min.js"></script>
</head>
<body>
<s:debug></s:debug>
<script type="text/javascript" src="../js/bootstrap.min.js"></script>
<script type="text/javascript" src="../js/jquery-1.12.0.min.js"></script>
<div id="forms">
    <%
        String pdoName = (String)request.getAttribute("pdoName");
        Vector<String> property = (Vector<String>)request.getAttribute("property");
        Vector<String> info = (Vector<String>)request.getAttribute("info");

        Vector<String> relatedPdoNames = (Vector<String>)request.getAttribute("relatedPdoNames");
        Vector<Vector<String>> relatedRecordProperties = (Vector<Vector<String>>)request.getAttribute("relatedRecordProperties");
        Vector<Vector<Vector<String>>> relatedRecordInfos = (Vector<Vector<Vector<String>>>)request.getAttribute("relatedRecordInfos");

        out.println(pdoName);
        out.println("<table id=\"table\" class=\"table table-striped table-bordered table-hover \">");
        out.println("<tr>");
        for(int i = 0; i < property.size(); i++) {
            out.println("<th>" + property.elementAt(i) + "</th>");

        }
        out.println("</tr>");
        out.println("<tr>");
        for(int i=0;i<info.size();i++){
            out.println("<td>" + info.elementAt(i) + "</td>");
        }
        out.println("</tr>");
        System.out.println(relatedPdoNames.size());
        for (int i = 0; i < relatedPdoNames.size(); i++) {
            out.println(relatedPdoNames.elementAt(i) + "\n");
            out.println("<table id=\"relatedTable_"+i+"\" class=\"table table-striped table-bordered table-hover \">");
            out.println("<tr>");
            System.out.println(i);
            System.out.println(relatedRecordProperties);
            for (int j = 0; j < relatedRecordProperties.elementAt(i).size(); j++) {
                out.println("<td>" + relatedRecordProperties.elementAt(i).elementAt(j) + "</td>");
            }
            out.println("<td>详情</td>" +
                        "<td>取消关联</td>");
            out.println("</tr>");

            for (int j = 0; j < relatedRecordInfos.elementAt(i).size(); j++) {
                out.println("<tr>");
                for (int k = 0; k < relatedRecordInfos.elementAt(i).elementAt(0).size(); k++) {
                    out.println("<td>" + relatedRecordInfos.elementAt(i).elementAt(j).elementAt(k) + "</td>");
                }
                out.println("<td><a href=\"GetRecordDetail.action?pdoName="+relatedPdoNames.elementAt(i)+"&key="+relatedRecordInfos.elementAt(i).elementAt(j).elementAt(0)+"\">详情</a></td>\n" +
                            "<td><a href=\"Disassociation.action?key="+info.elementAt(0)+"&keyDestination="+relatedRecordInfos.elementAt(i).elementAt(j).elementAt(0)+"\">取消关联</a></td>");
                out.println("</tr>");
            }
            out.println("</table>\n");
        }
    %>
</div>
</body>
</html>
