<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: qiusuo
  Date: 2017/10/19
  Time: 18:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">

    <title>建立关联</title>
    <link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="../bootstrap/css/bootstrap-theme.min.css"/>
    <link rel="stylesheet" href="../css/index.css"/>
    <link rel="stylesheet" href="../css/createPdo.css"/>
    <script type="text/javascript" src="../bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="../bootstrap/js/jquery-1.12.0.min.js"></script>
</head>
<body>
<% String key=(String)request.getAttribute("key"); %>
<div class="container">
    <div class="header clearfix">
        <nav>
            <ul class="nav nav-pills pull-right">
                <li role="presentation"><a href="GoToGeneratePdo.action">新建</a></li>
                <li role="presentation"><a href="GoToInsertRecord.action">添加</a></li>
                <li role="presentation"><a href="GoToSearch.action">查询</a></li>
                <li role="presentation"><a href="GoToImport.action">导入</a></li>
                <%-- 跳转到index.jsp页面 --%>
                <li role="presentation"><a href="BackToIndex.action"><span class="glyphicon glyphicon-share-alt" aria-hidden="true"></span> 返回</a></li>
                <li role="presentation"><a href="Logout.action"><span class="glyphicon glyphicon-log-out" aria-hidden="true"></span> 登出</a></li>
                <% if (session.getAttribute("user") == null) response.sendRedirect("Logout.action");%>
            </ul>
            <h3 class="text-muted">EasyRecord</h3>
        </nav>
    </div>
    <hr/>

    <div>
        <h2>建立关联</h2>
        <h4>
            <small>Add PDO record</small>
        </h4>
        <!--<p>
        <a class="btn btn-lg btn-primary" href="../../components/#navbar" role="button">View navbar docs &raquo;</a>
        </p>-->
    </div>

    <div class="main-form">
        <form class="form-horizontal" method="post" action="GetPdoHeader.action">
            <div class="form-group">
                <label for="pdoName" class="col-sm-2 control-label">PDO名</label>
                <div class="col-sm-3">
                    <select class="form-control" name="pdoName" id="pdoName">
                        <s:iterator value="pdoNames" status="li">
                            <s:if test="#li != null">
                                <option value="<s:property />"><s:property/></option>
                            </s:if>
                        </s:iterator>
                    </select>
                </div>
                <div class="col-sm-2 choosePDO">
                    <button type="button" class="btn btn-info" id="getPropertys">提交</button>
                </div>
            </div>
        </form>
        <hr class="center-hr"/>

        <div class="notes" id="notes">
            <h4><span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span> 选择PDO名称</h4>
        </div>

        <div class="main-table">
            <table class="table table-hover" action="InsertRecord.action" id="recordList">


            </table>
        </div>
    </div>






    <footer class="footer" id="footer">
        <hr/>
        <p id="pp">&copy; 2017 EasyRecord</p>
    </footer>
</div>

<script type="text/javascript" src="../js/bootstrap.min.js"></script>
<script type="text/javascript" src="../js/jquery-1.12.0.min.js"></script>
<script>
    document.getElementById("getPropertys").onclick = function () {
        //发送Ajax请求并处理
        var request = new XMLHttpRequest();
        request.open("POST", "GetAllRecord.action");
        var data = "pdoName=" + document.getElementById("pdoName").value;
        request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        request.send(data);
        request.onreadystatechange = function () {
            if (request.readyState === 4) {
                if (request.status === 200) {
                    var result = JSON.parse(request.responseText);
                    document.getElementById("notes").className = "notes hide";
                    var html = "<thead><tr>";
//                    alert(result.infos[0][0]);
                    for (var i = 0; i < result.property.length; i++) {
                        //alert(result.pdoHeader[i]);
                        html += "<th>" + result.property[i] + "</th>";
                    }
                    html += "<th>操作</th>";
                    html += "</tr></thead>";
                    for (var i = 0; i < result.infos.length; i++) {
                        html += "<tr>";
                        for (var j = 0; j < result.property.length; j++) {
                            html += "<td>" +
                                result.infos[i][j] +
                                "</td>";
                        }
//                        alert(document.getElementById("pdoName").value);
                        html +="<td><a href='Association.action?key=<%=key%>&keyDestination="+result.infos[i][0]+"&pdoNameDestination="+document.getElementById("pdoName").value+"'>关联</a></td>";
//                    html+="<td><a href=\"Association.action?key="+document.getElementById("pdoName").value+"&keyDestination="+result.info[i][0]+"&pdoNameDestination="+document.getElementById("pdoName").value+"\">关联</a></td>";
                        html += "</tr>";
                    }
//                    alert(html);
                    document.getElementById("recordList").innerHTML = html;
                } else {
                    alert("发生错误！" + request.status);
                }
            }
        }
    }
</script>
</body>


</html>