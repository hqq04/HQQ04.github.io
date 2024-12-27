<%@ page language="java" import="java.util.*,java.net.*,java.sql.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>dodenglu.jsp</title>
    
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
       String isUseCookies = request.getParameter("isUseCookie");   
       String name=request.getParameter("username");  
       String psword=request.getParameter("password");
       
       
       
       if(name==""||psword==""){
    	   out.println("<script language='javascript'>alert('用户名或密码不得为空！');window.location.href='denglu.jsp';</script>");
       }

       Class.forName("com.mysql.jdbc.Driver");  
       Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
       PreparedStatement pStmt = conn.prepareStatement("select * from userinfo where name =?");  
       pStmt.setString(1, name);
       ResultSet rs = pStmt.executeQuery();  
         if(rs.next()){ 
        	 String pd=rs.getString(2);
        	 if(pd.equals(psword)){
        	 
        	 
        	 
        	     if(isUseCookies!=null&&isUseCookies.equals("check") )
       {    
          Cookie[] cookies = request.getCookies();  
          if(cookies!=null&&cookies.length>0)  
          {  
             for(int i=0;i<cookies.length;i++)  
             {  
                if(!cookies[i].getName().equals("username")&&!cookies[i].getName().equals("password"))  
                {  
                      
                      String username = URLEncoder.encode(name,"utf-8");  
                       
                      String password =psword;  
            
            
                     Cookie usernameCookie = new Cookie("username",username);  
                     usernameCookie.setMaxAge(864000); 
                     response.addCookie(usernameCookie);
          
          
                      Cookie passwordCookie = new Cookie("password",password);  
                      passwordCookie.setMaxAge(864000);
                      response.addCookie(passwordCookie); 
          
                  } 
              }
            }
       }  
       else  
       {  
          Cookie[] cookies = request.getCookies();  
          if(cookies!=null&&cookies.length>0)  
          {  
             for(int i=0;i<cookies.length;i++)  
             {  
                if(cookies[i].getName().equals("username")||cookies[i].getName().equals("password"))  
                {  
                	   cookies[i].setMaxAge(0);   
                    response.addCookie(cookies[i]);   
                } 
            
                 
             }  
          }  
       }  
     
request.setAttribute("name", name);     
        	 out.println("<script language='javascript'>alert('用户登录成功！');window.location.href='main.jsp';</script>");}
        	 else{ 
        	 out.println("<script language='javascript'>alert('用户密码错误！');window.location.href='denglu.jsp';</script>");}
             
             
         }else{    
        	 out.println("<script language='javascript'>alert('该用户不存在，请注册！');window.location.href='zhuce.jsp';</script>");
         }  
       %>  
  </body>
</html>
