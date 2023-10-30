<%--
  Created by IntelliJ IDEA.
  User: HUAWEI
  Date: 2023/10/9
  Time: 13:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录界面</title>
    <style>
        #outerLoginFrame{
            width: 500px;
            height: 400px;
            margin-top: 250px;
            margin-left: 500px;
        }

        #innerLoginFrame{
            width: 350px;
            margin-left: 95px;
            margin-top: 50px;
            color: grey;
            font-size: 25px;
        }

        input{
            width: 200px;
            height: 30px;
        }

    </style>

</head>
<body>
<div id="outerLoginFrame" style="border: grey 2px solid">
    <h1 style="margin-top: 40px;margin-left: 130px;">教&nbsp;务&nbsp;管&nbsp;理&nbsp;系&nbsp;统</h1>
    <div id="innerLoginFrame" style="font-size: 30px">
        <form action="userLogin" method="post" onclick="return checkLogin()">
            账户：<input type="text" style="font-size: 26px" id="userAccount" name="userAccount" class="myText"><br><br>
            密码：<input type="password" style="font-size: 26px" id="userPassword" name="userPassword" class="myText"><br><br>
            <input style="width: 120px;margin-left: 30px" type="submit" value="登录">
            <a href="register.jsp" style="width: 120px;margin-left: 30px"> | &nbsp;注册</a><br>
            <span style="color: red;font-size:15px" id="tip">${tip}</span>
        </form>
    </div>
</div>



</body>
</html>

<script>
    function checkLogin() {
        let userAccount = document.getElementById("userAccount").value;
        let userPassword = document.getElementById("userPassword").value;
        if(userAccount==null || userAccount.trim()==""){
            document.getElementById("tip").innerHTML = "账户不能为空";
            return false;
        }
        if(userPassword==null || userPassword.trim()==""){
            document.getElementById("tip").innerHTML = "密码不能为空";
            return false;
        }
        return true;
    }
</script>