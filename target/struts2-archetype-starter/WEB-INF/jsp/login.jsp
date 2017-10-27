<%--
  Created by IntelliJ IDEA.
  User: qiusuo
  Date: 2017/10/22
  Time: 18:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<html>--%>
<%--<head>--%>
    <%--<title>Login</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<h1>这是登陆页面</h1>--%>
<%--<form action="Login.action" method="post">--%>
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
    <%--<button class="btn btn-primary btn-block" type="submit">Login</button>--%>
<%--</form>--%>
<%--<a href="ReadyToRegister.action">注册</a>--%>
<%--</body>--%>
<%--</html>--%>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <title>登录</title>
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
                <!--<li role="presentation" class="active"><a href="#">Home</a></li>-->
                <%--<li role="presentation"><a href="#"><span class="glyphicon glyphicon-share-alt" aria-hidden="true"></span> 返回</a></li>--%>
            </ul>
            <h3 class="text-muted">EasyRecord</h3>
        </nav>
    </div>
    <hr/>

    <div class="form-title">
        <h2>登    录</h2>
        <p>
    </div>

    <div class="main-form">

        <form class="form-horizontal" method="post" action="Login.action">
            <div class="form-group">
                <label for="username" class="col-sm-2 control-label">用户名</label>
                <div class="col-sm-9">
                    <input type="text" class="form-control" id="username" placeholder="用户名" name="username" onblur="checkUserName()">
                    <span id="namespan"></span>
                </div>
            </div>

            <div class="form-group">
                <label for="password" class="col-sm-2 control-label">密码</label>
                <div class="col-sm-9">
                    <input type="password" class="form-control" id="password" placeholder="密码" name="passwd" onblur="checkPassWord()">
                    <span id="pwspan"></span>
                </div>

            </div>

            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-3">
                    <div class="checkbox">
                        <label>
                            <input type="checkbox"> 记住密码
                        </label>
                    </div>
                </div>
                <p class="col-sm-6 forget"><a href="#" class="pull-right">忘记密码</a></p>
            </div>

            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-4">
                    <button type="submit" class="btn btn-info login">登录</button>
                </div>
                <div class="col-sm-offset-1 col-sm-4">
                    <a href="ReadyToRegister.action" type="button" class="btn btn-default login">注册</a>
                </div>
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
<script>
    function checkUserName(){
        if(document.getElementById("username").value==null
            || document.getElementById("username").value==undefined
            || document.getElementById("username").value==""){
            document.getElementById("namespan").innerHTML="用户名不能为空";
            document.getElementById("namespan").style.color="Red";
            document.getElementById("namespan").style.fontSize="90%";
            document.getElementById("namespan").style.fontWeight="bold";
            return false;
        }else{
            document.getElementById("namespan").innerHTML="通过";
            document.getElementById("namespan").style.color="Green";
            document.getElementById("namespan").style.fontSize="90%";
            document.getElementById("namespan").style.fontWeight="bold";
            return true;
        }
    }
    function checkPassWord(){
        if(document.getElementById("password").value==null
            || document.getElementById("password").value==undefined
            || document.getElementById("password").value==""){
            document.getElementById("pwspan").innerHTML="密码不能为空";
            document.getElementById("pwspan").style.color="Red";
            document.getElementById("pwspan").style.fontSize="90%";
            document.getElementById("pwspan").style.fontWeight="bold";
            return false;
        }else{
            document.getElementById("pwspan").innerHTML="通过";
            document.getElementById("pwspan").style.color="Green";
            document.getElementById("pwspan").style.fontSize="90%";
            document.getElementById("pwspan").style.fontWeight="bold";
            return true;
        }
    }
</script>
</body>
</html>
