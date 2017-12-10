<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: qiusuo
  Date: 2017/10/19
  Time: 18:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<html>--%>
<%--<head>--%>
<%--<<<<<<< HEAD--%>
<%--<title>Title</title>--%>
<%--=======--%>
<%--&lt;%&ndash;<title>Title</title>&ndash;%&gt;--%>
<%-->>>>>>> origin/zhaoyang--%>
<%--&lt;%&ndash;</head>&ndash;%&gt;--%>
<%--<body>--%>
<%--<s:debug></s:debug>--%>
<%--导入--%>
<%--</body>--%>
<%--</html>--%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <title>导入文件</title>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="bootstrap/css/bootstrap-theme.min.css"/>
    <link rel="stylesheet" href="css/index.css"/>
    <link rel="stylesheet" href="css/search.css"/>
    <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="bootstrap/js/jquery-1.12.0.min.js"></script>
</head>
<body>
<s:debug>

</s:debug>
<div class="container">
    <div class="header clearfix">
        <nav>
            <ul class="nav nav-pills pull-right">

                <li role="presentation"><a href="GoToGeneratePdo.action">新建</a></li>
                <li role="presentation"><a href="GoToInsertRecord.action">添加</a></li>
                <li role="presentation"><a href="GoToSearch.action">查询</a></li>
                <li role="presentation" class="active"><a href="GoToImport.action">导入</a></li>
                <%-- 跳转到index.jsp页面 --%>
                <li role="presentation"><a href="BackToIndex.action"><span class="glyphicon glyphicon-share-alt"
                                                                           aria-hidden="true"></span> 返回</a></li>
                <li role="presentation"><a href="Logout.action"><span class="glyphicon glyphicon-log-out"
                                                                      aria-hidden="true"></span> 登出</a></li>
                <% if (session.getAttribute("user") == null) response.sendRedirect("Logout.action");%>
            </ul>
            <h3 class="text-muted">EasyRecord</h3>
        </nav>
    </div>
    <hr/>

    <div>
        <h2>导入文件</h2>
        <h4>
            <small>Import files</small>
        </h4>
        <!--<p>
        <a class="btn btn-lg btn-primary" href="../../components/#navbar" role="button">View navbar docs &raquo;</a>
        </p>-->
    </div>

    <div class="main-form" id="myTab">

        <div class="tab-content">

            <div role="tabpanel" class="tab-pane active importform">
                <s:form class="search-form" action="Import.action" method="post" enctype="multipart/form-data" onsubmit="return checkName()">
                    <s:file class="import-box" name="uploadImage" id="upload"/>
                    <s:submit class="btn btn-info" value="上传" />
                </s:form>

                <%--<input type="hidden" id="pdoNames" value='<s:property value="pdoNames"/>'/>--%>
                <%--<form class="search-form" method="post" action="Import.action">--%>
                <%--<div class="form-group">--%>
                <%--&lt;%&ndash;<<<<<<< HEAD&ndash;%&gt;--%>
                <%--<label for="uploadImage" class="import-box">上传的文件</label>--%>
                <%--<input type="file" id="uploadImage" name="uploadImage" class="import-box">--%>
                <%--&lt;%&ndash;=======&ndash;%&gt;--%>
                <%--&lt;%&ndash;<label for="exampleInputFile" class="import-box">上传的文件</label>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<input type="file" id="exampleInputFile" class="import-box">&ndash;%&gt;--%>
                <%--&lt;%&ndash;>>>>>>> origin/zhaoyang&ndash;%&gt;--%>
                <%--<p class="help-block">请选择excel表格进行上传（.xls文件）</p>--%>
                <%--</div>--%>
                <%--<!-- <div class="form-group">--%>
                <%--<div class="col-sm-2 choosePDO">--%>
                <%--<button type="submit" class="btn btn-info">提交</button>--%>
                <%--</div>--%>
                <%--</div> -->--%>
                <%--&lt;%&ndash;<<<<<<< HEAD&ndash;%&gt;--%>
                <%--<button type="submit" class="btn btn-info">上传</input>--%>
                <%--&lt;%&ndash;=======&ndash;%&gt;--%>
                <%--&lt;%&ndash;<button type="submit choosePDO" class="btn btn-info">上传</button>&ndash;%&gt;--%>
                <%--&lt;%&ndash;>>>>>>> origin/zhaoyang&ndash;%&gt;--%>
                <%--</form>--%>
            </div>
        </div>


    </div>


    <footer class="footer" id="footer">
        <hr/>
        <p id="pp">&copy; 2017 EasyRecord</p>
    </footer>
</div>
<%--<script>--%>

<script>
    function checkName() {
//        return false;
        var obj = document.getElementById("upload");
//        alert(obj.value);
        if(obj.value =="") {
            alert("请先选择Excel文件！");
            return false;
        }
//        var len = obj.files.length;
//        var fileName = obj.files[0].name;
//        alert(fileName);
        //fileName=fileName.split('.').slice(0,-1).join('.');
        //if(len === 0 || fileName === "") return false;
        //else return true;
        return true;
    }
</script>
<%--function checkName() {--%>
<%--var obj = document.getElementById("upload");--%>
<%--//        var len = obj.files.length;--%>
<%--var fileName = obj.files[0].name;--%>
<%--fileName=fileName.split('.').slice(0,-1).join('.');--%>
<%--alert(fileName);--%>
<%--//        alert(document.getElementById("pdoNames").value);--%>
<%--var pdoNames=document.getElementById("pdoNames").value.slice(1,-1);--%>
<%--//        alert(pdoNames);--%>
<%--pdoNames=pdoNames.split(',');--%>
<%--//        alert(pdoNames);--%>
<%--//        alert(pdoNames.length);--%>
<%--//        alert(pdoNames[0]);--%>

<%--var flag=false;--%>
<%--for(var i=0;i<pdoNames.length;i++){--%>
<%--if(fileName==pdoNames[i])--%>
<%--flag=true;--%>
<%--}--%>
<%--if(false==true){--%>
<%--alert("非法")；--%>
<%--document.getElementById("filespan").innerHTML="文件名与已存在的pdo名称冲突";--%>
<%--document.getElementById("filespan").style.color="Red";--%>
<%--document.getElementById("filespan").style.fontSize="90%";--%>
<%--document.getElementById("filespan").style.fontWeight="bold";--%>
<%--return false;--%>
<%--}--%>
<%--return false;--%>



<%--//        if( document.getElementById("password").value==null--%>
<%--//            || document.getElementById("password").value==undefined--%>
<%--//            || document.getElementById("password").value==""){--%>
<%--//            document.getElementById("pwspan").innerHTML="密码不能为空";--%>
<%--//            document.getElementById("pwspan").style.color="Red";--%>
<%--//            document.getElementById("pwspan").style.fontSize="90%";--%>
<%--//            document.getElementById("pwspan").style.fontWeight="bold";--%>
<%--//            return false;--%>
<%--//        }else{--%>
<%--//            document.getElementById("pwspan").innerHTML="通过";--%>
<%--//            document.getElementById("pwspan").style.color="Green";--%>
<%--//            document.getElementById("pwspan").style.fontSize="90%";--%>
<%--//            document.getElementById("pwspan").style.fontWeight="bold";--%>
<%--//            return true;--%>
<%--//        }--%>
<%--}--%>
<%--</script>--%>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="bootstrap/js/jquery-1.12.0.min.js"></script>
</body>
</html>