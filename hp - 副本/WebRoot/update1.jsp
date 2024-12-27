<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>修改页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
   <% request.setCharacterEncoding("utf-8");
      String num=request.getParameter("num");
      String proname=request.getParameter("proname");
      String xm=new String(proname.getBytes("ISO-8859-1"),"utf-8");  
       %>
      <center><h1>修改商品信息</h1>
    <form action="updeal1.jsp" method="post">
    商品编号:<input type="text" name="num" value=<%=num %>><br>
    商品名称:<input type="text" name="proname" value=<%=xm %>><br>
    价格:<input type="text" name="price"><br>
    库存:<input type="text" name="stock"><br>
    <input type="submit" value="修改">
    
    </form></center>
  </body>
</html>
