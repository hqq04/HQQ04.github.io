<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>dodenglu1.jsp</title>
    
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
       String name1=request.getParameter("username1");  
       String psword1=request.getParameter("password1");
      
       
       
       if(name1==""||psword1==""){
    	   out.println("<script language='javascript'>alert('用户名或密码不得为空！');window.location.href='denglu1.jsp';</script>");
       }

       Class.forName("com.mysql.jdbc.Driver");
       Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
       PreparedStatement pStmt = conn.prepareStatement("select * from adm where name1 =?");  
       pStmt.setString(1, name1);
       ResultSet rs = pStmt.executeQuery();  
         if(rs.next()){ 
        	 String pd=rs.getString(2);
        	 if(pd.equals(psword1)){    
        	 out.println("<script language='javascript'>alert('登录成功');window.location.href='adm.jsp';</script>");}
        	 else{ 
        	 out.println("<script language='javascript'>alert('你不是管理员，请退出！');window.location.href='main.jsp';</script>");}    
         }
       %>  
  </body>
</html>
