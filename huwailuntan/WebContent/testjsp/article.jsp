<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="js/jquery.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<input id="session" type="hidden" value=${sessionScope.user}>
	<div>
		省份：<input id="provincename" type="text"/>
		类别:<input id="itmename" type="text"/>
		标题:<input id="title" type="text"/>
	</div>
	<div>
		内容:<textarea id="content" style="width: 611px; height: 205px"></textarea>
	</div>
	
	<button id="b" >111111</button>
</body>
<script>
	$(function(){
		$("#b").click(function(){
			console.log($("#session").val());
			if($("#session").val()==null||$("#session").val()==""){
				console.log(1111111);
				location.href="enter.htm?method=login"
			}
			var provincename=$("#provincename").val();
			var itemname=$("#itmename").val();
			var title=$("#title").val();
			var content=$("#content").val();
			var userid=$("#session").val();
			console.log(content);
			$.ajax({
				type:"post",
				url:"article/add.htm",
				data:{
					userid:userid,
					province:provincename,
					item:itemname,
					title:title,
					context:content
				},
				success:function(){
	           		console.log("1111111111");
	            }
			});
		}); 
	});
</script>
</html>