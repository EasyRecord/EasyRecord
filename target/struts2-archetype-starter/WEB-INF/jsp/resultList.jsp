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
    <%--<title>Title</title>--%>
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
    <title>查询结果</title>
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
                <li role="presentation"><a href="index.jsp"><span class="glyphicon glyphicon-share-alt" aria-hidden="true"></span> 返回</a></li>
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
        <h3>PDO名</h3>
        <%--<h3><s:property value="pdoName" /></h3>--%>
    </div>

    <div class="main-table">
        <table class="table table-hover">
            <thead>
            <tr class="info">
                <%--<th>字段1</th>--%>
                <%--<th>字段2</th>--%>
                <%--<th>字段3</th>--%>
                <s:iterator value="property" status="li">
                    <s:if test="#li != null">
                        <th><s:property /></th>
                    </s:if>
                </s:iterator>
                <th>操作</th>
            </tr>
            </thead>

            <s:iterator value="recordInfos" status="st">
                <tr>
                    <s:iterator value="top">
                        <td><s:property /></td>
                    </s:iterator>
                    <td class="operation-box">
                        <a href="#" class="operation" data-toggle="tooltip" data-placement="bottom" title="更新"><span class="glyphicon glyphicon-refresh" aria-hidden="true"></span></a>
                        <a href="#" class="operation" data-toggle="tooltip" data-placement="bottom" title="删除"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></a>
                        <a href="#" class="operation" data-toggle="tooltip" data-placement="bottom" title="建立关联"><span class="glyphicon glyphicon-paperclip" aria-hidden="true"></span></a>
                    </td>
                </tr>
            </s:iterator>


            <%--<tr>--%>
                <%--<td>字段1</td>--%>
                <%--<td><a href="#">字段2</a></td>--%>
                <%--<td>字段3</td>--%>
                <%--<td class="operation-box">--%>
                    <%--<a href="#" class="operation" data-toggle="tooltip" data-placement="bottom" title="更新"><span class="glyphicon glyphicon-refresh" aria-hidden="true"></span></a>--%>
                    <%--<a href="#" class="operation" data-toggle="tooltip" data-placement="bottom" title="删除"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></a>--%>
                    <%--<a href="#" class="operation" data-toggle="tooltip" data-placement="bottom" title="建立关联"><span class="glyphicon glyphicon-paperclip" aria-hidden="true"></span></a>--%>
                <%--</td>--%>
            <%--</tr>--%>
            <%--<tr>--%>
                <%--<td>字段1</td>--%>
                <%--<td><a href="#">字段2</a></td>--%>
                <%--<td>字段3</td>--%>
                <%--<td class="operation-box">--%>
                    <%--<a href="#" class="operation" data-toggle="tooltip" data-placement="bottom" title="更新"><span class="glyphicon glyphicon-refresh" aria-hidden="true"></span></a>--%>
                    <%--<a href="#" class="operation" data-toggle="tooltip" data-placement="bottom" title="删除"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></a>--%>
                    <%--<a href="#" class="operation" data-toggle="tooltip" data-placement="bottom" title="建立关联"><span class="glyphicon glyphicon-paperclip" aria-hidden="true"></span></a>--%>
                <%--</td>--%>
            <%--</tr>--%>
            <%--<tr>--%>
                <%--<td>字段1</td>--%>
                <%--<td><a href="#">字段2</a></td>--%>
                <%--<td>字段3</td>--%>
                <%--<td class="operation-box">--%>
                    <%--<a href="#" class="operation" data-toggle="tooltip" data-placement="bottom" title="更新"><span class="glyphicon glyphicon-refresh" aria-hidden="true"></span></a>--%>
                    <%--<a href="#" class="operation" data-toggle="tooltip" data-placement="bottom" title="删除"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></a>--%>
                    <%--<a href="#" class="operation" data-toggle="tooltip" data-placement="bottom" title="建立关联"><span class="glyphicon glyphicon-paperclip" aria-hidden="true"></span></a>--%>
                <%--</td>--%>
            <%--</tr>--%>
            <%--<tr>--%>
                <%--<td>字段1</td>--%>
                <%--<td><a href="#">字段2</a></td>--%>
                <%--<td>字段3</td>--%>
                <%--<td class="operation-box">--%>
                    <%--<a href="#" class="operation" data-toggle="tooltip" data-placement="bottom" title="更新"><span class="glyphicon glyphicon-refresh" aria-hidden="true"></span></a>--%>
                    <%--<a href="#" class="operation" data-toggle="tooltip" data-placement="bottom" title="删除"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></a>--%>
                    <%--<a href="#" class="operation" data-toggle="tooltip" data-placement="bottom" title="建立关联"><span class="glyphicon glyphicon-paperclip" aria-hidden="true"></span></a>--%>
                <%--</td>--%>
            <%--</tr>--%>
        </table>
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
