<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>doadinfo.jsp</title>
    
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
    String title=request.getParameter("title");
   String date=request.getParameter("date");
   String text=request.getParameter("text");
   
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
    
    PreparedStatement ps=conn.prepareStatement("insert into gonggao values(?,?,?)");
    ps.setString(1,title);
    ps.setString(2,date);
    ps.setString(3,text);

    
    int a=ps.executeUpdate();
    
    if(a!=0){
     out.println("<script language='javascript'>alert('发布成功！');window.location.href='adinfo.jsp';</script>");
    
    }else{
    
      out.print("出现错误!");
    }
    
    
    ps.close();
    conn.close();  
    
     %>
  </body>
</html>
