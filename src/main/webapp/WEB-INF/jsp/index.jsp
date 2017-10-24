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
    <link rel="stylesheet" href="bootstrap/css/bootstrap-theme.css"/>
    <link rel="stylesheet" href="css/index.css"/>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="bootstrap/js/jquery-1.12.0.min.js"></script>
</head>
<body>
<%--<a href="index.jsp">测试</a>--%>
<% if(session.getAttribute("user")==null) response.sendRedirect("Logout.action");%>
<div class="container">
    <!-- navigation bar -->
    <div class="header clearfix">
        <nav>
            <ul class="nav nav-pills pull-right">
                <!--<li role="presentation" class="active"><a href="#">Home</a></li>-->

                <%--<li role="presentation"><a href="Login.action">登录</a></li>--%>
                <%--<li role="presentation"><a href="Register.action">注册</a></li>--%>


                <% out.print(session.getAttribute("user"));%>
                <li role="presentation"><a href="Logout.action">登出</a></li>
                <% if(session.getAttribute("user")==null) response.sendRedirect("Logout.action");%>
            </ul>
            <h3 class="text-muted">EasyRecord</h3>
        </nav>
    </div>
    <hr/>


    <div class="jumbotron">
        <h2>个人信息采集</h2>
        <p>Create your own personal records.</p>
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
            <p>Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna.</p>

            <p><a class="btn btn-default" href="GoToGeneratePdo.action" role="button">View details &raquo;</a></p>
        </div>


        <div class="col-lg-6">
            <div class="div-circle">
                <h1> <span class="glyphicon glyphicon-edit" aria-hidden="true"></span> </h1>
            </div>
            <h2>添加PDO记录</h2>
            <p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sit amet fermentum. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh.</p>

            <p><a class="btn btn-default" href="GoToInsertRecord.action" role="button">View details &raquo;</a></p>
        </div>


        <div class="col-lg-6">
            <div class="div-circle">
                <h1> <span class="glyphicon glyphicon-search" aria-hidden="true"></span> </h1>
            </div>
            <h2>查找PDO记录</h2>
            <p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>

            <p><a class="btn btn-default" href="GoToSearch.action" role="button">View details &raquo;</a></p>
        </div>


        <div class="col-lg-6">
            <div class="div-circle">
                <h1> <span class="glyphicon glyphicon-open" aria-hidden="true"></span> </h1>
            </div>
            <h2>文件导入</h2>
            <p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>

            <p><a class="btn btn-default" href="GoToImport.action" role="button">View details &raquo;</a></p>
        </div>
    </div><!-- /.row -->

    <footer class="footer">
        <hr/>
        <p>&copy; 2017 EasyRecord</p>
    </footer>
</div>

<script src="bootstrap/js/bootstrap.min.js"></script>
<script src="bootstrap/js/jquery-1.12.0.min.js"></script>
</body>
</html>
