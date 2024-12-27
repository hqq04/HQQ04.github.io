<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>updeal1.jsp</title>
    
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
         <%
    request.setCharacterEncoding("utf-8"); 
    String num=request.getParameter("num"); 
    String proname=request.getParameter("proname");
    String price=request.getParameter("price");
    double p1=Double.parseDouble(price);
    String stock=request.getParameter("stock");
    int s1=Integer.parseInt(stock);
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
    
    PreparedStatement ps=conn.prepareStatement("update product set price=?, stock=? where num=?");
    
    ps.setDouble(1,p1);
    ps.setInt(2,s1);
    ps.setString(3,num);

    
    int a=ps.executeUpdate();
    
    if(a!=0){
      request.getRequestDispatcher("adpro.jsp").forward(request,response);
    
    }else{
    
      out.print("fault!");
    }
   

    ps.close();
    conn.close();  
    
     %>
  </body>
</html>
