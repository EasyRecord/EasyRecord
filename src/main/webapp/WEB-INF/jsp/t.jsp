<%@ page import="java.util.Vector" %><%--
  Created by IntelliJ IDEA.
  User: qiusuo
  Date: 2017/10/17
  Time: 14:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<% Vector<String >ve=new Vector<String >(); %>

<form action="test.action">
    <input name="ve[0]">
    <button type="submit"></button>
</form>
   </body>
</html>


//deprecated