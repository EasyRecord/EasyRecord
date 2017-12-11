<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>EasyRecord</title>
    <meta name="description" content="Blueprint: On Scroll Effect Layout" />
    <meta name="keywords" content="on scroll, effect, slide in, layout, template, transition, javascript" />
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="bootstrap/css/bootstrap-theme.min.css"/>
    <link rel="stylesheet" type="text/css" href="css/demo.css" />
    <link rel="stylesheet" type="text/css" href="css/component.css" />
    <script type="text/javascript" src="bootstrap/js/jquery-1.12.0.min.js"></script>
    <script src="js/modernizr.custom.js"></script>
    <script src="js/jquery.mousewheel.min.js"></script>>
</head>
<body>
<div class="main-container">
    <!-- <header class="clearfix title-box">
        <h1 class="title">个人信息采集</h1>
    </header>	 -->

    <div class="title-box">
        <h1 class="first-title"><span>E</span>asy<span>R</span>ecord</h1>
        <h1 class="small-title">个人信息采集</h1>
        <h1><small>Create your own personal records.</small></h1>
        <div class="row">
            <div class="col-sm-offset-5 col-sm-1">
                <a href="ReadyToLogin.action" type="button" class="btn btn-info login">登录</a>
            </div>
            <div class="col-sm-1">
                <a href="ReadyToRegister.action" type="button" class="btn btn-default login">注册</a>
            </div>
        </div>
    </div>
    <div id="cbp-so-scroller" class="cbp-so-scroller">
        <section class="cbp-so-section">
            <article class="cbp-so-side cbp-so-side-text cbp-so-side-left">
                <h2>创建你的模型</h2>
                <div class="in-article">
                    <p>个性化信息记录模型、自由增删字段、自定义字段属性等功能，帮助你为不同的事件定制不同的模板，告别呆板一致的记录方式</p>
                </div>
            </article>
            <figure class="cbp-so-side cbp-so-side-img cbp-so-side-right">
                <img src="images/1.jpg" alt="img01">
            </figure>
        </section>
        <section class="cbp-so-section">
            <figure class="cbp-so-side cbp-so-side-img cbp-so-side-left">
                <img src="images/2.jpg" alt="img01">
            </figure>
            <article class="cbp-so-side cbp-so-side-text cbp-so-side-right">
                <h2>公共模板</h2>
                <div class="in-article">
                    <p>为你提供多种已有的模板，根据需要为不同事件选择合适的模板，不再为如何定制模板而困惑，省时省力，便捷高效</p>
                </div>
            </article>
        </section>
        <section class="cbp-so-section">
            <article class="cbp-so-side cbp-so-side-text cbp-so-side-left">
                <h2>添加你的记录</h2>
                <div class="in-article">
                    <p>不同模板下记录不同的事件，记录你生活的点点滴滴</p>
                </div>
            </article>
            <figure class="cbp-so-side cbp-so-side-img cbp-so-side-right">
                <img src="images/3.jpg" alt="img01">
            </figure>
        </section>
        <section class="cbp-so-section">
            <figure class="cbp-so-side cbp-so-side-img cbp-so-side-left">
                <img src="images/4.jpg" alt="img01">
            </figure>
            <article class="cbp-so-side cbp-so-side-text cbp-so-side-right">
                <h2>查询你的记录</h2>
                <div class="in-article">
                    <p>高级查询，根据你的模板查询记录，只找出该模板下符合条件的记录，查询结果更精准</p>
                    <p>聚合查询，根据关键字在所有模板下的左右记录中进行查询，找出符合条件的所有结果</p>

                </div>
            </article>
        </section>
        <section class="cbp-so-section">
            <article class="cbp-so-side cbp-so-side-text cbp-so-side-left">
                <h2>上传现有表格</h2>
                <div class="in-article">
                    <p>直接上传Excel文件，根据表格内容自动生成模板，并将表格内容作为记录，添加到该模板下</p>
                </div>
            </article>
            <figure class="cbp-so-side cbp-so-side-img cbp-so-side-right">
                <img src="images/5.jpg" alt="img01">
            </figure>
        </section>
    </div>
</div>
<script src="js/classie.js"></script>
<script src="js/cbpScroller.js"></script>
<script>
    new cbpScroller( document.getElementById( 'cbp-so-scroller' ) );

    //初始位置为页面顶部
    var distance = 0;
    //每触发一次滚动事件的移动距离
    var step = 700;

    //使用mousewheel插件捕获滚轮事件
    $(".main-container").mousewheel(function(event, delta) {
        //计算要滚动的距离
        console.log('Mouse Delta:' + delta);
        if (delta < 0)
            distance += step;
        else {
            if (distance > 0)
                distance -= step;
        }
        console.log('Distance:' + distance);
        //用JS操控页面滚动
        scroll(0, distance);
        //阻止默认事件发生
        event.preventDefault();
    });
</script>
</body>
</html>
