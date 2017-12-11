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
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <title>更新PDO记录</title>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="bootstrap/css/bootstrap-theme.min.css"/>
    <link rel="stylesheet" href="css/index.css"/>
    <link rel="stylesheet" href="css/createPdo.css"/>
    <link rel="stylesheet" type="text/css" href="css/flatpickr.min.css">
    <script type="text/javascript" src="bootstrap/js/jquery-1.12.0.min.js"></script>
    <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
    <script src="js/flatpickr.js"></script>
</head>
<body>
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
                <% if(session.getAttribute("user")==null) response.sendRedirect("Logout.action");%>
            </ul>
            <h3 class="text-muted">EasyRecord</h3>
        </nav>
    </div>
    <hr/>

    <div >
        <h2>更新PDO记录</h2>
        <h4><small>Update PDO record</small></h4>
        <!--<p>
        <a class="btn btn-lg btn-primary" href="../../components/#navbar" role="button">View navbar docs &raquo;</a>
        </p>-->
    </div>

    <div class="main-form">
        <% String pdoName=(String)request.getAttribute("pdoName");
            Vector<String> property=(Vector<String>)request.getAttribute("property");
            Vector<String> info=(Vector<String>)request.getAttribute("info");
            Vector<String> type=(Vector<String>)request.getAttribute("type");
            %>
        <s:debug></s:debug>
        <%--//            out.println(pdoName);--%>
        <form class="form-horizontal" action="UpdateRecord.action" method="post">
            <%--<div class="form-group">--%>
            <%--<label for="pdoName" class="col-sm-1 control-label">PDO名</label>--%>
            <%--<div class="col-sm-10">--%>

            <%--<input type="text" class="form-control" id="pdoName" placeholder="PDO名" name="pdoName">--%>
            <%--</div>--%>
            <%--</div>--%>
            <%
                out.println("<div class=\"form-group\">");
                out.println("<label for=\"pdoName\" class=\"col-sm-2 control-label\">PDO名</label>");
                out.println("<div class=\"col-sm-8\">");
                out.println("<input type=\"text\" class=\"form-control\" id=\"pdoName\" placeholder=\"PDO名\" name=\"pdoName\" value=\""+pdoName+"\" disabled>");
                out.println("<div style=\"display: none\"><input name=\"pdoName\" value=\""+pdoName+"\"></div>");
                out.println("</div></div>");
                out.println("<div style=\"display: none\"><input name=\"property[0]\" value=\""+property.elementAt(0)+"\"></div>");
                out.println("<div class=\"form-group\">");
                out.println("<label for=\"property0\" class=\"col-sm-2 control-label\">"+property.elementAt(0)+"</label>");
                out.println("<div class=\"col-sm-8\">");
                out.println("<input type=\"text\" class=\"form-control\" id=\"property0\" name=\"inofo[0]\" value=\""+info.elementAt(0)+"\" disabled>");
                out.println("<div style=\"display: none\"><input name=\"inofo[0]\" value=\""+info.elementAt(0)+"\"></div>");
                out.println("</div></div>");
                for (int i=1;i<property.size();i++){
                    out.println("<div style=\"display: none\"><input name=\"property["+i+"]\" value=\""+property.elementAt(i)+"\"></div>");
                    out.println("<div class=\"form-group\">");
                    String pro = property.elementAt(i);
                    System.out.println(pro);
                    out.println("<label for=\"property"+i+"\" class=\"col-sm-2 control-label\">"+pro+"</label>");
                    out.println("<div class=\"col-sm-8\">");
                    if(pro == "日期"){
                        out.println("<input type=\"text\" class=\"calendar form-control\" id=\"property"+i+"\" name=\"inofo["+i+"]\" value=\""+info.elementAt(i)+"\">");
                    }else if(pro == "时间"){
                        out.println("<input type=\"text\" class=\"calendar form-control\" id=\"property"+i+"\" data-enable-time=\"true\" data-time_24hr=\"true\" name=\"inofo["+i+"]\" value=\""+info.elementAt(i)+"\">");
                    }else{
                        out.println("<input type=\"text\" class=\"form-control\" id=\"property"+i+"\" name=\"inofo["+i+"]\" value=\""+info.elementAt(i)+"\">");
                    }
                    out.println("</div></div>");

//                        out.println("<div style=\"display: none\"><td style=\"display: none\"><input name=\"property[i]\" style=\"display: none\"></td></div>");
//                        out.println("<td>"+property.elementAt(i)+"</td>");
//                        out.println(" <td><input name=\"info[i]\" value=\""+info.elementAt(i)+"\"></td>");
//                        out.println("</tr>");
                }

            %>

            <%--<tr>--%>
            <%--<td></td>--%>
            <%--<td><input type="submit" value="提交" class="btn btn-info"></td>--%>
            <%--</tr>--%>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-2">
                    <button type="submit" class="btn btn-info">提交</button>
                </div>
            </div>

        </form>
    </div>


    <footer class="footer" id="footer">
        <hr/>
        <p id="pp">&copy; 2017 EasyRecord</p>
    </footer>
</div>

<script>
    document.getElementsByClassName("calendar").flatpickr();
</script>
</body>
</html>