<%@ page import="java.util.Vector" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: qiusuo
  Date: 2017/10/19
  Time: 18:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<html>--%>
<%--<head>--%>
<%--<title>Title</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<s:debug></s:debug>--%>
<%--搜索--%>
<%--</body>--%>
<%--</html>--%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <title>查找PDO记录</title>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="bootstrap/css/bootstrap-theme.min.css"/>
    <link rel="stylesheet" href="css/index.css"/>
    <link rel="stylesheet" href="css/search.css"/>
    <link rel="stylesheet" type="text/css" href="css/flatpickr.min.css">
    <script type="text/javascript" src="bootstrap/js/jquery-1.12.0.min.js"></script>
    <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
    <script src="js/flatpickr.js"></script>
    <script type="text/javascript">
        $(document).ready(function(){
            $("#tosearchByAttr").click(function(){
                $(this).attr("class", "second-menu active");
                $("#searchByAttr").attr("class", "tab-pane active");
                $("#searchByPDO").attr("class", "tab-pane");
                $("#tosearchByPDO").attr("class","second-menu");
            });
            $("#tosearchByPDO").click(function(){
                $(this).attr("class", "second-menu active");
                $("#searchByPDO").attr("class", "tab-pane active");
                $("#searchByAttr").attr("class", "tab-pane");
                $("#tosearchByAttr").attr("class","second-menu");
            });
        })
    </script>
</head>
<body>
<%
    Vector<String> property=(Vector<String>)request.getAttribute("property");
    Vector<String> filter=(Vector<String>)request.getAttribute("filter"); %>

<div class="container">
    <div class="header clearfix">
        <nav>
            <ul class="nav nav-pills pull-right">
                <li role="presentation"><a href="GoToGeneratePdo.action">新建</a></li>
                <li role="presentation"><a href="GoToInsertRecord.action">添加</a></li>
                <li role="presentation" class="active"><a href="GoToSearch.action">查询</a></li>
                <li role="presentation"><a href="GoToImport.action">导入</a></li>
                <%-- 跳转到index.jsp页面 --%>
                <li role="presentation"><a href="BackToIndex.action"><span class="glyphicon glyphicon-share-alt" aria-hidden="true"></span> 返回</a></li>
                <li role="presentation"><a href="Logout.action"><span class="glyphicon glyphicon-log-out" aria-hidden="true"></span> 登出</a></li>
                <% if(session.getAttribute("user")==null) response.sendRedirect("Logout.action");%>
            </ul>
            <h3 class="text-muted">EasyRecord</h3>
        </nav>
    </div>
    <hr/>

    <div>
        <%--<ul class="nav nav-pills pull-right">--%>
        <%--<li role="presentation" class="second-menu active" id="tosearchByPDO"><a href="#">按PDO搜索</a></li>--%>
        <%--<li role="presentation" class="second-menu" id="tosearchByAttr"><a href="#">按字段搜索</a></li>--%>
        <%--</ul>--%>
        <h2>查询PDO记录</h2>
        <h4><small>search PDO records</small></h4>
        <!--<p>
        <a class="btn btn-lg btn-primary" href="../../components/#navbar" role="button">View navbar docs &raquo;</a>
        </p>-->
    </div>

    <div class="main-form" id="myTab">

        <div class="tab-content">
            <!-- 按PDO搜索 -->
            <div role="tabpanel" class="tab-pane active" id="searchByPDO">
                <form class="form-horizontal" method="post" action="GetPdoHeader.action">
                    <div class="form-group">
                        <label for="pdoName-pdo" class="col-sm-2 control-label">PDO名</label>
                        <div class="col-sm-3">
                            <select class="form-control" name="pdoName" id="pdoName-pdo">
                                <s:iterator value="pdoNames" status="li">
                                    <s:if test="#li != null">
                                        <option value="<s:property />"><s:property /></option>
                                    </s:if>
                                </s:iterator>
                            </select>
                        </div>
                        <div class="col-sm-2 choosePDO">
                            <button type="button" class="btn btn-info" id="getPropertys">提交</button>
                        </div>
                    </div>
                </form>
                <hr class="center-hr" />

                <div class="notes" id="notes">
                    <h4><span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span> 请先选择要查找的PDO记录所属的PDO名</h4>
                </div>

                <form class="form-horizontal PDOform" method="post" action="SearchRecord.action" id="Pdoform">
                    <%--<div class="form-group">--%>
                    <%--<label for="property0" class="col-sm-2 control-label">字段名0</label>--%>
                    <%--<div class="col-sm-8">--%>
                    <%--<input type="text" class="form-control" id="property0" name="property[0]">--%>
                    <%--</div>--%>
                    <%--</div>--%>
                    <%--<div class="form-group">--%>
                    <%--<label for="property1" class="col-sm-2 control-label">字段名1</label>--%>
                    <%--<div class="col-sm-8">--%>
                    <%--<input type="text" class="form-control" id="property1" name="property[0]">--%>
                    <%--</div>--%>
                    <%--</div>--%>

                    <%--<div class="form-group">--%>
                    <%--<div class="col-sm-offset-2 col-sm-2">--%>
                    <%--<button type="submit" class="btn btn-info">提交</button>--%>
                    <%--</div>--%>
                    <%--</div>--%>
                </form>
            </div>




            <!-- 按字段搜索（时间，地点等） -->
            <%--<div role="tabpanel" class="tab-pane" id="searchByAttr">--%>
            <%--<form class="form-horizontal search-form" method="post" action="SearchAll.action">--%>
            <%--<div class="form-group">--%>
            <%--<label for="pdoName-pdo" class="col-sm-2 control-label">搜索字段</label>--%>
            <%--<div class="col-sm-5 choosePDO">--%>
            <%--<input type="text" class="form-control" placeholder="请输入要搜索的内容" name="keyWord">--%>
            <%--</div>--%>
            <%--<div class="col-sm-2 choosePDO">--%>
            <%--<button type="submit" class="btn btn-info" id="search"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></button>--%>
            <%--</div>--%>
            <%--</div>--%>
            <%--</form>--%>
            <%--<hr class="center-hr" />--%>

            <%--<div class="notes">--%>
            <%--<h4><span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span> 请直接输入要搜索的字段</h4>--%>
            <%--</div>--%>
            <%--</div>--%>
        </div>



    </div>



    <footer class="footer" id="footer">
        <hr/>
        <p id="pp">&copy; 2017 EasyRecord</p>
    </footer>
</div>

<script>
    document.getElementById("getPropertys").onclick = function () {
        //发送Ajax请求并处理
        var request = new XMLHttpRequest();
        request.open("POST", "GetPdoHeader.action");
        var data = "pdoName=" + document.getElementById("pdoName-pdo").value;
        request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        request.send(data);
        request.onreadystatechange = function () {
            if(request.readyState === 4){
                if(request.status === 200){
                    var result = JSON.parse(request.responseText);
                    document.getElementById("notes").className = "notes hide";
                    var html = "";
                    for(var i = 1; i < result.pdoHeader.length; i ++){
                        //alert(result.pdoHeader[i]);
                        if(result.pdoHeader[i] == "日期"){
                            html += "</div><div class='form-group'><label for='info" + (i - 1) + "' class='col-sm-2 control-label'>" + result.pdoHeader[i] + "</label><div class='col-sm-8'><input type='text' class='calendar form-control' id='info" + (i - 1) + "' name='filter[" + (i - 1) + "]' placeholder='请选择日期'></div></div>";
                        }else if(result.pdoHeader[i] == "时间"){
                            html += "</div><div class='form-group'><label for='info" + (i - 1) + "' class='col-sm-2 control-label'>" + result.pdoHeader[i] + "</label><div class='col-sm-8'><input type='text' class='calendar form-control' id='info" + (i - 1) + "' data-enable-time='true' data-time_24hr='true' name='filter[" + (i - 1) + "]' placeholder='请选择时间'></div></div>";
                        }else{
                            html += "</div><div class='form-group'><label for='info" + (i - 1) + "' class='col-sm-2 control-label'>" + result.pdoHeader[i] + "</label><div class='col-sm-8'><input type='text' class='form-control' id='info" + (i - 1) + "' name='filter[" + (i - 1) + "]'></div></div>";
                        }
                        html += "<input type='text' class='form-control' style='display: none;' name='property[" + (i - 1) + "]' value='" + result.pdoHeader[i] + "'/>";
                        //alert(html);
                    }
                    html += "<input type='text' class='form-control' style='display: none;' name='pdoName' value='" + document.getElementById("pdoName-pdo").value + "'/>";
                    html += "<div class='form-group'><div class='col-sm-offset-2 col-sm-2'><button type='submit' class='btn btn-info'>搜索</button></div></div>";
                    document.getElementById("Pdoform").innerHTML = html;
                    document.getElementsByClassName("calendar").flatpickr();
                }else{
                    alert("发生错误！" + request.status);
                }
            }
        }
    }
</script>
</body>
</html>