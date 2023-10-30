<%--
  Created by IntelliJ IDEA.
  User: HUAWEI
  Date: 2023/10/20
  Time: 14:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        #BigBodyFrame{
            width: 1450px;
            height: 120px;
            border: grey 2px solid;
            /*background-image: url("");*/
        }
        #navigation{
            width: 250px;
            height: 450px;
            float: left;
            border: grey 1px solid;
        }
        #file{
            width: 230px;
            height: 50px;
            margin-left: 11px;
            margin-top: 10px;
            border: grey 1px solid;
            background-color: mediumturquoise;
        }
        a{
            color: white;
            font-size: 26px;
            margin-top: 30px;
            margin-left: 25px;
        }
    </style>
</head>
<body>
<div id="BigBodyFrame"></div>
<br><br>
<div id="navigation">
    <li id="file"><a href="common">查看首页</a></li>
    <li id="file"><a href="common">个人信息</a></li>
    <li id="file"><a href="common">学生管理</a></li>
    <li id="file"><a href="common">退出系统</a></li>

</div>

<jsp:include page="${mainRight=null?'blank.jsp':mainRight}"></jsp:include>

</body>
</html>
