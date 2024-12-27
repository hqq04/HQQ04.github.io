<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>主页</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  <style type="text/css">
	#img{position:relative;width:100%;height:60%;}
	.test{width:100% ;height:100%;}
    .shouye{float:left; width: 20%;height:40px;font-size: 20px;text-align: center;background-color:#ECFFDC;margin-bottom:20px;}
    .shouye a{text-decoration:none;color:#000000;}
h1{font-size: 50px;}
	.test1{width:100% ;height:100%;}
	#img1 {
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 20px; /* 元素之间的间距 */
            margin-bottom: 20px; /* 与下一个元素的间距 */
        }
     .txt {
            text-align: center;
        }
        b {
            font-size: 20px;
        }
	</style>
  </head>
  
  <body>
    <div id="img"><img src="img/b1.jpg" class="test"></div>
    <div class="shouye"><a href="main.jsp">首页</a></div>
    <div class="shouye"><a href="sort.jsp" target="_blank">所有商品</a></div>
    <div class="shouye"><a href="bill.jsp" target="_blank">我的订单</a></div>
	<div class="shouye"><a href="liuyan.jsp" target="_blank">用户反馈</a></div>
	<div class="shouye"><a href="denglu1.jsp" target="_blank">管理员登录</a></div>
    <div><center><h1>热门产品</h1></center></div>
    <div id="img1">
        <img src="img/c1.jpg" width="400">
        <div class="txt">
            <b>商品名称：宝玑米身体乳</b><br>
            <b>到手价：98元/2罐</b>
            <p>宝玑米精研冷制霜乳化工艺</p>
            <p>采用水包油和高含量油脂配比</p>
            <p>打造出独特冷霜体系</p>
            <p>触肤即融不黏腻 所触之处皆柔滑</p>
            <form action="deal.jsp" method="post">
                <input type="submit" value="立即购买">
            </form>
        </div>
        <img src="img/c2.jpg" width="400">
        <div class="txt">
            <b>商品名称：宝玑米手甲精华霜</b><br>
            <b>到手价：29.9元/1瓶</b>
            <p>协同补水保湿 锁住营养与水分</p>
            <p>改善死皮与倒刺 增加弹润与光泽感</p>
            <p>强韧润护甲面 改善甲面问题</p>
            <form action="deal1.jsp" method="post">
                <input type="submit" value="立即购买">
            </form>
        </div>
    </div>
    <div><center><h1>产品上新</h1></center></div>
    <div id="img1">
        <img src="img/c3.jpg" width="400">
        <div class="txt">
            <b>商品名称：宝玑米山羊奶洁面乳</b><br>
            <b>到手价：29元/1支</b>
            <p>泡沫丰富 绵密细腻</p>
            <p>蓬松云朵般包裹感</p>
            <p>易冲洗 不假滑</p>
            <p>尽享愉悦洁颜体验</p>
            <form action="deal.jsp" method="post">
                <input type="submit" value="立即购买">
            </form>
        </div>
        <img src="img/c4.jpg" width="400">
        <div class="txt">
            <b>商品名称：宝玑米凝萃精华唇油膜</b><br>
            <b>到手价：29.9元/1支</b>
            <p>独特的晶冻油霜质地</p>
            <p>一抹化油 润而不腻</p>
            <p>多重植萃油脂成分保湿润护</p>
            <p>特别添加双肽协同改善淡纹</p>
            <form action="deal1.jsp" method="post">
                <input type="submit" value="立即购买">
            </form>
        </div>
    </div>
  </body>
</html>
