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
<%--<html>--%>
<%--<head>--%>
<%--<<<<<<< HEAD--%>
<%--&lt;%&ndash;<title>Title</title>&ndash;%&gt;--%>
<%--=======--%>
    <%--&lt;%&ndash;<title>Title</title>&ndash;%&gt;--%>
<%-->>>>>>> origin/zhaoyang--%>
<%--</head>--%>
<%--<body>--%>
<%--<s:debug></s:debug>--%>
<%--结果列表--%>
<%--</body>--%>
<%--</html>--%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <title>高级搜索结果</title>
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
        <h2>查询结果</h2>
        <h4><small>Search result</small></h4>
        <!--<p>
        <a class="btn btn-lg btn-primary" href="../../components/#navbar" role="button">View navbar docs &raquo;</a>
        </p>-->
    </div>

    <div class="table-title">
        <h3><s:property value="pdoName"/></h3>
    </div>

<%--<<<<<<< HEAD--%>
    <%--<div class="main-table">--%>
        <%--<table class="table table-hover">--%>
            <%--<thead>--%>
            <%--<tr class="info">--%>
                <%--&lt;%&ndash;<th>字段1</th>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<th>字段2</th>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<th>字段3</th>&ndash;%&gt;--%>
                <%--<s:iterator value="property" status="li">--%>
                    <%--<s:if test="#li != null">--%>
                        <%--<th><s:property /></th>--%>
                    <%--</s:if>--%>
                <%--</s:iterator>--%>
                <%--<th>操作</th>--%>
            <%--</tr>--%>
            <%--</thead>--%>

            <%--&lt;%&ndash;<s:iterator value="recordInfos" var="inRecordInfo">&ndash;%&gt;--%>
                <%--&lt;%&ndash;<tr>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<s:iterator value="inRecordInfo">&ndash;%&gt;--%>
                        <%--&lt;%&ndash;<td><s:property /></td>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;</s:iterator>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<td class="operation-box">&ndash;%&gt;--%>
                        <%--&lt;%&ndash;<s:url var="detailURL" action="GetRecordDetail">&ndash;%&gt;--%>
                            <%--&lt;%&ndash;<s:param name="pdoName"><s:property value="pdoName"/></s:param>&ndash;%&gt;--%>
                            <%--&lt;%&ndash;<s:param name="key"><s:property value='<% out.print(recordInfos.elementAt(i).elementAt(0));%>'/></s:param>&ndash;%&gt;--%>
                        <%--&lt;%&ndash;</s:url>&ndash;%&gt;--%>
                        <%--&lt;%&ndash;<s:a href="%{detailURL}" class="operation">详情</s:a>&ndash;%&gt;--%>

                        <%--&lt;%&ndash;&lt;%&ndash;<a href="GetRecordDetail.action?key="<% out.print(recordInfos.elementAt(i).elementAt(0)); %>"&pdoName="<s:property value="pdoName"/> class="operation">详情 </a>&ndash;%&gt;&ndash;%&gt;--%>

                        <%--&lt;%&ndash;<s:url var="updateURL" action="ReadyToUpdateRecord">&ndash;%&gt;--%>
                            <%--&lt;%&ndash;<s:param name="pdoName"><s:property value="pdoName"/></s:param>&ndash;%&gt;--%>
                            <%--&lt;%&ndash;<s:param name="key"><s:property value='<% out.print(recordInfos.elementAt(i).elementAt(0));%>'/></s:param>&ndash;%&gt;--%>
                        <%--&lt;%&ndash;</s:url>&ndash;%&gt;--%>
                        <%--&lt;%&ndash;<s:a href="%{updateURL}" class="operation" data-toggle="tooltip" data-placement="bottom" title="更新"><span class="glyphicon glyphicon-refresh" aria-hidden="true"></span></s:a>&ndash;%&gt;--%>
                        <%--&lt;%&ndash;&lt;%&ndash;<a href="ReadyToUpdateRecord.action?key="<% out.print(recordInfos.elementAt(i).elementAt(0)); %> class="operation" data-toggle="tooltip" data-placement="bottom" title="更新"><span class="glyphicon glyphicon-refresh" aria-hidden="true"></span> </a>&ndash;%&gt;&ndash;%&gt;--%>
                        <%--&lt;%&ndash;<a href="#" class="operation" id="delete" data-toggle="tooltip" data-placement="bottom" title="删除"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></a>&ndash;%&gt;--%>

                        <%--&lt;%&ndash;<s:url var="connectURL" action="Connect">&ndash;%&gt;--%>
                            <%--&lt;%&ndash;<s:param name="pdoName"><s:property value="pdoName"/></s:param>&ndash;%&gt;--%>
                            <%--&lt;%&ndash;<s:param name="key"><s:property value='<% out.print(recordInfos.elementAt(i++).elementAt(0));%>'/></s:param>&ndash;%&gt;--%>
                        <%--&lt;%&ndash;</s:url>&ndash;%&gt;--%>
                        <%--&lt;%&ndash;<s:a href="%{connectURL}" class="operation" data-toggle="tooltip" data-placement="bottom" title="建立关联"><span class="glyphicon glyphicon-paperclip" aria-hidden="true"></span></s:a>&ndash;%&gt;--%>
                        <%--&lt;%&ndash;&lt;%&ndash;<a href="Connect.action?key="<% out.print(recordInfos.elementAt(i++).elementAt(0)); %>  class="operation" data-toggle="tooltip" data-placement="bottom" title="建立关联"><span class="glyphicon glyphicon-paperclip" aria-hidden="true"></span></a>&ndash;%&gt;&ndash;%&gt;--%>
                    <%--&lt;%&ndash;</td>&ndash;%&gt;--%>
                <%--&lt;%&ndash;</tr>&ndash;%&gt;--%>
            <%--&lt;%&ndash;</s:iterator>&ndash;%&gt;--%>

            <%--<div id="forms">--%>
                <%--<% String pdoName=(String)request.getAttribute("pdoName");--%>
                    <%--Vector<String> property=(Vector<String>)request.getAttribute("property");--%>
                    <%--Vector<Vector<String>> recordInfos=(Vector<Vector<String>>)request.getAttribute("recordInfos");--%>
<%--//                    out.println(pdoName);--%>
<%--//                    out.println("<table id=\"table\" class=\"table table-striped table-bordered table-hover\">");--%>
<%--//                    out.println("<tr>");--%>
<%--//                    for(int i = 0; i < property.size(); i++){--%>
<%--//                        out.println("<th>" + property.elementAt(i) + "</th>");--%>
<%--//                    }--%>
<%--//                    out.println("<th>详情</th>\n" +--%>
<%--//                            "<th>删除</th>\n" +--%>
<%--//                            "<th>更新</th>\n" +--%>
<%--//                            "<th>建立关联</th>");--%>
<%--//                    out.println("</tr>");--%>
                    <%--for(int j = 0; j < recordInfos.size(); j++){--%>
                        <%--out.println("<tr>");--%>
                        <%--for(int k = 0; k < recordInfos.elementAt(0).size(); k++){--%>
                            <%--out.println("<td>" + recordInfos.elementAt(j).elementAt(k) + "</td>");--%>
                        <%--}--%>
                        <%--out.println("<td class=\"operation-box\"><a class=\"operation\" href=\"GetRecordDetail.action?pdoName="+pdoName+"&key="+recordInfos.elementAt(j).elementAt(0)+"\">详情</a>\n" +--%>
                                <%--"<a class=\"operation\" id=\"delete\" data-toggle=\"tooltip\" data-placement=\"bottom\" title=\"删除\" href=\"DeleteRecord.action?pdoName="+pdoName+"&key="+recordInfos.elementAt(j).elementAt(0)+"\"><span class=\"glyphicon glyphicon-remove\" aria-hidden=\"true\"></span></a>\n" +--%>
                                <%--"<a class=\"operation\" data-toggle=\"tooltip\" data-placement=\"bottom\" title=\"更新\" href=\"ReadyToUpdateRecord.action?pdoName="+pdoName+"&key="+recordInfos.elementAt(j).elementAt(0)+"\"><span class=\"glyphicon glyphicon-refresh\" aria-hidden=\"true\"></span></a>\n" +--%>
                                <%--"<a class=\"operation\" data-toggle=\"tooltip\" data-placement=\"bottom\" title=\"建立关联\" href=\"Connect.action?pdoName="+pdoName+"&key="+recordInfos.elementAt(j).elementAt(0)+"\"><span class=\"glyphicon glyphicon-paperclip\" aria-hidden=\"true\"></span></a></td>");--%>
                        <%--System.out.println("<td class=\"operation-box\"><a class=\"operation\" href=\"GetRecordDetail.action?pdoName="+pdoName+"&key="+recordInfos.elementAt(j).elementAt(0)+"\">详情</a>\n" +--%>
                                <%--"<a class=\"operation\" id=\"delete\" data-toggle=\"tooltip\" data-placement=\"bottom\" title=\"删除\" href=\"DeleteRecord.action?pdoName="+pdoName+"&key="+recordInfos.elementAt(j).elementAt(0)+"\"><span class=\"glyphicon glyphicon-remove\" aria-hidden=\"true\"></span></a>\n" +--%>
                                <%--"<a class=\"operation\" data-toggle=\"tooltip\" data-placement=\"bottom\" title=\"更新\" href=\"ReadyToUpdateRecord.action?pdoName="+pdoName+"&key="+recordInfos.elementAt(j).elementAt(0)+"\"><span class=\"glyphicon glyphicon-refresh\" aria-hidden=\"true\"></span></a>\n" +--%>
                                <%--"<a class=\"operation\" data-toggle=\"tooltip\" data-placement=\"bottom\" title=\"建立关联\" href=\"Connect.action?pdoName="+pdoName+"&key="+recordInfos.elementAt(j).elementAt(0)+"\"><span class=\"glyphicon glyphicon-paperclip\" aria-hidden=\"true\"></span></a></td>");--%>
                        <%--out.println("</tr>");--%>
                            <%--}--%>
<%--//                    out.println("</table>");--%>
                <%--%>--%>
            <%--</div>--%>
            <%--&lt;%&ndash;<tr>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<td>字段1</td>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<td><a href="#">字段2</a></td>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<td>字段3</td>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<td class="operation-box">&ndash;%&gt;--%>
            <%--&lt;%&ndash;<a href="#" class="operation" data-toggle="tooltip" data-placement="bottom" title="更新"><span class="glyphicon glyphicon-refresh" aria-hidden="true"></span></a>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<a href="#" class="operation" data-toggle="tooltip" data-placement="bottom" title="删除"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></a>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<a href="#" class="operation" data-toggle="tooltip" data-placement="bottom" title="建立关联"><span class="glyphicon glyphicon-paperclip" aria-hidden="true"></span></a>&ndash;%&gt;--%>
            <%--&lt;%&ndash;</td>&ndash;%&gt;--%>
            <%--&lt;%&ndash;</tr>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<tr>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<td>字段1</td>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<td><a href="#">字段2</a></td>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<td>字段3</td>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<td class="operation-box">&ndash;%&gt;--%>
            <%--&lt;%&ndash;<a href="#" class="operation" data-toggle="tooltip" data-placement="bottom" title="更新"><span class="glyphicon glyphicon-refresh" aria-hidden="true"></span></a>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<a href="#" class="operation" data-toggle="tooltip" data-placement="bottom" title="删除"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></a>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<a href="#" class="operation" data-toggle="tooltip" data-placement="bottom" title="建立关联"><span class="glyphicon glyphicon-paperclip" aria-hidden="true"></span></a>&ndash;%&gt;--%>
            <%--&lt;%&ndash;</td>&ndash;%&gt;--%>
            <%--&lt;%&ndash;</tr>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<tr>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<td>字段1</td>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<td><a href="#">字段2</a></td>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<td>字段3</td>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<td class="operation-box">&ndash;%&gt;--%>
            <%--&lt;%&ndash;<a href="#" class="operation" data-toggle="tooltip" data-placement="bottom" title="更新"><span class="glyphicon glyphicon-refresh" aria-hidden="true"></span></a>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<a href="#" class="operation" data-toggle="tooltip" data-placement="bottom" title="删除"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></a>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<a href="#" class="operation" data-toggle="tooltip" data-placement="bottom" title="建立关联"><span class="glyphicon glyphicon-paperclip" aria-hidden="true"></span></a>&ndash;%&gt;--%>
            <%--&lt;%&ndash;</td>&ndash;%&gt;--%>
            <%--&lt;%&ndash;</tr>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<tr>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<td>字段1</td>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<td><a href="#">字段2</a></td>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<td>字段3</td>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<td class="operation-box">&ndash;%&gt;--%>
            <%--&lt;%&ndash;<a href="#" class="operation" data-toggle="tooltip" data-placement="bottom" title="更新"><span class="glyphicon glyphicon-refresh" aria-hidden="true"></span></a>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<a href="#" class="operation" data-toggle="tooltip" data-placement="bottom" title="删除"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></a>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<a href="#" class="operation" data-toggle="tooltip" data-placement="bottom" title="建立关联"><span class="glyphicon glyphicon-paperclip" aria-hidden="true"></span></a>&ndash;%&gt;--%>
            <%--&lt;%&ndash;</td>&ndash;%&gt;--%>
            <%--&lt;%&ndash;</tr>&ndash;%&gt;--%>
        <%--</table>--%>
    <%--</div>--%>

<%--=======--%>
    <div id="forms" class="main-table">
        <% String pdoName=(String)request.getAttribute("pdoName");
            Vector<String> property=(Vector<String>)request.getAttribute("property");
            Vector<Vector<String>> recordInfos=(Vector<Vector<String>>)request.getAttribute("recordInfos");
//            out.println(pdoName);
            out.println("<table id=\"table\" class=\"table table-hover\">");
            out.println("<thead><tr>");
            int size = 5;
            if(property.size() < 5){
                size = property.size();
            }
            for(int i = 0; i < size; i++){
                out.println("<th>" + property.elementAt(i) + "</th>");
            }
            out.println("<th>操作</th>");
            out.println("</tr></thead>");

            for(int j = 0; j < recordInfos.size(); j++){
                System.out.println(recordInfos.elementAt(j).toString());
                out.println("<tr>");
                for(int k = 0; k < size; k++){
                    out.println("<td>" + recordInfos.elementAt(j).elementAt(k) + "</td>");
                }
                out.println("<td class=\"operation-box\"><a href=\"GetRecordDetail.action?pdoName="+pdoName+"&key="+recordInfos.elementAt(j).elementAt(0)+"\" class=\"operation\">详情</a>\n" +
                        "<a href=\"DeleteRecord.action?pdoName="+pdoName+"&key="+recordInfos.elementAt(j).elementAt(0)+"\" class=\"operation\" id=\"delete\" data-toggle=\"tooltip\" data-placement=\"bottom\" title=\"删除\"><span class=\"glyphicon glyphicon-remove\" aria-hidden=\"true\"></span></a>\n" +
                        "<a href=\"ReadyToUpdateRecord.action?pdoName="+pdoName+"&key="+recordInfos.elementAt(j).elementAt(0)+"\" class=\"operation\" data-toggle=\"tooltip\" data-placement=\"bottom\" title=\"更新\"><span class=\"glyphicon glyphicon-refresh\" aria-hidden=\"true\"></span></a>\n" +
                        "<a href=\"Connect.action?pdoName="+pdoName+"&key="+recordInfos.elementAt(j).elementAt(0)+"\" class=\"operation\" data-toggle=\"tooltip\" data-placement=\"bottom\" title=\"建立关联\"><span class=\"glyphicon glyphicon-paperclip\" aria-hidden=\"true\"></span></a></td>");
                out.println("</tr>");
//                System.out.println("<td class=\"operation-box\"><a href=\"GetRecordDetail.action?pdoName="+pdoName+"&key="+recordInfos.elementAt(j).elementAt(0)+"\" class=\"operation\">详情</a>\n" +
//                        "<a href=\"DeleteRecord.action?pdoName="+pdoName+"&key="+recordInfos.elementAt(j).elementAt(0)+"\" class=\"operation\" id=\"delete\" data-toggle=\"tooltip\" data-placement=\"bottom\" title=\"删除\"><span class=\"glyphicon glyphicon-remove\" aria-hidden=\"true\"></span></a>\n" +
//                        "<a href=\"ReadyToUpdateRecord.action?pdoName="+pdoName+"&key="+recordInfos.elementAt(j).elementAt(0)+"\" class=\"operation\" data-toggle=\"tooltip\" data-placement=\"bottom\" title=\"更新\"><span class=\"glyphicon glyphicon-refresh\" aria-hidden=\"true\"></span></a>\n" +
//                        "<a href=\"Connect.action?pdoName="+pdoName+"&key="+recordInfos.elementAt(j).elementAt(0)+"\" class=\"operation\" data-toggle=\"tooltip\" data-placement=\"bottom\" title=\"建立关联\"><span class=\"glyphicon glyphicon-paperclip\" aria-hidden=\"true\"></span></a></td>");
            }
            out.println("</table>");
        %>
    </div>

    <%--<div class="main-table">--%>
        <%--<table class="table table-hover">--%>
            <%--<thead>--%>
            <%--<tr class="info">--%>
                <%--&lt;%&ndash;<th>字段1</th>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<th>字段2</th>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<th>字段3</th>&ndash;%&gt;--%>
                <%--<s:iterator value="property" status="li">--%>
                    <%--<s:if test="#li != null">--%>
                        <%--<th><s:property /></th>--%>
                    <%--</s:if>--%>
                <%--</s:iterator>--%>
                <%--<th>操作</th>--%>
            <%--</tr>--%>
            <%--</thead>--%>

            <%--<s:iterator value="recordInfos" var="inRecordInfos">--%>
                <%--<tr>--%>
                    <%--<s:iterator value="inRecordInfos">--%>
                        <%--<td><s:property /></td>--%>
                    <%--</s:iterator>--%>
                    <%--<td class="operation-box">--%>
                        <%--<s:url var="detailURL" action="GetRecordDetail">--%>
                            <%--<s:param name="pdoName"><s:property value="pdoName"/></s:param>--%>
                            <%--<s:param name="key"><s:property value="key"/></s:param>--%>
                        <%--</s:url>--%>
                        <%--<s:a href="%{detailURL}" class="operation">详情</s:a>--%>

                        <%--<s:url var="updateURL" action="ReadyToUpdateRecord">--%>
                            <%--<s:param name="pdoName"><s:property value="pdoName"/></s:param>--%>
                            <%--<s:param name="key"><s:property value="key"/></s:param>--%>
                        <%--</s:url>--%>
                        <%--<s:a href="%{updateURL}" class="operation" data-toggle="tooltip" data-placement="bottom" title="更新"><span class="glyphicon glyphicon-refresh" aria-hidden="true"></span></s:a>--%>

                        <%--<a href="#" class="operation" id="delete" data-toggle="tooltip" data-placement="bottom" title="删除"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></a>--%>

                        <%--<s:url var="connectURL" action="Connect">--%>
                            <%--<s:param name="pdoName"><s:property value="pdoName"/></s:param>--%>
                            <%--<s:param name="key"><s:property value="key"/></s:param>--%>
                        <%--</s:url>--%>
                        <%--<s:a href="%{connectURL}" class="operation" data-toggle="tooltip" data-placement="bottom" title="建立关联"><span class="glyphicon glyphicon-paperclip" aria-hidden="true"></span></s:a>--%>
                    <%--</td>--%>
                <%--</tr>--%>
            <%--</s:iterator>--%>
        <%--</table>--%>
    <%--</div>--%>
<%-->>>>>>> origin/zhaoyang--%>


    <footer class="footer" id="footer">
        <hr/>
        <p id="pp">&copy; 2017 EasyRecord</p>
    </footer>
</div>

<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="bootstrap/js/jquery-1.12.0.min.js"></script>
<script>
    $('[data-toggle="tooltip"]').tooltip();
</script>
</body>
</html>
