<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>我的订单</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">table{width:40% ;height:30px; text-align:center;}
        /* 网页整体样式，这里简单设置了高度以便看到底部滚动效果 */
        body {
            min-height: 100vh;
            margin: 0;
            display: flex;
            flex-direction: column;
            background-color: #FCF5D6;
        }
       .image-scroll-container {
            bottom: 0;
            left: 0;
            width: 100%;
            overflow: hidden;
            background-color: #f0f0f0; /* 可设置背景色便于观察，可选 */
        }

       .image-scroll {
            display: flex;
            animation: scrollImages 10s linear infinite;
        }

       .image-scroll img {
            width: 20%;
            margin-right: 10px;
        }
        @keyframes scrollImages {
            from {
                transform: translateX(0);
            }

            to {
                transform: translateX(-100%);
            }
        }
</style>
  </head>
  
  <body>
    <div class="image-scroll-container">
        <div class="image-scroll">
            <img src="img/e1.jpg">
            <img src="img/e2.jpg">
            <img src="img/e3.jpg">
            <img src="img/e4.jpg">
            <img src="img/e5.jpg">
            <img src="img/e6.jpg">
            <img src="img/e7.jpg">
            <img src="img/e8.jpg">
        </div>
    </div>
    <%
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
    

    Statement st=conn.createStatement();
    ResultSet rs=st.executeQuery("select * from billinfo");%>
    <center><h1>我的订单</h1>
    <table border="1px">
    <tr><td>商品编号</td><td>购买数量</td><td>收货人</td><td>地址</td><td>联系方式</td><td>操作</td></tr>
    <%while(rs.next()){
     out.print("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getInt(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td><a href='delete2.jsp?num="+rs.getString(1)+"'>删除</a></td></tr>");
    } %>
     </table></center>
     
   <%  rs.close();
    st.close();
    conn.close(); 
    %> 
  </body>
</html>
