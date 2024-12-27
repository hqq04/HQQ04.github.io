<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>修改订单信息</title>
    
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
       %>
      <center><h1>修改订单信息</h1>
    <form action="updeal2.jsp" method="post">
    商品编号:<input type="text" name="num" value=<%=num %>><br>
    购买数量:<input type="text" name="number"><br>
    收货人:<input type="text" name="people"><br>
    地址:<input type="text" name="place"><br>
    联系电话:<input type="text" name="phone"><br>
    <input type="submit" value="修改">
    
    </form></center>
  </body>
</html>
