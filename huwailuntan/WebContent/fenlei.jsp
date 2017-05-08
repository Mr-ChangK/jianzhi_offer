<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
    <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>户外论坛</title>
<link href="<%=basePath %>css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="<%=basePath %>js/jquery.min.js"></script>
<!-- Custom Theme files -->
<link href="<%=basePath %>css/style.css" rel="stylesheet" type="text/css" media="all"/>
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Treks Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="<%=basePath %>application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--script-->
<script src="<%=basePath %>js/menu_jquery.js"></script>
<script src="<%=basePath %>js/bootstrap.min.js"></script>


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
				<<div class="header-right">
					<div class="head-top" id="showuser">
						<div class="top-nav-right">
							<span>欢迎</span> ${sessionScope.user}
							<input id="session" type="hidden" value="${sessionScope.user}"/>
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
			         <div class="clearfix"> </div>
				   </div>
				   
				 </div>
				 <div class="top-nav">
					<span class="menu"> <img src="<%=basePath %>images/icon.png" alt=""/></span>
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
	 </div>
 </div>
</div>
<div class="package">
	<div class="container">
		<div class="package-main">
<!--banner start here-->
<!--typo start here-->
	<ul id="myTab" class="nav nav-tabs">
		<li class="active">
			<a href="#total" data-toggle="tab">全部</a>
		</li>
		<li>
			<a href="#scenery" data-toggle="tab">景点</a>
		</li>
		<li>
			<a href="#hotel" data-toggle="tab">酒店</a>
		</li>
		<li>
			<a href="#travel" data-toggle="tab">旅行社</a>
		</li>
		<div style="float:right">
			<button id="add_post" class="btn btn-default">发帖</button>
		</div>
	</ul>
<!--typo end here-->
	<div class="tab-content">
		<div id="total" class="tab-pane active">
			<c:if test="${!empty list}">
			<table class="table table-hover">
				<c:forEach items="${list}" var="article">
					<tr>
						<td><h3><a href="<%=basePath %>article/find.htm?articleid=${article.id}">${article.title}</a></h3></td>
					</tr>				
				</c:forEach>
			</table>
			</c:if>
		</div>
		<div id="scenery" class="tab-pane">
			<c:if test="${!empty list}">
			<table>
				<c:forEach items="${list}" var="article">
					<c:if test="${article.itemid==3}">
						<tr>
							<td><h3><a href="<%=basePath %>article/find.htm?articleid=${article.id}">${article.title}</a></td>
						</tr>				
					</c:if>
				</c:forEach>
			</table>
			</c:if>
		</div>
		<div id="hotel" class="tab-pane">
			<c:if test="${!empty list}">
				<c:forEach items="${list}" var="article">
					<c:if test="${article.itemid==1}">
						<tr>
							<td><h3><a href="<%=basePath %>article/find.htm?articleid=${article.id}">${article.title}</a></td>
						</tr>				
					</c:if>
				</c:forEach>
			</c:if>
		</div>
		<div id="travel" class="tab-pane">
			<c:if test="${!empty list}">
				<c:forEach items="${list}" var="article">
					<c:if test="${article.itemid==2}">
						<tr>
							<td><h3><a href="">${article.title}</a></td>
						</tr>				
					</c:if>
				</c:forEach>
			</c:if>
		</div>
	</div>
</div>
</div>
</div>

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
	console.log($("#session").val());
	if($("#session").val()==null||$("#session").val()==""){
		$("#showuser").hide();
		$("#loginandregister").show();
	}else{
		$("#showuser").show();
		$("#loginandregister").hide();
	}
	$("#add_post").click(function(){
		if($("#session").val()==null||$("#session").val()==""){
			alert("发帖前请登录");
		}else{
			location.href="<%=basePath%>enter.htm?method=addarticle"
		}
	});
});
</script>
</body>
</html>