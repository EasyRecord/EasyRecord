<%--
  Created by IntelliJ IDEA.
  User: qiusuo
  Date: 2017/10/22
  Time: 19:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<html>--%>
<%--<head>--%>
    <%--<title>Register</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<h1>这是注册页面</h1>--%>
<%--<form action="Register.action" method="post">--%>
    <%--<div class="form-group">--%>
        <%--<label for="username">UserName</label>--%>
        <%--<input class="form-control" id="username" name="username" type="text" placeholder="Username">--%>
    <%--</div>--%>
    <%--<div class="form-group">--%>
        <%--<label for="passwd">Password</label>--%>
        <%--<input class="form-control" id="passwd" name="passwd" type="password" placeholder="Password">--%>
    <%--</div>--%>
    <%--<!--<div class="form-group">-->--%>
    <%--<!--<div class="form-check">-->--%>
    <%--<!--<label class="form-check-label">-->--%>
    <%--<!--<input class="form-check-input" type="checkbox"> Remember Password</label>-->--%>
    <%--<!--</div>-->--%>
    <%--<!--</div>-->--%>
    <%--<!--<a class="btn btn-primary btn-block" href="index.jsp">Login</a>-->--%>
    <%--<button class="btn btn-primary btn-block" type="submit">Register</button>--%>

<%--</form>--%>
<%--</body>--%>
<%--</html>--%>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <title>注册</title>
    <link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="../bootstrap/css/bootstrap-theme.min.css"/>
    <link rel="stylesheet" href="../css/index.css"/>
    <link rel="stylesheet" href="../css/login.css"/>
    <script type="text/javascript" src="../bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="../bootstrap/js/jquery-1.12.0.min.js"></script>
</head>
<body>
<div class="container">
    <div class="header clearfix">
        <nav>
            <ul class="nav nav-pills pull-right">

            </ul>
            <h3 class="text-muted">EasyRecord</h3>
        </nav>
    </div>
    <hr/>

    <div class="form-title">
        <h2>注    册</h2>
        <p>
    </div>

    <div class="main-form">

        <form class="form-horizontal" method="post" action="Register.action">
            <div class="form-group">
                <label for="username" class="col-sm-2 control-label">用户名</label>
                <div class="col-sm-9">
                    <input type="text" class="form-control" id="username" placeholder="用户名" name="username">
                </div>
            </div>

            <div class="form-group">
                <label for="password" class="col-sm-2 control-label">密码</label>
                <div class="col-sm-9">
                    <input type="password" class="form-control" id="password" placeholder="密码" name="passwd">
                </div>
            </div>
            <%--<div class="form-group">--%>
                <%--<label for="password-repeat" class="col-sm-2 control-label">重复密码</label>--%>
                <%--<div class="col-sm-9">--%>
                    <%--<input type="password" class="form-control" id="password-repeat" placeholder="重复密码" name="passwdRepeat">--%>
                <%--</div>--%>
            <%--</div>--%>

            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-4">
                    <button type="submit" class="btn btn-info login">注册</button>
                </div>
                <p class="col-sm-5 forget"><a href="login.jsp" class="pull-right">已有账号？直接登陆>></a></p>
                <%-- 此处已有账号时是否应该跳转到登录页面 --%>
            </div>
        </form>
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