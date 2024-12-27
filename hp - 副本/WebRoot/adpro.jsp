<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>商品管理</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
#sort{float:left;width:20%;height:93%;background-color:#FFFDD0;padding-top:50px;}
#sort a{text-decoration:none;color:#000000;font-size: 25px;}
  .test{width:50% ;height:auto;padding-top:20px;}
  #sort1{float:left;width:70%;height:93%;padding-top:50px;padding-left:50px;}
  table{width:60% ;height:30px; text-align:center;}
  body{background-image: url(img/a7.jpg);background-size: 100% 100%;}
</style>
  </head>
  
  <body>
    <div id="sort"><center><h1>后台管理</h1><a href="aduser.jsp">用户管理</a><br><a href="adpro.jsp">商品管理</a><br><a href="adbill.jsp">订单管理</a><br><a href="adliuyan.jsp">用户反馈</a><br><img src="img/a6.jpg" class="test"><br><br><a href="adm.jsp">返回</a></center></div>
  <div id="sort1">
  <%
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
    

    Statement st=conn.createStatement();
    ResultSet rs=st.executeQuery("select * from product");%>
    
    <table border="1px">
    <tr><td>商品编号</td><td>商品名称</td><td>价格</td><td>操作</td></tr>
    <%while(rs.next()){
     out.print("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td><a href='update1.jsp?num="+rs.getString(1)+"&proname="+rs.getString(2)+"'>修改</a> <a href='delete1.jsp?num="+rs.getString(1)+"'>删除</a></td></tr>");
    } %>

     </table></div>
   <%  rs.close();
    st.close();
    conn.close(); 
    %> 
  </body>
</html>
