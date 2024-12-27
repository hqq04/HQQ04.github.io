<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>所有商品</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style>
body{background-color: #ECFFDC;}
#table1 {
            width: 30%;
            height: 400px;
            padding-top:300px;
        }
         table{width:100% ;height:30px; text-align:center;}
        #img1 {
            float:left;
            width: 30%;
            height: 600px;
        }
         #img2 {
            float:right;
            width: 30%;
            height: 600px;
        }
    </style>
  </head>
  
  <body>
      <div id="img1">
      <center><img src="img/d1.jpg" width="300" title="宝玑米微氛沁爽身体冰融霜"></center>
      <br><br>
      <center><img src="img/d2.jpg" width="300" title="宝玑米衣物香氛除味喷雾"></center>
      </div>
      <div id="img2">
      <center><img src="img/d3.jpg" width="300" title="宝玑米四季水嫩羊奶霜"></center>
      <br><br>
      <center><img src="img/d4.jpg" width="300" title="宝玑米丝滑沐浴露"></center>
      </div>
    <%
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "root");
        Statement st = conn.createStatement();
        ResultSet rs = st.executeQuery("select * from product");
    %>
    <center><div id="table1"> 
        <table border="1px">
            <tr>
                <td>商品编号</td>
                <td>商品名称</td>
                <td>商品价格</td>
            </tr>
            <% while (rs.next()) { %>
            <tr>
                <td><%= rs.getString(1) %></td>
                <td><%= rs.getString(2) %></td>
                <td><%= rs.getString(3) %></td>
            </tr>
            <% } %>
        </table><br>
        <form action="deal.jsp" method="post">
            <input type="submit" value="我要下单">
            <p align="right"><a href="main.jsp" target="_blank">返回</a></p>
        </form>
    </div></center>
    <%
        rs.close();
        st.close();
        conn.close();
    %>
</body>
</html>
