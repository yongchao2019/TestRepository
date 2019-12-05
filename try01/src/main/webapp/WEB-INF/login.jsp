<%--
  Created by IntelliJ IDEA.
  User: XXY
  Date: 2019/12/3
  Time: 17:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>login</title>
</head>
<body>
<div align="center">
    <br><br><br>
    <!-- 作业：post方法与get方法的区别 -->
    <form action="${pageContext.request.contextPath}/system/login" method="post">
        <p>用户登录</p>
        账号：<input name="account" type="text" />
        <br><br>
        密码：<input name="password" type="password" />
        <br><br>
        <input type="reset" value="撤 销" />
        <input type="submit" value="提 交" />
    </form>
</div>
</body>
</html>
