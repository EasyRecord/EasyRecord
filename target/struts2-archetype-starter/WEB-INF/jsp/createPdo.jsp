<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: qiusuo
  Date: 2017/10/19
  Time: 18:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%-- <html>
<head>
    <title>Title</title>
</head>
<body>
<s:debug></s:debug>
新建PDO
<form>

</form>
</body>
</html> --%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <title>创建PDO模型</title>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="bootstrap/css/bootstrap-theme.min.css"/>
    <link rel="stylesheet" href="css/index.css"/>
    <link rel="stylesheet" href="css/createPdo.css"/>
    <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="bootstrap/js/jquery-1.12.0.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {

            $("#addProperty").click(function () {
                var count = $("#createPDOform").children(".form-group").length;
                $("#createPDOform").children().children("p").remove();

                $("#createPDOform").append("<div class='form-group' id='element" + count + "'>"
                    + "<label for='property" + count + "' class='col-sm-1 control-label'>字段名</label>"
                    + "<div class='col-sm-4'>"
                    + "<input type='text' class='form-control' id='property" + count + "' name='property[" + count + "]'></div>"
                    + "<label for='elementType" + count + "' class='col-sm-1 control-label'>字段类型</label>"
                    + "<div class='col-sm-2'><select class='form-control' name='elementType[" + count + "]' id='elementType" + count + "'>"
                    + "<option value='String'>字符串</option><option value='int'>整数</option>"
                    + "<option value='double'>实数</option><option value='Timestamp'>时间</option></select></div>"
                    + "<label for='size" + count + "' class='col-sm-1 control-label'>字段长度</label>"
                    + "<div class='col-sm-2'><input type='text' class='form-control' id='size" + count + "' name='size[" + count + "]'></div>"
                    + "<p class='col-sm-1' id='" + count + "'><a href='#'><span class='glyphicon glyphicon-remove' aria-hidden='true'></span></a></p></div>");

            });

            $("#createPDOform").on("click", "p", function () {
                var pvalue = $(this).attr('id');
                $("#element" + pvalue).remove();
                var count = $("#createPDOform").children(".form-group").length;
                if (count != 1) {
                    $("#createPDOform").children(":last").append("<p class='col-sm-1' id='" + (count - 1) + "'><a href='#'>"
                        + "<span class='glyphicon glyphicon-remove' aria-hidden='true'></span></a></p>");
                }
            });

            $("#publicPDO").click(function () {
                $(this).attr("class", "second-menu active");
                $("#privatePDO").attr("class", "second-menu");
                $("#content-list").animate({left: "-900px"}, "slow");
            });
            $("#privatePDO").click(function () {
                $(this).attr("class", "second-menu active");
                $("#publicPDO").attr("class", "second-menu");
                $("#content-list").animate({left: "0px"}, "slow");
            });
        });
    </script>
</head>
<body>
<div class="container">
    <div class="header clearfix">
        <nav>
            <ul class="nav nav-pills pull-right">
                <li role="presentation" class="active"><a href="GoToGeneratePdo.action">新建</a></li>
                <li role="presentation"><a href="GoToInsertRecord.action">添加</a></li>
                <li role="presentation"><a href="GoToSearch.action">查询</a></li>
                <li role="presentation"><a href="GoToImport.action">导入</a></li>
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
        <ul class="nav nav-pills pull-right">
            <li role="presentation" class="second-menu active" id="privatePDO"><a href="#">自定义PDO模型</a></li>
            <li role="presentation" class="second-menu" id="publicPDO"><a href="#">公共PDO模型</a></li>
        </ul>
        <h2>创建PDO模型</h2>
        <h4>
            <small>Create PDO model</small>
        </h4>
        <!--<p>
        <a class="btn btn-lg btn-primary" href="../../components/#navbar" role="button">View navbar docs &raquo;</a>
        </p>-->
    </div>

    <div class="main-form">

        <div class="tab-content">

            <ul id="content-list">
                <li><!-- 自定义PDO字段 -->
                    <form class="form-horizontal" method="post" action="GeneratePdo.action" onsubmit="return checkName()">
                        <div class="form-group">
                            <label for="pdoName" class="col-sm-1 control-label">PDO名</label>
                            <div class="col-sm-10">

                                <input type="text" class="form-control" id="pdoName" placeholder="PDO名" name="pdoName">
                            </div>
                        </div>

                        <div id="createPDOform">
                            <div class="form-group">
                                <label for="property0" class="col-sm-1 control-label">字段名</label>
                                <div class="col-sm-4">
                                    <input type="text" class="form-control" id="property0" name="property[0]">
                                </div>
                                <label for="elementType0" class="col-sm-1 control-label">字段类型</label>
                                <div class="col-sm-2">
                                    <select class="form-control" name="elementType[0]" id="elementType0">
                                        <option value="String">字符串</option>
                                        <option value="int">整数</option>
                                        <option value="double">实数</option>
                                        <option value="Timestamp">时间</option>
                                    </select>
                                </div>
                                <label for="size0" class="col-sm-1 control-label">字段长度</label>
                                <div class="col-sm-2">
                                    <input type="text" class="form-control" id="size0" name="size[0]">
                                </div>
                            </div>
                        </div>
                        <!-- <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">
                              <div class="checkbox">
                                <label>
                                    <input type="checkbox"> Remember me
                                </label>
                              </div>
                            </div>
                        </div> -->
                        <div class="form-group">
                            <div class="col-sm-offset-1 col-sm-1">
                                <button type="submit" class="btn btn-info">提交</button>
                            </div>
                            <div class="col-sm-8">
                                <button type="button" class="btn btn-default" id="addProperty">添加字段</button>
                            </div>
                        </div>
                    </form>
                </li>


                <li><!--公共PDO字段-->
                    <div class="row">
                        <div class="pdo-public col-sm-4 col-sm-offset-1">
                            <div class="pdo-title">
                                <h4>聚餐</h4>
                            </div>
                            <div class="tag">
                                <span class="label label-info">时间</span>
                                <span class="label label-success">地点</span>
                                <span class="label label-warning">人数</span>
                                <span class="label label-danger">花费</span>
                            </div>

                            <s:a href="AddPublicPdo.action?publicpdoName=聚餐" class="btn btn-default add"
                                 role="button"><span class="glyphicon glyphicon-plus"
                                                     aria-hidden="true"></span> 添加</s:a>
                        </div>


                        <div class="pdo-public col-sm-4 col-sm-offset-1">
                            <div class="pdo-title">
                                <h4>运动</h4>
                            </div>
                            <div class="tag">
                                <span class="label label-info">时间</span>
                                <span class="label label-success">地点</span>
                                <span class="label label-warning">项目</span>
                            </div>
                            <s:a href="AddPublicPdo.action?publicpdoName=运动" class="btn btn-default add"
                                 role="button"><span class="glyphicon glyphicon-plus"
                                                     aria-hidden="true"></span> 添加</s:a>
                        </div>
                    </div>
                </li>


            </ul>
        </div>
    </div>

    <input type="hidden" id="pdoNames" value='<s:property value="pdoNames"/>'/>
    <script>


        function checkName() {

            var pdoNames = document.getElementById("pdoNames").value.slice(1, -1);
            //        alert(pdoNames);
            pdoNames = pdoNames.split(',');
            //        alert(pdoNames);
            //        alert(pdoNames.length);
            //        alert(pdoNames[0]);

            var flag = false;
            for (var i = 0; i < pdoNames.length; i++) {
                if (document.getElementById("pdoName").value === pdoNames[i])
                    flag = true;
            }
            if (flag === true) {
                alert("pdo名称已存在");
//                document.getElementById("filespan").innerHTML = "文件名与已存在的pdo名称冲突";
//                document.getElementById("filespan").style.color = "Red";
//                document.getElementById("filespan").style.fontSize = "90%";
//                document.getElementById("filespan").style.fontWeight = "bold";
                return false;
            }
//            alert(document.getElementById('pdoName').value);
            if(document.getElementById('pdoName').value===""|| document.getElementById('pdoName').value===undefined){
                alert("表单名为空");
                return false;
            }
//            alert(document.getElementsByTagName("input").length/3);

            for (var i=0;i<document.getElementsByTagName("input").length/3;i++){
                if (document.getElementById("property"+i).value===""||document.getElementById("property"+i).value===undefined){
                    alert("请完成所有字段名称的填写！");
                    return false;
                }
            }
            return true;
        }
    </script>
    <footer class="footer" id="footer">
        <hr/>
        <p id="pp">&copy; 2017 EasyRecord</p>
    </footer>
</div>

<script src="bootstrap/js/bootstrap.min.js"></script>
<script src="bootstrap/js/jquery-1.12.0.min.js"></script>
</body>
</html>