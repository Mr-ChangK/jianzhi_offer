<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
<head>
<title>Home</title>
<link href="<%=basePath%>css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="<%=basePath%>js/jquery-1.11.0.min.js"></script>
<!-- Custom Theme files -->
<link href="<%=basePath%>css/style.css" rel="stylesheet" type="text/css" media="all"/>
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Treks Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="<%=basePath%>application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--script-->
<script src="<%=basePath%>js/menu_jquery.js"></script>
</head>
<body>
<!--banner start here-->
<div class="banner">
  <div class="header">
	<div class="container">
		 <div class="header-main">.
				<div class="logo">
					<h1><a href="index.html">户外论坛</a></h1>
				</div>
				<div class="header-right">
					<div class="head-top" id="showuser">
						<div class="top-nav-right">
							<span>欢迎</span> ${sessionScope.user}
							<input id="session" type="hidden" value="${sessionScope.user}" />
							<a href="<%=basePath%>login/out.htm">注销</a>
						</div>
					</div>
					<div class="head-top" id="loginandregister">
					<div class="top-nav-right">
						<div id="loginContainer"><a href="#" id="loginButton"><span>登录</span></a>
							    <div id="loginBox">                
							        <form id="loginForm" action="<%=basePath%>login/in.htm" method="post">
							                <fieldset id="body">
							                	<fieldset>
							                          <label for="email">用户名</label>
							                          <input type="text" id="name" name="name">
							                    </fieldset>
							                    <fieldset>
							                            <label for="password">密码</label>
							                            <input type="password" id="password" name="password">
							                     </fieldset>
							                    <input type="submit" id="login" value="登录">
							            	</fieldset>
								 	</form>
					        </div>
						</div>
				   </div>
				   <div class="top-nav-right">
						<a href="enter/enter.htm?method=register">注册</a>
				   </div>
				 </div>
				 <div class="top-nav">
					<span class="menu"> <img src="images/icon.png" alt=""/></span>
					<ul class="res" >
					    <li><a href="<%=basePath %>index.jsp" class="active hvr-sweep-to-bottom">首页</a></li> 
						<li><a class="hvr-sweep-to-bottom" href="<%=basePath %>ditu.jsp">地图</a></li>  
						<li><a class="hvr-sweep-to-bottom" href="<%=basePath %>select/all.htm">分类</a></li>
						<li><a class="hvr-sweep-to-bottom" href="<%=basePath %>gallery.html">关于</a></li> 
						<li><a class="hvr-sweep-to-bottom" href="<%=basePath %>contact.html">捐赠</a></li> 
					 </ul>
                        <div class="clearfix"> </div>
					<!-- script-for-menu -->
						 <script>
						   $( "span.menu" ).click(function() {
							 $( "ul.res" ).slideToggle( 300, function() {
							 // Animation complete.
							  });
							 });
						</script>
		        <!-- /script-for-menu -->
				</div>
		    </div>
		 <div class="clearfix"> </div>
	  </div>
		 <div class="banner-bottom">
		 	<h3>进入我们的旅程吧</h3>
		 	<!--<a href="#" class="hvr-sweep-to-right">Read More</a>-->
		 </div>
	 </div>
 </div>
</div>
<!--banner start here-->
<!--banner strip here-->
<div class="ban-strip">
	<div class="container">
		<div class="banstrip-main">
			   <div class="col-md-4 ban-strip-grid">
			   	  <div class="col-md-4 bann-strip-img">
			   	  	 <span class="glyphicon glyphicon-plane" aria-hidden="true"> </span>
			   	  </div>
			   	  <div class="col-md-8 bann-strip-text">
			   	  	  <h4>服务</h4>
			   	  	  <p>热情周到的服务</p>
			   	  </div>
			   	<div class="clearfix"> </div>
			   </div>
			   <div class="col-md-4 ban-strip-grid"> 
			   	  <div class="col-md-4 bann-strip-img">
			   	  	 <span class="glyphicon glyphicon-cloud" aria-hidden="true"> </span>
			   	  </div>
			   	  <div class="col-md-8 bann-strip-text">
			   	  	  <h4>缘分</h4>
			   	  	  <p>在这里你能找到与你更相配的人</p>
			   	  </div>
			   	<div class="clearfix"> </div>
			   </div>
			   <div class="col-md-4 ban-strip-grid">
			   	  <div class="col-md-4 bann-strip-img">
			   	  	 <span class="glyphicon glyphicon-star-empty" aria-hidden="true"> </span>
			   	  </div>
			   	  <div class="col-md-8 bann-strip-text">
			   	  	  <h4>温暖</h4>
			   	  	  <p>这里就是你外出的一个寄托所，我们陪你</p>
			   	  </div>
			   	<div class="clearfix"> </div>
			   </div>
			<div class="clearfix"> </div>
		</div>
	</div>
</div>
<!--banner strip end here-->
<!--package start here-->
<div class="package">
	<div class="container">
		<div class="package-main">
			 <div class="pack-top">
			 	<h3>这是你喜欢的地方吗</h3>
			 </div>
			 <div class="pack-bott">
			  <div class="col-md-3 package-grid">
			  	<img src="images/p1.jpg" alt="" class="img-responsive">
			  	<h4>温暖的气候</h4>
			  	
			  </div>
			  <div class="col-md-3 package-grid">
			  	<img src="images/p2.jpg" alt="" class="img-responsive">
			  	<h4>舒适的享受</h4>
		
			  </div>
			 <div class="col-md-3 package-grid">
			  	<img src="images/p3.jpg" alt="" class="img-responsive">
			  	<h4>都市生活</h4>
		
			  </div>
			  <div class="col-md-3 package-grid">
			  	<img src="images/p4.jpg" alt="" class="img-responsive">
			  	<h4>安静氛围</h4>
			 
			  </div>
			<div class="clearfix"> </div>
			</div>
		</div>
	</div>
</div>
<!--package end here-->
<!--welcome start here-->
<div class="welcome">
	<div class="welcome-main">
		<div class="col-md-6 welcome-left">
			 <div class="wel-text">
			   	<h3>WELCOME</h3>
			   	<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio</p>
			 </div>
		</div>
		<div class="col-md-6 welcome-right">
			   	
		</div>
	 <div class="clearfix"> </div>
	</div>
</div>
<!--welcome end here-->
<!--trip grig start here-->
<div class="trip">
	<div class="trip-main">
			   <div class="col-md-6 trip-left">
			   </div>
			   <div class="col-md-6 trip-right">
			   	 <h3>Visit Places</h3>
			   	<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio</p>
			   </div>
			<div class="clearfix"> </div>
	</div>
</div>	

<div class="footer">
  <div class="container">
	  <div class="footer-main">
		<div class="footer-top">
			<div class="col-md-3 footer-news">
			<h5>搜索你喜欢的</h5>
			</div>
			<div class="col-md-9 ftr-email">
				<form>
					<input type="text" value="Enter email" onFocus="this.value='';" onBlur="if (this.value == '') {this.value ='Enter email';}">
					<input type="submit" value="SUBSCRIBE" >
				</form>
			</div>
			<div class="clearfix"> </div>
		</div>
	  <div class="clearfix"> </div>
		</div>
		<div class="copyright">
				<p>作者：常宏凯       邮箱：changhongkaimail@163.com</p>
		</div>
	</div>
</div>
<!--footer end here-->
<script>
$(function(){
	console.log(11111111);
	console.log($("#session").val());
	console.log(11111111);
	if($("#session").val()=="++"||$("#session").val()==""){
		$("#showuser").hide();
		$("#loginandregister").show();
	}else{
		$("#showuser").show();
		$("#loginandregister").hide();
	}
});
</script>
</body>
</html>
