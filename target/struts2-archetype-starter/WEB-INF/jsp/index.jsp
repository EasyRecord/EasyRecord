<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: qiusuo
  Date: 2017/10/19
  Time: 18:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%-- <html>
<head>
    <title>Title</title>
</head>
<body>
<h1>欢迎页面</h1>
<a href="GoToGeneratePdo.action">新建PDO</a>
<a href="GoToInsertRecord.action">新建记录</a>
<a href="GoToSearch.action">搜索</a>
<a href="GoToImport.action">导入</a>
<s:debug></s:debug>
<% out.print(session.getAttribute("user"));%>
<a href="Logout.action">登出</a>
</body>
</html> --%>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <title>个人信息采集</title>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="bootstrap/css/bootstrap-theme.min.css"/>
    <link rel="stylesheet" href="css/index.css"/>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="bootstrap/js/jquery-1.12.0.min.js"></script>
</head>
<body>
<%--<a href="index.jsp">测试</a>--%>
<%--<% if(session.getAttribute("user")==null) response.sendRedirect("Logout.action");%>--%>
<div class="container">
    <!-- navigation bar -->
    <div class="header clearfix">
        <nav>
            <ul class="nav nav-pills pull-right">
<%--<<<<<<< HEAD--%>
                <%--&lt;%&ndash;<li role="presentation"><a href="GoToGeneratePdo.action">新建</a></li>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<li role="presentation"><a href="GoToInsertRecord.action">添加</a></li>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<li role="presentation"><a href="GoToSearch.action">查询</a></li>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<li role="presentation"><a href="GoToImport.action">导入</a></li>&ndash;%&gt;--%>
<%--=======--%>
                <%--<li role="presentation"><a href="GoToGeneratePdo.action">新建</a></li>--%>
                <%--<li role="presentation"><a href="GoToInsertRecord.action">添加</a></li>--%>
                <%--<li role="presentation"><a href="GoToSearch.action">查询</a></li>--%>
                <%--<li role="presentation"><a href="GoToImport.action">导入</a></li>--%>
<%-->>>>>>> origin/zhaoyang--%>

                <%--<% out.print(session.getAttribute("user"));%>--%>
                <li role="presentation"><a href="Logout.action"><span class="glyphicon glyphicon-log-out" aria-hidden="true"></span> 登出</a></li>
                <% if(session.getAttribute("user")==null) response.sendRedirect("Logout.action");%>
            </ul>
            <h3 class="text-muted">EasyRecord</h3>
        </nav>
    </div>
    <hr/>


    <div class="jumbotron">
        <h2>个人信息采集</h2>
        <p>Create your own personal records.</p>
        <br/>
        <form class="form-horizontal search-form" method="post" action="SearchAll.action">
            <div class="form-group">
                <div class="col-sm-5 col-sm-offset-3">
                    <input type="text" class="form-control" placeholder="请输入要搜索的内容" name="keyWord">
                </div>
                <div class="col-sm-1">
                    <button type="submit" class="btn btn-info" id="search"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></button>
                </div>
            </div>
        </form>
        <!--<p>
        <a class="btn btn-lg btn-primary" href="../../components/#navbar" role="button">View navbar docs &raquo;</a>
        </p>-->
    </div>

    <!-- Four columns of text below -->
    <div class="row">
        <div class="col-lg-6">
            <div class="div-circle">
                <h1> <span class="glyphicon glyphicon-plus" aria-hidden="true"></span> </h1>
            </div>
            <h2>创建PDO模型</h2>
            <p>Create PDO model</p>

            <p><a class="btn btn-default" href="GoToGeneratePdo.action" role="button">View details &raquo;</a></p>
        </div>


        <div class="col-lg-6">
            <div class="div-circle">
                <h1> <span class="glyphicon glyphicon-edit" aria-hidden="true"></span> </h1>
            </div>
            <h2>添加PDO记录</h2>
            <p>Add PDO record</p>

            <p><a class="btn btn-default" href="GoToInsertRecord.action" role="button">View details &raquo;</a></p>
        </div>


        <div class="col-lg-6">
            <div class="div-circle">
                <h1> <span class="glyphicon glyphicon-search" aria-hidden="true"></span> </h1>
            </div>
            <h2>查找PDO记录</h2>
            <p>search PDO records</p>

            <p><a class="btn btn-default" href="GoToSearch.action" role="button">View details &raquo;</a></p>
        </div>


        <div class="col-lg-6">
            <div class="div-circle">
                <h1> <span class="glyphicon glyphicon-open" aria-hidden="true"></span> </h1>
            </div>
            <h2>文件导入</h2>
            <p>Upload files</p>

            <p><a class="btn btn-default" href="GoToImport.action" role="button">View details &raquo;</a></p>
        </div>
    </div><!-- /.row -->

    <footer class="footer">
        <hr/>
        <p>&copy; 2017 EasyRecord</p>
    </footer>
</div>

<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="bootstrap/js/jquery-1.12.0.min.js"></script>
</body>
</html>