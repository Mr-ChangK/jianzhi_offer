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
	 </div>
 </div>
</div>
	<div class="package">
		<div class="container">
			<div class="package-main">
				<input id="articleid" type="hidden" value="${article.id}"/>
				<!--banner start here-->
				<div>
					<h2>${article.title}</h2>
				</div>
				<div style="margin-top: 40px" class="bg-info">
					<p class="lead">${article.content}</p>
				</div>
			</div>
		</div>
	</div>
	<div class="package">
		<div class="container">
			<div class="package-main">
				<c:if test="${!empty list}">
				<div>
					<h3>评论列表</h3>
				</div>
					<table class="table table-condensed" sytle="border:1px solid #0094ff;">
						<c:forEach items="${list}" var="comment">
							<tr style="height:40px">
								<td style="height:40px"><font style="font-size:20px">${comment.content}</font></td>
								<td >${comment.userid}</td>
							</tr>
						</c:forEach>
					</table>
				</c:if>
			</div>
		</div>
	</div>
	<!-- 添加评论 -->
	<div class="package" id="ppp">
		<div class="container">
			<div class="package-main">
				<div style="margin-top: 33px">
					<label>内容:</label>
					<textarea id="comment_add" class="form-control" rows="10"
						style="resize: none; font-family: sans-serif; font-size: 23px;"></textarea>
				</div>
				<div style="margin-top: 33px">
					<button id="send" class="btn btn-default" style="float: right;">发表</button>
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
		$("#ppp").hide();
		$("#showuser").hide();
		$("#loginandregister").show();
	}else{
		$("#ppp").show();
		$("#showuser").show();
		$("#loginandregister").hide();
	}
	$("#send").click(function(){
		if($("#comment_add").val()==null||$("#comment_add").val()==""){
			alert("评论不能为空")
		}
		$.ajax({
			type:"post",
			url:"../comment/add.htm",
			dataType:"json",
			data:{      
				userid:$("#session").val(),
				objectid:$("#articleid").val(),
				content:$("#comment_add").val()
			},
			success:function(){
				location.href ="show.jsp";
            }
		});
	});
});

</script>
</body>
</html>