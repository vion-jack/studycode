<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">

    <title>邮件登录</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <!--
    <link rel="stylesheet" type="text/css" href="styles.css">
    -->
    <style type="text/css">
        p{font-size:26px;color: #ff2810;}
    </style>
</head>

<body>
<%
    String msg = (String)request.getAttribute("errMsg");
    msg = (msg==null)?"":msg;
%>

<div style="margin:75px 200px;font-size:35px;">
    <h2>邮件登录</h2>
    <p>
        <%=msg%>
    </p>
    <form action="<%=path%>/response_document/login02/doLogin.jsp" method="post">
        账号:<input type="text" name="userName"/><br>
        密码:<input type="password" name="userPass"/><br>
        <input type="submit" value="登录邮箱"/>
        <input type="reset" value="重置"/>
    </form>
</div>
</body>
</html>








