<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML>
<html>
<head>
<title>地图查询</title>
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
<script src="<%=basePath%>js/echarts.min.js"></script>
<script src="<%=basePath%>js/china.js"></script>
<style>#main_uuu {width:800px;height:800px;}</style>
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
	 </div>
 </div>
</div>
<!--banner start here-->
<!--about start here-->
<div class="container">
	<div class="gallery">
	<div class="container">
		<div class="gallery-main">
			<div class="gallery-top">
				<h3>美好的景色在等着你</h3>
				<p>选择你想去的地方</p>
			</div>
			<div class="gallery-bottom">

                <div class="col-md-4 view view-seventh" style="margin-left:150px;margin-top:-100px">
                    <div id="main_uuu"></div>
                </div>
             <div class="clearfix"> </div>
             </div>
		</div>
	</div>
</div>
</div>
<!--about end here-->
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
        var myChart = echarts.init(document.getElementById('main_uuu'));
            var option = {
                tooltip: {
//                    show: false //不显示提示标签
                    formatter: '{b}', //提示标签格式
                    backgroundColor:"#ff7f50",//提示标签背景颜色
                    textStyle:{color:"#fff"} //提示标签字体颜色
                },
                series: [{
                    type: 'map',
                    mapType: 'china',
                    label: {
                        normal: {
                            show: true,//显示省份标签
                            textStyle:{color:"#c71585"}//省份标签字体颜色
                        },    
                        emphasis: {//对应的鼠标悬浮效果
                            show: true,
                            textStyle:{color:"#800080"}
                        } 
                    },
                    itemStyle: {
                        normal: {
                            borderWidth: .5,//区域边框宽度
                            borderColor: '#009fe8',//区域边框颜色
                            areaColor:"#ffefd5",//区域颜色
                        },
                        emphasis: {
                            borderWidth: .5,
                            borderColor: '#4b0082',
                            areaColor:"#ffdead",
                        }
                    },
                   /*  data:[
                        {name:'福建', selected:true}//福建为选中状态
                    ] */
                }],
            };
            
            myChart.setOption(option);
            myChart.on('click', function (params) {
            	var url=url=encodeURI("select/ditu.htm?province="+params.name);
                location.href =url;
            });
          	function send(str){
          		console.log(str)
          		$.ajax({
    				type:"post",
    				url:"select/ditu.htm",
    				data:{
    					province:str
    				},
    				async:false,
    				success:function(data){
    					location.href ="fenlei.jsp";
    	            }
    			});
          	}
</script>
</body>
</html>