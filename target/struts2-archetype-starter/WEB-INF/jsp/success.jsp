<%@taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%--<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">--%>
<%--&lt;%&ndash;<head>&ndash;%&gt;--%>
<%--<<<<<<< HEAD--%>
<%--&lt;%&ndash;<title>Index</title>&ndash;%&gt;--%>
<%--&lt;%&ndash;<s:head />&ndash;%&gt;--%>
<%--&lt;%&ndash;</head>&ndash;%&gt;--%>
<%--&lt;%&ndash;<body>&ndash;%&gt;--%>
<%--&lt;%&ndash;Success&ndash;%&gt;--%>
<%--=======--%>
	<%--&lt;%&ndash;<title>Index</title>&ndash;%&gt;--%>
	<%--&lt;%&ndash;<s:head />&ndash;%&gt;--%>
<%--&lt;%&ndash;</head>&ndash;%&gt;--%>
<%--&lt;%&ndash;<body>&ndash;%&gt;--%>
	<%--&lt;%&ndash;Success&ndash;%&gt;--%>
<%-->>>>>>> origin/zhaoyang--%>
<%--</body>--%>
<%--</html>--%>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
	<meta charset="UTF-8">
	<title>提交成功</title>
	<link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css"/>
	<link rel="stylesheet" href="../bootstrap/css/bootstrap-theme.min.css"/>
	<link rel="stylesheet" href="../css/index.css"/>
	<link rel="stylesheet" href="../css/createPdo.css"/>
	<script type="text/javascript" src="../bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="../bootstrap/js/jquery-1.12.0.min.js"></script>
</head>
<body>
<div class="container">
	<div class="header clearfix">
		<!-- <nav>
            <ul class="nav nav-pills pull-right">
                <li role="presentation" class="active"><a href="#">新建</a></li>
                <li role="presentation"><a href="#">添加</a></li>
                <li role="presentation"><a href="#">查询</a></li>
                <li role="presentation"><a href="#">上传</a></li>
                <li role="presentation"><a href="#"><span class="glyphicon glyphicon-share-alt" aria-hidden="true"></span> 返回</a></li>
            </ul> -->
		<h3 class="text-muted">EasyRecord</h3>
		</nav>
	</div>
	<hr/>


	<div class="success-mes">
		<h1><span class="glyphicon glyphicon-ok icon-ok" aria-hidden="true"></span> 操作成功</h1>
		<h3 class="mes"><small>Succeed to submit.</small></h3>
		<div class="link-box">
			<a href="BackToIndex.action" class="morelink"><span class="glyphicon glyphicon-share-alt" aria-hidden="true"></span> 返回首页</a>
			<a href="GoToInsertRecord.action" class="morelink"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span> 继续添加记录</a>
		</div>
	</div>



	<footer class="footer" id="footer">
		<hr/>
		<p id="pp">&copy; 2017 EasyRecord</p>
	</footer>
</div>

<script type="text/javascript" src="../js/bootstrap.min.js"></script>
<script type="text/javascript" src="../js/jquery-1.12.0.min.js"></script>
</body>
</html>