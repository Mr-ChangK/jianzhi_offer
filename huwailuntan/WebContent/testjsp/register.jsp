<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="<%=basePath%>login/register.htm" method="post">
		用户名：<input id="name" name="name" type="text">
		密码：<input id="password" name="password" type="password">
		email:<input id="email" name="email" type="text">
		<input type="submit">
		<input type="reset">
	</form>
</body>
</html>