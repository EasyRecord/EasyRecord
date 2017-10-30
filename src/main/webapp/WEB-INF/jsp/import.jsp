<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: qiusuo
  Date: 2017/10/19
  Time: 18:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<html>--%>
<%--<head>--%>
    <%--<title>Title</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<s:debug></s:debug>--%>
<%--导入--%>
<%--</body>--%>
<%--</html>--%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <title>导入文件</title>
    <link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="../bootstrap/css/bootstrap-theme.min.css"/>
    <link rel="stylesheet" href="../css/index.css"/>
    <link rel="stylesheet" href="../css/search.css"/>
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
                <li role="presentation"><a href="GoToSearch.action">查询</a></li>
                <li role="presentation" class="active"><a href="GoToImport.action">导入</a></li>
                <%-- 跳转到index.jsp页面 --%>
                <li role="presentation"><a href="index.jsp"><span class="glyphicon glyphicon-share-alt" aria-hidden="true"></span> 返回</a></li>
                <li role="presentation"><a href="Logout.action"><span class="glyphicon glyphicon-log-out" aria-hidden="true"></span> 登出</a></li>
                <% if(session.getAttribute("user")==null) response.sendRedirect("Logout.action");%>
            </ul>
            <h3 class="text-muted">EasyRecord</h3>
        </nav>
    </div>
    <hr/>

    <div>
        <h2>导入文件</h2>
        <h4><small>Import files</small></h4>
        <!--<p>
        <a class="btn btn-lg btn-primary" href="../../components/#navbar" role="button">View navbar docs &raquo;</a>
        </p>-->
    </div>

    <div class="main-form" id="myTab">

        <div class="tab-content">

            <div role="tabpanel" class="tab-pane active importform">
                <form class="search-form" method="post" action="Import.action">
                    <div class="form-group">
                        <label for="exampleInputFile">上传的文件</label>
                        <input type="file" id="exampleInputFile">
                        <p class="help-block">请选择excel表格进行上传（.xls文件）</p>
                    </div>
                    <!-- <div class="form-group">
                        <div class="col-sm-2 choosePDO">
                            <button type="submit" class="btn btn-info">提交</button>
                        </div>
                    </div> -->
                    <button type="submit choosePDO" class="btn btn-info">提交</button>
                </form>
            </div>
        </div>



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
