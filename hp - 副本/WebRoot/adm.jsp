<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>管理员页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  <style>
  body{background-image: url(img/a7.jpg);background-size: 100% 100%;}
  #sort{float:left;width:20%;height:93%;background-color:#FFFDD0;padding-top:50px;}
  #sort a{text-decoration:none;color:#000000;font-size: 25px;}
  #text{float:left;width:70%;height:80%;margin-top:150px;font-size:50px;}
  .test{width:50% ;height:auto;padding-top:20px;}
  </style>
  </head>
  
  <body>
    <div id="sort"><center><h1>后台管理</h1><a href="aduser.jsp">用户管理</a><br><a href="adpro.jsp">商品管理</a><br><a href="adbill.jsp">订单管理</a><br><a href="adliuyan.jsp">用户反馈</a><br><img src="img/a6.jpg" class="test"></center></div>
  <div id="text"><center>欢迎您！管理员</center></div>
  </body>
</html>
