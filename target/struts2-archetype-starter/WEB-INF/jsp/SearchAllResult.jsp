<%@ page import="java.util.Vector" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: qiusuo
  Date: 2017/10/24
  Time: 22:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>全局搜索结果</title>
    <link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="../bootstrap/css/bootstrap-theme.min.css"/>
    <link rel="stylesheet" href="../css/index.css"/>
    <link rel="stylesheet" href="../css/createPdo.css"/>
    <script type="text/javascript" src="../bootstrap/js/bootstrap.min.js"></script>

    <script type="text/javascript" src="../bootstrap/js/jquery-1.12.0.min.js"></script>
</head>
<body>
<s:debug></s:debug>
说明，产生的table的为：table-0,table-1,table-2.....
<div id="forms">
    <% Vector<String > pdoNameShot= (Vector<String >)request.getAttribute("pdoNameShot");
        Vector<Vector<String >> propertiesShot=(Vector<Vector<String >>) request.getAttribute("propertiesShot");
        Vector<Vector<Vector<String >>> infoShot = (Vector<Vector<Vector<String >>>) request.getAttribute("infoShot");
        for (int i = 0; i < pdoNameShot.size(); i++) {
            out.println(pdoNameShot.elementAt(i) + "\n");
            out.println("<table id=\"table-"+i+"0\" class=\"table table-striped table-bordered table-hover \">");
            out.println("<tr>");
            for (int j = 0; j < propertiesShot.elementAt(i).size(); j++) {
                out.println("<th>" + propertiesShot.elementAt(i).elementAt(j) + "</th>");
            }
            out.println("<th>详情</th>\n" +
                    "        <th>删除</th>\n" +
                    "        <th>更新</th>\n" +
                    "        <th>建立关联</th>");
            out.println("</tr>");

            for (int j = 0; j < infoShot.elementAt(i).size(); j++) {
                out.println("<tr>");
                for (int k = 0; k < infoShot.elementAt(i).elementAt(0).size(); k++) {
                    out.println("<td>" + infoShot.elementAt(i).elementAt(j).elementAt(k) + "</td>");
                     }
                out.println("<td><a href=\"GetRecordDetail.action?generateTime="+infoShot.elementAt(i).elementAt(j).elementAt(0)+"\">详情</a></td>\n" +
                        "        <td><a href=\"DeleteRecord.action?generateTime="+infoShot.elementAt(i).elementAt(j).elementAt(0)+"\">删除</a></td>\n" +
                        "        <td><a href=\"ReadyToUpdateRecord.action?generateTime="+infoShot.elementAt(i).elementAt(j).elementAt(0)+"\">更新</a></td>\n" +
                        "        <td><a href=\"Connect.action?generateTime="+infoShot.elementAt(i).elementAt(j).elementAt(0)+"\">建立关联</a></td>");
                out.println("</tr>");
            }
            out.println("</table>\n");
        }
%>
</div>
<script type="text/javascript" src="../js/bootstrap.min.js"></script>
<script type="text/javascript" src="../js/jquery-1.12.0.min.js"></script>
<script>

</script>
</body>
</html>
