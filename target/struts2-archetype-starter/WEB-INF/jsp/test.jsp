<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: qiusuo
  Date: 2017/10/28
  Time: 20:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<s:debug></s:debug>
<%--<form action="SearchAll.action">--%>
    <%--<input name="keyWord">--%>
    <%--<button type="submit">提交</button>--%>
<%--</form>--%>
<% int i=0;

%>
<%--<s:iterator value="a" var="ae">--%>
    <%--<s:property value="a[%{'#b['}]"></s:property>--%>
<%--</s:iterator>--%>
<%--<s:iterator value="b" var="i">--%>
    <%--<s:property value="a[0][0]"></s:property>--%>

<%--</s:iterator>--%>
<s:iterator value="b" var="be">
    <s:property value="#be"></s:property>
    <s:property value="a[0][#be]"></s:property>
</s:iterator>
</body>
</html>
