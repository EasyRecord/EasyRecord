<%--
  Created by IntelliJ IDEA.
  User: qiusuo
  Date: 2017/10/22
  Time: 19:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register</title>
</head>
<body>
<h1>这是注册页面</h1>
<form action="Register.action" method="post">
    <div class="form-group">
        <label for="username">UserName</label>
        <input class="form-control" id="username" name="username" type="text" placeholder="Username">
    </div>
    <div class="form-group">
        <label for="passwd">Password</label>
        <input class="form-control" id="passwd" name="passwd" type="password" placeholder="Password">
    </div>
    <!--<div class="form-group">-->
    <!--<div class="form-check">-->
    <!--<label class="form-check-label">-->
    <!--<input class="form-check-input" type="checkbox"> Remember Password</label>-->
    <!--</div>-->
    <!--</div>-->
    <!--<a class="btn btn-primary btn-block" href="index.jsp">Login</a>-->
    <button class="btn btn-primary btn-block" type="submit">Register</button>

</form>
</body>
</html>
