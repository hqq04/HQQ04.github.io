<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>填写订单信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
#dd{width:30%;height:40%;background-color:rgba(255,255,255,0.4);margin-top:200px;padding:5px;}
body{
background-image: url(img/a3.jpg);background-size: 100% 100%;
}
</style>
  </head>
  
  <body>
  <center><div id="dd"><h1>请填写订单信息</h1>
    <form action="dodeal.jsp" method="post">
    商品编号：<input type="text" name="num"><br>
    购买数量：<input type="text" name="number"><br>
    收货人：<input type="text" name="people"><br>
    收货地址：<input type="text" name="place"><br>
    联系方式：<input type="text" name="phone"><br>
    <input type="submit" value="提交订单"></form></div></center>
  </body>
</html>
