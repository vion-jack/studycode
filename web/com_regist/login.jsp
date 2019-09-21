<%--
  Created by IntelliJ IDEA.
  User: Shinelon
  Date: 2019/9/20
  Time: 21:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登入</title>
    <link rel="stylesheet" href="../css/login.css" />
</head>
<body>
    <div id="div0">
        <h2 style="text-align: center">登入</h2>
        <form id="form1" name="form1" method="post" action="checklogin.jsp">
            用户名：
                <input type="text" name="username" /><br>
            密&nbsp&nbsp码：
                <input type="password" name="password" /><br>
                <input type="submit" name="Submit" value="提交" />
            <input type="reset" value="重置"/>
        </form>
        <div id="regist_div">
            <a href="regist.jsp">注册账号</a>
        </div>
    </div>
</body>
</html>
