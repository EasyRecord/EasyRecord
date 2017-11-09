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
    <link rel="stylesheet" href="../css/table.css"/>
    <script type="text/javascript" src="../bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="../bootstrap/js/jquery-1.12.0.min.js"></script>
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
        <h2>查询结果</h2>
        <h4><small>Search result</small></h4>
        <!--<p>
        <a class="btn btn-lg btn-primary" href="../../components/#navbar" role="button">View navbar docs &raquo;</a>
        </p>-->
    </div>

    <%--<div class="table-title">--%>
        <%--<h3><s:property value="pdoName"/></h3>--%>
    <%--</div>--%>

    <div id="forms" class="main-table">
        <% Vector<String > pdoNameShot= (Vector<String >)request.getAttribute("pdoNameShot");
            Vector<Vector<String >> propertiesShot=(Vector<Vector<String >>) request.getAttribute("propertiesShot");
            Vector<Vector<Vector<String >>> infoShot = (Vector<Vector<Vector<String >>>) request.getAttribute("infoShot");
            for (int i = 0; i < pdoNameShot.size(); i++) {
                out.println("<div class=\"table-title-s\">\n" +
                        "        <h3>" + pdoNameShot.elementAt(i) + "</h3>\n" +
                        "    </div>");
                out.println("<table id=\"table-"+i+"0\" class=\"table table-hover\">");
                out.println("<thead><tr>");
                for (int j = 0; j < propertiesShot.elementAt(i).size(); j++) {
                    out.println("<th>" + propertiesShot.elementAt(i).elementAt(j) + "</th>");
                }
                out.println("<th>操作</th>");
                out.println("</tr></thead>");

                for (int j = 0; j < infoShot.elementAt(i).size(); j++) {
                    out.println("<tr>");
                    for (int k = 0; k < infoShot.elementAt(i).elementAt(0).size(); k++) {
                        out.println("<td>" + infoShot.elementAt(i).elementAt(j).elementAt(k) + "</td>");
                    }
                    out.println("<td class=\"operation-box\"><a href=\"GetRecordDetail.action?generateTime="+infoShot.elementAt(i).elementAt(j).elementAt(0)+"\" class=\"operation\">详情</a>\n" +
                            "<a href=\"DeleteRecord.action?generateTime="+infoShot.elementAt(i).elementAt(j).elementAt(0)+"\" class=\"operation\" id=\"delete\" data-toggle=\"tooltip\" data-placement=\"bottom\" title=\"删除\"><span class=\"glyphicon glyphicon-remove\" aria-hidden=\"true\"></span></a>\n" +
                            "<a href=\"ReadyToUpdateRecord.action?generateTime="+infoShot.elementAt(i).elementAt(j).elementAt(0)+"\" class=\"operation\" data-toggle=\"tooltip\" data-placement=\"bottom\" title=\"更新\"><span class=\"glyphicon glyphicon-refresh\" aria-hidden=\"true\"></span></a>\n" +
                            "<a href=\"Connect.action?generateTime="+infoShot.elementAt(i).elementAt(j).elementAt(0)+"\" class=\"operation\" data-toggle=\"tooltip\" data-placement=\"bottom\" title=\"建立关联\"><span class=\"glyphicon glyphicon-paperclip\" aria-hidden=\"true\"></span></a></td>");
                    out.println("</tr>");
                }
                out.println("</table>\n");
            }
        %>
    </div>

    <footer class="footer" id="footer">
        <hr/>
        <p id="pp">&copy; 2017 EasyRecord</p>
    </footer>
</div>

<script type="text/javascript" src="../js/bootstrap.min.js"></script>
<script type="text/javascript" src="../js/jquery-1.12.0.min.js"></script>
</body>
</html>
