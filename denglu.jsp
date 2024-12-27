<%@ page language="java" import="java.util.*,java.net.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>登录页面</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
	#dl{float:right;width:50%;height:40%; background-color:rgba(243, 215, 202, 0.4);margin-top:5px;margin-right:110px;padding:10px;}
	#zc1{float:right;width:50%;height:25%;margin-right:110px;}
	body{border: 100px solid pink;margin: 0;}
	h2{font-size: 50px;color:#FFC68C;}
	#img{position:relative;width:50%;height:10%;}
	.test{width:60% ;height:540px;}
	</style>
  </head>
  
  <body>
  <%   
      request.setCharacterEncoding("utf-8"); 
      String username="";  
      String password="";  
      Cookie[] cookies = request.getCookies();  
      if(cookies!=null&&cookies.length>0)  
      {  
           for(int i=0;i<cookies.length;i++)  
           {  
              if(cookies[i].getName().equals("username"))  
              {  
                   username =URLDecoder.decode(cookies[i].getValue(),"utf-8");   
              }else if(cookies[i].getName().equals("password"))  
              {  
                   password =cookies[i].getValue();  
              }  
           }  
      }  
    %>
    <div id="img">
  <img src="img/a1.jpg" class="test">
  </div>
    <div id="zc1"><center><h2>欢迎来到宝玑米！</h2>
    </center></div>
    <center><div id="dl">
    <h1>登录</h1>
    <form action="dodenglu.jsp" method="post">
    用户名：<input type="text" name="username" value="<%=username %>"><br>
   密码：<input  type="password" name="password" value="<%=password %>"><br>
  <input type="checkbox" name="isUseCookie" checked="checked" value="check"/>十天内记住我的登录状态<br>
  <p align="right"><a href="zhuce.jsp" target="_blank">注册</a></p><br>
<input type="submit" value="登录"> <input type="reset" value="重置">
    </form></div></center>
  </body>
</html>
