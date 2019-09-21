<%--
  Created by IntelliJ IDEA.
  User: Shinelon
  Date: 2019/9/20
  Time: 14:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>request 测试</title>
    <style type="text/css">
        div{
            width:500px;
            height:400px;
            background-color: bisque;
            padding:5px;
            font-size:25px;
            color:black;
            margin:0 auto;
        }
        h3{
            text-align: center;
        }
    </style>
</head>
<body>
    <div>
        <%request.setCharacterEncoding("utf-8"); %>
        <h3>登入界面</h3>
        <form action="<%=request.getContextPath()%>/test1/secPage.jsp" method="post">
            账号:<input type="text" name="useName" placeholder="请输入账号"/><br>
            密码:<input type="password" name="passWord"/><br>
            <input type="submit" value="提交"/>
            <input type="reset" value="重置"/>

        </form>
    </div>
</body>
</html>
