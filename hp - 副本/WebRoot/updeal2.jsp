<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'updeal.jsp' starting page</title>
    
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
    String number=request.getParameter("number");
    int n1=Integer.parseInt(number);
    String people=request.getParameter("people");
    String place=request.getParameter("place");
    String phone=request.getParameter("phone");
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
    
    PreparedStatement ps=conn.prepareStatement("update product set number=?, people=?,place=?, phone=?,where num=?");
    
    ps.setInt(1,n1);
    ps.setString(2,people);
    ps.setString(3,place);
    ps.setString(4,phone);
ps.setString(5,num);
    
    int a=ps.executeUpdate();
    
    if(a!=0){
      request.getRequestDispatcher("adbill.jsp").forward(request,response);
    
    }else{
    
      out.print("fault!");
    }
   

    ps.close();
    conn.close();  
    
     %>
  </body>
</html>
