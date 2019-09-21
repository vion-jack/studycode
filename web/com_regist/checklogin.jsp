<%@ page import="java.sql.*" %><%--
  Created by IntelliJ IDEA.
  User: Shinelon
  Date: 2019/9/20
  Time: 21:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>验证登入</title>
</head>
<body>
<%
    String username=new String(request.getParameter("username").getBytes("ISO8859_1"),"GBK");
    String password=new String(request.getParameter("password").getBytes("ISO8859_1"),"GBK");
    try {
        // 加载数据库驱动，注册到驱动管理器
        Class.forName("com.mysql.jdbc.Driver");
        // 数据库连接字符串
        String url = "jdbc:mysql://localhost:3306/userdb";
        // 数据库用户名
        String usename = "root";
        // 数据库密码
        String psw = "123";
        // 创建Connection连接
        Connection conn = DriverManager.getConnection(url,usename,psw);
        // 判断 数据库连接是否为空
        if(conn != null){
            String sql="select * from user where username='"+username+"' and password='"+ password + "'";
            Statement stmt = conn.createStatement();
            ResultSet rs=stmt.executeQuery(sql);
            if(rs.next()){
                response.sendRedirect("home.jsp");
            }else{
                out.print("用户名或密码错误，请重新输入！");
            %>
            <a href=" ./login.jsp">返回</a>
            <%
            }
            // 输出连接信息
            //out.println("数据库连接成功！");
            // 关闭数据库连接
            conn.close();
        }else{
            // 输出连接信息
            out.println("数据库连接失败！");
        }
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    } catch (SQLException e) {
        e.printStackTrace();
    }
%>
</body>
</html>
