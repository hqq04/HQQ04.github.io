<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>用户反馈</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
body{
background-image: url(img/a4.jpg);background-size: 100% 100%;
}
#ly{margin-top:150px;}
</style>
  </head>
  
  <body>
  <center><div id="ly">
    <center><h1>用户反馈</h1></center>
    <form action="doliuyan.jsp" method="post">
    请输入用户名：<input type="text" name="name"><br><br>
    <textarea name="con" rows="20" cols="80"></textarea><br><br>
    <input type="submit" value="提交"></form></div></center>
  </body>
</html>
