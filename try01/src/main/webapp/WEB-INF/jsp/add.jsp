<%--
  Created by IntelliJ IDEA.
  User: XXY
  Date: 2019/12/2
  Time: 16:08
  To change this template use File | Settings | File Templates.
--%><%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String appPath = request.getContextPath(); %>
<html>
<head>
    <title>图书列表</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <style type="text/css">
        p.h1 {font-size:200%}
        p.h2{font-size: 200%;font-width: bold;}
    </style>
    <style>input{width:300px;height:30px;line-height:30px;}</style>
    <style>
        .button {
            background-color: #e7e7e7;
            border: none;
            color: black;
            padding: 15px 32px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 10px;
            margin: 4px 2px;
            cursor: pointer;
            width: 250px;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>图书管理系统 - by ssm基础框架</small>
                </h1>
            </div>
        </div>
    </div>
    <div class="row clearfix">
        <div class="col-md-12 column">
            <ul class="nav nav-tabs">
                <li><a href="<%=appPath%>/book/list">首页</a></li>
                <li><a href="<%=appPath%>/book/detail/1000">图书具体信息</a></li>
                <li class="active"><a href="<%=appPath%>/book/ToAdd">添加图书信息</a></li>
            </ul>
        </div>
    </div>
    <div class="row clearfix">
          <form role="" action="<%=appPath%>/book/add" method="get">
              <p class="h1">图书ID:</p><input type="text" name="bookId" />
              <p class="h1">图书名称:</p> <input type="text" name="name" />
              <p class="h1">图书数量:</p> <input type="text" name="number" />
              <p class="h1">图书细节:</p> <input type="text" name="detail" />
              <br>
              <br>
              <button type="button" class="btn btn-info">提交</button>
          </form>
        </div>
    </div>
</div>

<!-- jQuery (Bootstrap 的 JavaScript 插件需要引入 jQuery) -->
<script>
    $(document).ready(function(){
        $("button").click(function(){
            $.post("<%=appPath%>/book/add",{
                    name:"Book",
                    url:"<%=appPath%>/book/add"
                },
                function(data,status){
                    alert("数据: \n" + data + "\n状态: " + status);
                });
        });
    });
</script>
</body>
</html>