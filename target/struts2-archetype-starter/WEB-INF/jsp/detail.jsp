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
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<%--<<<<<<< HEAD--%>
    <%--<title>详情页面</title>--%>
    <%--<link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css"/>--%>
    <%--<link rel="stylesheet" href="../bootstrap/css/bootstrap-theme.min.css"/>--%>
    <%--<link rel="stylesheet" href="../css/index.css"/>--%>
    <%--<link rel="stylesheet" href="../css/createPdo.css"/>--%>
    <%--<script type="text/javascript" src="../bootstrap/js/bootstrap.min.js"></script>--%>
    <%--<script type="text/javascript" src="../bootstrap/js/jquery-1.12.0.min.js"></script>--%>
<%--</head>--%>
<%--<body>--%>
<%--<s:debug></s:debug>--%>
<%--<script type="text/javascript" src="../js/bootstrap.min.js"></script>--%>
<%--<script type="text/javascript" src="../js/jquery-1.12.0.min.js"></script>--%>
<%--<div id="forms">--%>
    <%--<%--%>
        <%--String pdoName = (String)request.getAttribute("pdoName");--%>
        <%--Vector<String> property = (Vector<String>)request.getAttribute("property");--%>
        <%--Vector<String> info = (Vector<String>)request.getAttribute("info");--%>

        <%--Vector<String> relatedPdoNames = (Vector<String>)request.getAttribute("relatedPdoNames");--%>
        <%--Vector<Vector<String>> relatedRecordProperties = (Vector<Vector<String>>)request.getAttribute("relatedRecordProperties");--%>
        <%--Vector<Vector<Vector<String>>> relatedRecordInfos = (Vector<Vector<Vector<String>>>)request.getAttribute("relatedRecordInfos");--%>

        <%--out.println(pdoName);--%>
        <%--out.println("<table id=\"table\" class=\"table table-striped table-bordered table-hover \">");--%>
        <%--out.println("<tr>");--%>
        <%--for(int i = 0; i < property.size(); i++) {--%>
            <%--out.println("<th>" + property.elementAt(i) + "</th>");--%>

        <%--}--%>
        <%--out.println("</tr>");--%>
        <%--out.println("<tr>");--%>
        <%--for(int i=0;i<info.size();i++){--%>
            <%--out.println("<td>" + info.elementAt(i) + "</td>");--%>
        <%--}--%>
        <%--out.println("</tr>");--%>
        <%--System.out.println(relatedPdoNames.size());--%>
        <%--for (int i = 0; i < relatedPdoNames.size(); i++) {--%>
            <%--out.println(relatedPdoNames.elementAt(i) + "\n");--%>
            <%--out.println("<table id=\"relatedTable_"+i+"\" class=\"table table-striped table-bordered table-hover \">");--%>
            <%--out.println("<tr>");--%>
            <%--System.out.println(i);--%>
            <%--System.out.println(relatedRecordProperties);--%>
            <%--for (int j = 0; j < relatedRecordProperties.elementAt(i).size(); j++) {--%>
                <%--out.println("<td>" + relatedRecordProperties.elementAt(i).elementAt(j) + "</td>");--%>
            <%--}--%>
            <%--out.println("<td>详情</td>" +--%>
                        <%--"<td>取消关联</td>");--%>
            <%--out.println("</tr>");--%>

            <%--for (int j = 0; j < relatedRecordInfos.elementAt(i).size(); j++) {--%>
                <%--out.println("<tr>");--%>
                <%--for (int k = 0; k < relatedRecordInfos.elementAt(i).elementAt(0).size(); k++) {--%>
                    <%--out.println("<td>" + relatedRecordInfos.elementAt(i).elementAt(j).elementAt(k) + "</td>");--%>
                <%--}--%>
                <%--out.println("<td><a href=\"GetRecordDetail.action?pdoName="+relatedPdoNames.elementAt(i)+"&key="+relatedRecordInfos.elementAt(i).elementAt(j).elementAt(0)+"\">详情</a></td>\n" +--%>
                            <%--"<td><a href=\"Disassociation.action?key="+info.elementAt(0)+"&keyDestination="+relatedRecordInfos.elementAt(i).elementAt(j).elementAt(0)+"\">取消关联</a></td>");--%>
                <%--out.println("</tr>");--%>
            <%--}--%>
            <%--out.println("</table>\n");--%>
        <%--}--%>
    <%--%>--%>
<%--</div>--%>
<%--=======--%>
    <meta charset="UTF-8">
    <title>记录详情</title>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="bootstrap/css/bootstrap-theme.min.css"/>
    <link rel="stylesheet" href="css/index.css"/>
    <link rel="stylesheet" href="css/table.css"/>
    <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="bootstrap/js/jquery-1.12.0.min.js"></script>

</head>
<body>
<div class="container">
    <div class="header clearfix">
        <nav>
            <ul class="nav nav-pills pull-right">
                <li role="presentation"><a href="GoToGeneratePdo.action">新建</a></li>
                <li role="presentation"><a href="GoToInsertRecord.action">添加</a></li>
                <li role="presentation" class="active"><a href="GoToSearch.action">查询</a></li>
                <li role="presentation"><a href="GoToImport.action">导入</a></li>
                <%-- 跳转到index.jsp页面 --%>
                <li role="presentation"><a href="BackToIndex.action"><span class="glyphicon glyphicon-share-alt" aria-hidden="true"></span> 返回</a></li>
                <li role="presentation"><a href="Logout.action"><span class="glyphicon glyphicon-log-out" aria-hidden="true"></span> 登出</a></li>
                <% if(session.getAttribute("user")==null) response.sendRedirect("Logout.action");%>
            </ul>
            <h3 class="text-muted">EasyRecord</h3>
        </nav>
    </div>
    <hr/>

    <div >
        <h2>记录详情</h2>
        <h4><small>The details of record</small></h4>
        <!--<p>
        <a class="btn btn-lg btn-primary" href="../../components/#navbar" role="button">View navbar docs &raquo;</a>
        </p>-->
    </div>

    <div id="forms" class="main-table">

        <%
            String pdoName = (String)request.getAttribute("pdoName");
            String key = (String)request.getAttribute("key");
            Vector<String> property = (Vector<String>)request.getAttribute("property");
            Vector<String> info = (Vector<String>)request.getAttribute("info");

            Vector<String> relatedPdoNames = (Vector<String>)request.getAttribute("relatedPdoNames");
            Vector<Vector<String>> relatedRecordProperties = (Vector<Vector<String>>)request.getAttribute("relatedRecordProperties");
            Vector<Vector<Vector<String>>> relatedRecordInfos = (Vector<Vector<Vector<String>>>)request.getAttribute("relatedRecordInfos");

            out.println("<div class=\"table-title-s\">\n" +
                    "        <h3>" + pdoName + "</h3>\n" +
                    "    </div>");
            out.println("<div class=\"details\">");
            for(int i = 0; i < property.size(); i++) {
                out.println("<p><strong>" + property.elementAt(i) + "</strong> : " + info.elementAt(i) + "</p>");
            }
            out.println("</div>");
//            out.println("<table id=\"table\" class=\"table table-striped table-bordered table-hover \">");
//            out.println("<tr>");
//            for(int i = 0; i < property.size(); i++) {
//                out.println("<th>" + property.elementAt(i) + "</th>");
//
//            }
//            out.println("</tr>");
//            out.println("<tr>");
//            for(int i=0;i<info.size();i++){
//                out.println("<td>" + info.elementAt(i) + "</td>");
//            }
//            out.println("</tr>");

            System.out.println(relatedPdoNames.size());
            if(relatedPdoNames.size() != 0) {
                out.println("<div class=\"table-title-s\">\n" +
                        "        <h3>关联记录</h3>\n" +
                        "    </div>");
                for (int i = 0; i < relatedPdoNames.size(); i++) {
                    out.println(relatedPdoNames.elementAt(i) + "\n");
                    out.println("<table id=\"relatedTable_" + i + "\" class=\"table table-hover \">");
                    out.println("<thead><tr>");
                    System.out.println(i);
                    System.out.println(relatedRecordProperties);
                    for (int j = 0; j < relatedRecordProperties.elementAt(i).size(); j++) {
                        out.println("<th>" + relatedRecordProperties.elementAt(i).elementAt(j) + "</th>");
                    }
                    out.println("<th>操作</th>");
                    out.println("</tr></thead>");

                    for (int j = 0; j < relatedRecordInfos.elementAt(i).size(); j++) {
                        out.println("<tr>");
                        for (int k = 0; k < relatedRecordInfos.elementAt(i).elementAt(0).size(); k++) {
                            out.println("<td>" + relatedRecordInfos.elementAt(i).elementAt(j).elementAt(k) + "</td>");
                        }
                        out.println("<td class=\"operation-box\"><a href=\"GetRecordDetail.action?pdoName=" + relatedPdoNames.elementAt(i) + "&key=" + relatedRecordInfos.elementAt(i).elementAt(j).elementAt(0) + "\" class=\"operation\">详情</a>\n" +
                                "<a href=\"Disassociation.action?key=" + info.elementAt(0) + "&keyDestination=" + relatedRecordInfos.elementAt(i).elementAt(j).elementAt(0) + "\" class=\"operation\">取消关联</a></td>");
                        out.println("</tr>");
                    }
                    out.println("</table>\n");
                }
            }else{
                out.println("<div class=\"table-title-s\">\n" +
                        "        <h3>暂无关联记录</h3>\n" +
                        "    </div>");
            }
            out.println("<div class=\"details\">");
            out.println("<p><a href=\"Connect.action?pdoName="+pdoName+"&key="+key+"\">点击此处建立新关联<a></p>");
            out.println("</div>");
        %>
    </div>

    <footer class="footer" id="footer">
        <hr/>
        <p id="pp">&copy; 2017 EasyRecord</p>
    </footer>
</div>

<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="bootstrap/js/jquery-1.12.0.min.js"></script>
</body>
</html>
