<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: qiusuo
  Date: 2017/10/19
  Time: 18:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
欢迎页面
<a href="GoToGeneratePdo.action">新建PDO</a>
<a href="GoToInsertRecord.action">新建记录</a>
<a href="GoToSearch.action">搜索</a>
<a href="GoToImport.action">导入</a>
<s:debug></s:debug>
<% out.print(session.getAttribute("user"));%>
</body>
</html>
