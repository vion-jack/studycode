<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
  <base href="<%=basePath%>">

  <title>My JSP 'index.jsp' starting page</title>
  <meta http-equiv="pragma" content="no-cache">
  <meta http-equiv="cache-control" content="no-cache">
  <meta http-equiv="expires" content="0">
  <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
  <meta http-equiv="description" content="This is my page">
  <!--
  <link rel="stylesheet" type="text/css" href="styles.css">
  -->
</head>
<body>
<%
  request.setCharacterEncoding("utf-8"); //处理乱码
  //获取参赛
  String userName = request.getParameter("userName");
  String userPass = request.getParameter("userPass");
  //业务逻辑处理,假设账号为:zhangsan@163.com 密码为:zs123
  if("zhangsan@163.com".equals(userName) && "zs123".equals(userPass)){
    request.setAttribute("userName", userName);
    //response.sendRedirect("/studyday/response_document/login02/welcome.jsp");
    request.getRequestDispatcher("/studyday/response_document/login02/welcome.jsp").forward(request,response);
  }else{
    request.setAttribute("errMsg","账号或密码错误!");
    request.getRequestDispatcher("/studyday/response_document/login02/login.jsp").forward(request,response);
    //response.sendRedirect(request.getContextPath()+"/response_document/login02/login.jsp");
  }
%>
</body>
</html>







