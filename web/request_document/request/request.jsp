<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>Insert title here</title>
</head>
    <body>
    <%request.setCharacterEncoding("utf-8");%>
        <h1>request内置对象</h1>
        <%
            request.setAttribute("password", "123456");
        %>
        用户名:<%=request.getParameter("username")%>
        <br>
        爱好:
        <%
            if (request.getParameterValues("favorite") != null) {
                String[] fav = request.getParameterValues("favorite");
                for (int i = 0; i < fav.length; i++) {
                    out.println(fav[i] + "&nbsp;&nbsp;");
                }
            }
        %>
        <br>
        密码:<%=request.getAttribute("password")%><br>
        请求体的mime类型:<%=request.getContentType()%><br>
        协议类型及版本号:<%=request.getProtocol()%><br>
        服务器主机名:<%=request.getServerName()%><br>
        请求的端口号:<%=request.getServerPort()%><br>
        字符编码方式:<%=request.getCharacterEncoding()%><br>
        请求体的长度:<%=request.getContentLength()%><br>
        返回发送请求的客户端IP地址:<%=request.getRemoteAddr()%><br>
        返回虚拟路径的真实路径:<%=request.getRealPath("request.jsp")%><br>
        返回上下文路径:<%=request.getContextPath()%><br>

    </body>
</html>