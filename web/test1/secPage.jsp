<%--
  Created by IntelliJ IDEA.
  User: Shinelon
  Date: 2019/9/20
  Time: 14:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>secPage</title>
    <style type="text/css">
        div{
            font-size:25px;
            color:black;
            font-family: "宋体";
            text-align: center;
            background-color: navajowhite;

        }
    </style>
</head>
<body>
    <div>
        <h3>展示信息</h3>
    <%
        String useName = request.getParameter("useName");
        String passWord = request.getParameter("passWord");
    %>
    账号:<%=useName%><br>
    密码:<%=passWord%>
    </div>
</body>
</html>
