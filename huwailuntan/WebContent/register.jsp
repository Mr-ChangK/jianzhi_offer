<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>注册页</title>
<link href="<%=basePath%>css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="<%=basePath%>js/jquery.min.js"></script>
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
<script src="<%=basePath%>js/bootstrap.min.js"></script>


</head>
<body>
<!--banner start here-->
<div class="banner-two">
  <div class="header">
	<div class="container">
		 <div class="header-main">
				<div class="logo">
					<h1><a href="index.html">户外论坛</a></h1>
				</div>
				<div class="header-right">
					<div class="head-top">
					<div class="top-nav-right">
	
			         <div class="clearfix"> </div>
				   </div>
				   
				 </div>
				 <div class="top-nav">
					<span class="menu"> <img src="images/icon.png" alt=""/></span>
					<ul class="res" >
					    <li><a href="index.html" class="active hvr-sweep-to-bottom">首页</a></li> 
						<li><a class="hvr-sweep-to-bottom" href="about.html">地图</a></li>  
						<li><a class="hvr-sweep-to-bottom" href="typo.html">分类</a></li>
						<li><a class="hvr-sweep-to-bottom" href="gallery.html">关于</a></li> 
						<li><a class="hvr-sweep-to-bottom" href="contact.html">捐赠</a></li> 
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
	 </div>
 </div>
</div>
<!--banner start here-->
<!--typo start here-->
<div class="container" sytle="margin-top:100px">
	<div style="width:60%;margin:100px auto">

	<form action="<%=basePath%>login/register.htm" method="post">
		<div class="form-group">
		<label for="exampleInputEmail1">用户名</label>
		<input type="text" class="form-control" id="name" name="name" placeholder="Email">
	    </div>
	    <div class="form-group">
		<label for="exampleInputPassword1">密码</label>
		<input type="password" class="form-control" id="password" name="passowrd" placeholder="Password">
		</div>
		<div class="form-group">
		<label for="exampleInputPassword1">邮箱</label>
		<input type="text" class="form-control" id="email" name="email" placeholder="email">
		</div>
		<div class="form-group">
		<label for="exampleInputPassword1">手机号</label>
		<input type="text" class="form-control" id="phone" placeholder="phone">
		</div>
		<div>
		<button type="submit" class="btn btn-primary btn-lg" style="margin-left:120px" id="register">注册</button>
		<button type="reset" class="btn btn-primary btn-lg" style="margin-left:280px">重置</button>
		</div>
	</form>
	</div>
	
</div>
<!--typo end here-->

<!--footer star here-->
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
	$("#register").click(function(){
		if($("#name").val()==null){
			alert("用户名不能为空");
		}
		if($("#password").val()==null){
			alert("密码不能为空");
		}
		if($("#email").val()==null){
			alert("邮箱不能为空");
		}
		if($("#phone").val()==null){
			alert("手机号不能为空");
		}
	});
});
</script>
</body>
</html>