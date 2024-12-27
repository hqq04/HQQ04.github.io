<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>doregister.jsp</title>
    
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
       String name=request.getParameter("name");  
       String psword=request.getParameter("psword");
       String psword2=request.getParameter("psword2");
       
       
       if(name!=""&&psword!=""&&psword2!=""&&psword.equals(psword2)){
    	   Class.forName("com.mysql.jdbc.Driver"); 
           Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
           PreparedStatement pStmt = conn.prepareStatement("select * from userinfo where name =?");  
           pStmt.setString(1, name);
           ResultSet rs = pStmt.executeQuery();  
             if(rs.next()){  
                 out.println("<script type='text/javascript'>alert('该用户已存在，请重新注册！');window.location.href='zhuce.jsp';</script>");      
             }else{  
                 PreparedStatement tmt = conn.prepareStatement("Insert into userinfo values(?,?)");  
                 tmt.setString(1, name);
                 tmt.setString(2, psword);
                     int rst = tmt.executeUpdate();  
                     if (rst != 0){  
                           out.println("<script type='text/javascript'>alert('用户注册成功！');window.location.href='denglu.jsp';</script>");                     
                     }else{ 
                        
                        out.println("<script type='text/javascript'>alert('用户注册失败！');window.location.href='zhuce.jsp';</script>");                
                     }  
             }
       }
       
       if(name!=""&&psword!=""&&psword2!=""&&psword.equals(psword2)==false){
    	   out.println("<script type='text/javascript'>alert('密码不相同！');window.location.href='zhuce.jsp';</script>");
    	   }
    	   
       if(name==""||psword==""||psword2==""){
    	   out.println("<script type='text/javascript'>alert('用户名或密码不得为空！');window.location.href='zhuce.jsp';</script>");
      }
    	   
    	   
       %>
  </body>
</html>
