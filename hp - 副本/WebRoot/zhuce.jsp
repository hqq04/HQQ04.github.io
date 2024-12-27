<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>注册页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
    <style type="text/css">
	#zc{position:relative;width:30%;height:40%;background-color:rgba(255,255,255,0.3);margin-top:200px;padding:5px;}
	body{background-image: url(img/a2.jpg);background-size: 100% 100%;}
	</style>
  </head>
  
  <body>
    <center><div id="zc"><h1>注册</h1>
   <form action="dozhuce.jsp" method="post">
    用户名：<input type="text" name="name"><br>
   密码：<input  type="password" name="psword"><br>
  确认密码：<input  type="password" name="psword2"><br>
<input type="submit" value="注册"> <input type="reset" value="重置">
    </form></div></center>
  </body>
</html>
