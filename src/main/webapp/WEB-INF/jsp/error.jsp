<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: ZhaoYang
  Date: 2017/11/14
  Time: 1:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <title>Not Found</title>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="bootstrap/css/bootstrap-theme.min.css"/>
    <link rel="stylesheet" href="css/index.css"/>
    <link rel="stylesheet" href="css/createPdo.css"/>
    <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="bootstrap/js/jquery-1.12.0.min.js"></script>
</head>
<body>
<div class="container">
    <div class="header clearfix">
        <!-- <nav>
            <ul class="nav nav-pills pull-right">
                <li role="presentation" class="active"><a href="#">新建</a></li>
                <li role="presentation"><a href="#">添加</a></li>
                <li role="presentation"><a href="#">查询</a></li>
                <li role="presentation"><a href="#">上传</a></li>
                <li role="presentation"><a href="#"><span class="glyphicon glyphicon-share-alt" aria-hidden="true"></span> 返回</a></li>
            </ul> -->
        <h3 class="text-muted">EasyRecord</h3>
        </nav>
    </div>
    <hr/>


    <div class="success-mes">
        <h1><span class="glyphicon glyphicon-remove icon-error" aria-hidden="true"></span> 404 ERROR: 您访问的页面不存在</h1>
        <h3 class="mes"><small>The page you are looking for is not available.</small></h3>
        <div class="link-box">
            <a href="#" class="morelink"><span class="glyphicon glyphicon-share-alt" aria-hidden="true"></span> 返回首页</a>
            <a href="#" class="morelink"><span class="glyphicon glyphicon-log-out" aria-hidden="true"></span> 登出</a>
        </div>
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