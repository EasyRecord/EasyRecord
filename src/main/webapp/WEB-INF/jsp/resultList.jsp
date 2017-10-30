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
    <title>查询结果</title>
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
        <% String pdoName=(String)request.getAttribute("pdoName");
            Vector<String> property=(Vector<String>)request.getAttribute("property");
            Vector<Vector<String>> recordInfos=(Vector<Vector<String>>)request.getAttribute("recordInfos");
            out.println(pdoName);
            out.println("<table id=\"table\" class=\"table table-striped table-bordered table-hover\">");
            out.println("<tr>");
            for(int i = 0; i < property.size(); i++){
                out.println("<th>" + property.elementAt(i) + "</th>");
            }
            out.println("<th>详情</th>\n" +
                        "<th>删除</th>\n" +
                        "<th>更新</th>\n" +
                        "<th>建立关联</th>");
            out.println("</tr>");

            for(int j = 0; j < recordInfos.size(); j++){
                out.println("<tr>");
                for(int k = 0; k < recordInfos.elementAt(0).size(); k++){
                    out.println("<td>" + recordInfos.elementAt(j).elementAt(k) + "</td>");
                }
                out.println("<td><a href=\"GetRecordDetail.action?pdoName="+pdoName+"&key="+recordInfos.elementAt(j).elementAt(0)+"\">详情</a></td>\n" +
                            "<td><a href=\"DeleteRecord.action?pdoName="+pdoName+"&key="+recordInfos.elementAt(j).elementAt(0)+"\">删除</a></td>\n" +
                            "<td><a href=\"ReadyToUpdateRecord.action?pdoName="+pdoName+"&key="+recordInfos.elementAt(j).elementAt(0)+"\">更新</a></td>\n" +
                            "<td><a href=\"Connect.action?pdoName="+pdoName+"&key="+recordInfos.elementAt(j).elementAt(0)+"\">建立关联</a></td>");
                out.println("</tr>");
                System.out.println("<td><a href=\"GetRecordDetail.action?pdoName="+pdoName+"&key="+recordInfos.elementAt(j).elementAt(0)+"\">详情</a></td>\n" +
                        "<td><a href=\"DeleteRecord.action?pdoName="+pdoName+"&key="+recordInfos.elementAt(j).elementAt(0)+"\">删除</a></td>\n" +
                        "<td><a href=\"ReadyToUpdateRecord.action?pdoName="+pdoName+"&key="+recordInfos.elementAt(j).elementAt(0)+"\">更新</a></td>\n" +
                        "<td><a href=\"Connect.action?pdoName="+pdoName+"&key="+recordInfos.elementAt(j).elementAt(0)+"\">建立关联</a></td>");
            }
            out.println("</table>");
        %>
    </div>
</body>
</html>
