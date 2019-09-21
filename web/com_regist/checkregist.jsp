<%@ page import="www.vion.tools.DBUtil" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.Connection" %>
<%--
  Created by IntelliJ IDEA.
  User: Shinelon
  Date: 2019/9/20
  Time: 22:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册验证</title>
</head>
<body>
    <%
        int i;
        String userName = request.getParameter("userName");
        String passWord = request.getParameter("passWord");
        Connection conn = null;
        PreparedStatement pstmt = null;

        try{
            if(userName!="" && passWord!=""){
                String sql = "insert into user(username ,password) values("+"'"+userName+"'"+","+"'"+passWord+"'"+")";
            conn = DBUtil.getConnection();
            pstmt = conn.prepareStatement(sql);
            i = pstmt.executeUpdate();

                if(i>0){
                    out.println("注册成功!");
                   // response.sendRedirect(".jsp");
                }else{
                    out.println("注册失败!");
                }
            }
            else{
                if(userName==""||userName==null){out.println("请填写用户名!");}
                if(passWord==""||passWord==null){out.println("请填写密码!");}
            }

        }catch(Exception e){
            e.printStackTrace();
        }finally{
            DBUtil.closePreparedStatement(pstmt);
            DBUtil.closeConnection(conn);
        }
    %>

</body>
</html>
