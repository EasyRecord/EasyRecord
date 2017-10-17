<%@ page import="java.io.File" %>
<%@ page import="javax.tools.JavaCompiler" %>
<%@ page import="javax.tools.ToolProvider" %>
<%@ page import="java.lang.reflect.Method" %>
<%--
  Created by IntelliJ IDEA.
  User: qiusuo
  Date: 2017/10/16
  Time: 20:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<% File distDir = new File("src/main/java");
    if (!distDir.exists()) {
        distDir.mkdirs();
    }

    JavaCompiler javac = ToolProvider.getSystemJavaCompiler();
    //JavaCompiler最核心的方法是run, 通过这个方法编译java源文件, 前3个参数传null时,
    //分别使用标准输入/输出/错误流来 处理输入和编译输出. 使用编译参数-d指定字节码输出目录.
//            distDir = new File("src/main/java/edu/hit/se");
//            System.out.println(distDir.getAbsolutePath()+"\n"+ javaFile.getAbsolutePath());
    int compileResult = javac.run(null, null, null, "-d", distDir.getAbsolutePath(), javaFile.getAbsolutePath());
    //run方法的返回值: 0-表示编译成功, 否则表示编译失败
    if(compileResult != 0) {
        System.err.println("编译失败!!");
        return;
    }
    try{
        //动态执行 (反射执行)
        Class klass = Class.forName("edu.hit.se.Eat");
        Method evalMethod = klass.getMethod("setAddress", String.class);
        String result = (String)evalMethod.invoke(klass.newInstance(), "SDKFJ");
        Method evalMethods = klass.getMethod("getAddress", String.class);
        String results = (String)evalMethods.invoke(klass.newInstance());
    } catch (Exception e) {
    e.printStackTrace();
    }
%>
<form>
    <% out.print(results);%>
    <input type="text" name="eat.address">
    <input type="text" name="eat.time">
    <input type="text" name="eat.expense">
    <input type="text" name="eat.people">
    <button type="submit">提交</button>
</form>
</body>
</html>
