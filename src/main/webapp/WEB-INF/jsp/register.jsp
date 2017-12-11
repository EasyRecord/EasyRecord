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
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="bootstrap/css/bootstrap-theme.min.css"/>
    <link rel="stylesheet" href="css/index.css"/>
    <link rel="stylesheet" href="css/login.css"/>
    <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="bootstrap/js/jquery-1.12.0.min.js"></script>
</head>
<body>
<div class="container">
    <div class="header clearfix">
        <nav>
            <ul class="nav nav-pills pull-right">
                <li role="presentation"><a href="Help.action"><span class="glyphicon glyphicon-globe" aria-hidden="true"></span> 指南</a></li>
            </ul>
            <h3 class="text-muted">EasyRecord</h3>
        </nav>
    </div>
    <hr/>

    <div class="row">

        <div class="col-sm-4 title">
            <h3 class="icon-title"><span>E</span>asy<span>R</span>ecord</h3>
            <br/>
            <h3>个人数据采集</h3>
            <h4><small>Create your own personal records.</small></h4>
        </div>

<%--<<<<<<< HEAD--%>
        <%--<form class="form-horizontal" method="post" action="Register.action">--%>
            <%--<div class="form-group">--%>
                <%--<label for="username" class="col-sm-2 control-label">用户名</label>--%>
                <%--<div class="col-sm-9">--%>
                    <%--<input type="text" class="form-control" id="username" placeholder="用户名" name="username" onblur="checkUserName()">--%>
                    <%--<div id="namespan"></div>--%>

                <%--</div>--%>
            <%--</div>--%>

            <%--<div class="form-group">--%>
                <%--<label for="password" class="col-sm-2 control-label">密码</label>--%>
                <%--<div class="col-sm-9">--%>
                    <%--<input type="password" class="form-control" id="password" placeholder="密码" name="passwd" onblur="checkPassWord()">--%>
                    <%--<div id="pwspan"></div>--%>

                <%--</div>--%>
            <%--</div>--%>
            <%--&lt;%&ndash;<div class="form-group">&ndash;%&gt;--%>
            <%--&lt;%&ndash;<label for="password-repeat" class="col-sm-2 control-label">重复密码</label>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<div class="col-sm-9">&ndash;%&gt;--%>
            <%--&lt;%&ndash;<input type="password" class="form-control" id="password-repeat" placeholder="重复密码" name="passwdRepeat">&ndash;%&gt;--%>
            <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
            <%--&lt;%&ndash;</div>&ndash;%&gt;--%>

            <%--<div class="form-group">--%>
                <%--<div class="col-sm-offset-2 col-sm-4">--%>
                    <%--<button type="submit" class="btn btn-info login">注册</button>--%>
                <%--</div>--%>
                <%--<p class="col-sm-5 forget"><a href="ReadyToLogin.action" class="pull-right">已有账号？直接登陆>></a></p>--%>
                <%--&lt;%&ndash; 此处已有账号时是否应该跳转到登录页面 &ndash;%&gt;--%>
<%--=======--%>
        <div class="col-sm-8">

            <div class="form-title">
                <h2>注    册</h2>
                <p>
            </div>

            <div class="main-form">

                <form class="form-horizontal" method="post" action="Register.action">
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
                        <p class="col-sm-5 forget"><a href="ReadyToLogin.action" class="pull-right">已有账号？直接登陆>></a></p>
                        <%-- 此处已有账号时是否应该跳转到登录页面 --%>
                    </div>
                </form>
<%-->>>>>>> origin/zhaoyang--%>
            </div>


        </div>

    </div>



    <footer class="footer" id="footer">
        <hr/>
        <p id="pp">&copy; 2017 EasyRecord</p>
    </footer>
</div>

<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="bootstrap/js/jquery-1.12.0.min.js"></script>
<script>
    function checkUserName(){
//        alert(document.getElementById("username").value);

        var request = new XMLHttpRequest();
        request.open("POST", "GetAllUserNames.action");
        var data = "";
        var flag_username_used=false;
        request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        request.send(data);
        request.onreadystatechange = function () {
            if(request.readyState === 4){
                if(request.status === 200){
                    var result = JSON.parse(request.responseText);
                    for(var i = 0; i < result.usernames.length; i ++){
                        //alert(result.pdoHeader[i]);
//                        html+=
//                        alert(result.usernames[i]);
                        if(document.getElementById("username").value===result.usernames[i]){
                            flag_username_used=true;
                        }
                    }

                }else{
                    alert("发生错误！" + request.status);
                }
            }
//            alert(flag_username_used);
            if(document.getElementById("username").value==null
                || document.getElementById("username").value==undefined
                || document.getElementById("username").value==""){
                document.getElementById("namespan").innerHTML="用户名不能为空";
                document.getElementById("namespan").style.color="Red";
                document.getElementById("namespan").style.fontSize="90%";
                document.getElementById("namespan").style.fontWeight="bold";
                return false;
            }else if(flag_username_used){
                document.getElementById("namespan").innerHTML="用户名已存在";
                document.getElementById("namespan").style.color="Red";
                document.getElementById("namespan").style.fontSize="90%";
                document.getElementById("namespan").style.fontWeight="bold";
                return false;
            }
            else{
                document.getElementById("namespan").innerHTML="通过";
                document.getElementById("namespan").style.color="Green";
                document.getElementById("namespan").style.fontSize="90%";
                document.getElementById("namespan").style.fontWeight="bold";
                return true;
            }
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