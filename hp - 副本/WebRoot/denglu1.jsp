<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>管理员登录</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  <style>
  #dl1{float:right; width:50%;height:40%;margin-top:100px;margin-right:110px;padding:10px;background-color:rgba(243, 215, 202, 0.4);}
  body{border: 100px solid #FCF5D6;;margin: 0;}
  #img{position:relative;width:50%;height:10%;}
	.test{width:60% ;height:540px;}
  </style>
  </head>
  
  <body>
  <div id="img">
  <img src="img/a5.jpg" class="test">
  </div>
    <center><div id="dl1"><h1>管理员登录</h1>
    <form action="dodenglu1.jsp" method="post">
    用户名：<input type="text" name="username1"><br>
   密码：<input  type="password" name="password1"><br><br>
<input type="submit" value="登录"> <input type="reset" value="重置">    
</form></div></center>
  </body>
</html>
