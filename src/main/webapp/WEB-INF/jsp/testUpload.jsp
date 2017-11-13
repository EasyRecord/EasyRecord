<%--
  Created by IntelliJ IDEA.
  User: qiusuo
  Date: 2017/11/10
  Time: 9:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/struts-tags" prefix="s"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<s:form action="uploads.action" method="post" enctype="multipart/form-data">
    <s:file name="uploadImage" label="选择上传的文件" />
    <s:submit value="上传" />
</s:form>
</body>
</html>
