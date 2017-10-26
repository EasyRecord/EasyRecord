<%--
  Created by IntelliJ IDEA.
  User: qiusuo
  Date: 2017/10/17
  Time: 20:37
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<%request.setCharacterEncoding("UTF-8");%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <meta charset="utf-8">
    <title>Title</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
</head>
<body>

<form>
    <input name="GetPdoHeader.action" id="bb" onblur="checkisbn()">
    <button type="submit" >提交</button>

</form>
<span id="aa">dada</span>
<script>


    function checkisbn() {

        var request = new XMLHttpRequest();
        request.open("POST", "GetPdoHeader.action");
        var data = "pdoName=" + document.getElementById("bb").value;
        request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        request.send(data);

//        alert(document.getElementById("isbn").value);
        request.onreadystatechange = function () {
//            var obj = JSON.parse(request.responseText);
//            alert(obj.pdo);
            if (request.readyState === 4) {
//                alert(request.status);
                if (request.status === 200) {
//                    var obj = JSON.parse(request.responseText);
//                    alert(obj)
                    var obj = JSON.parse(request.responseText);
//                        alert("suce")
                    alert(obj.pdoHeader);
                    document.getElementById("aa").innerHTML = obj.pdoHeader;
//                   if (obj.state === "success") {
//
////                        document.getElementById("isbnsapn").style.color = "Red";
////                        return false;
//                    }

                }
                else {
//                    alert("发生错误！"+request.status+"！ 请联系工程师：15124569014")
                    return false;
                }
//                alert(document.getElementById("isbn").value);
            }
        }
        return true;
    }
</script>
</body>
</html>

