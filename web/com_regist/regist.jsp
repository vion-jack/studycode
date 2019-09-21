<%--
  Created by IntelliJ IDEA.
  User: Shinelon
  Date: 2019/9/20
  Time: 23:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册页面</title>
   <!-- <link rel="stylesheet" href="../css/form.css" />-->
    <link rel="stylesheet" href="../css/regist.css" />
</head>
<body>
    <div>
        <h2 style="text-align: center">注册用户</h2>
        <form action="<%=request.getContextPath()%>/com_regist/checkregist.jsp"
              method="post" id="form1" onsubmit="return check_submit();">
            账号:
            <input id="txt_user_name" type="text" name="userName" placeholder="请输入账号"/><br>
            密码:
            <input id="txt_user_pass" type="password" name="passWord"placeholder="请输入密码"/><br>
            <!--确认密码:<input type="password" name="re_password"/><br>-->
            <input id="submit_button" type="submit" value="提交"/>
            <input type="reset" value="重置"/>
        </form>
        <a href="login.jsp">返回登入</a>
    </div>
  <!-- <script src="../js/form.js"></script>-->
</body>
</html>
