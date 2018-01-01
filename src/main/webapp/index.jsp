<%@page import="javafx.scene.control.Alert"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Carrot ERP</title>
	<base href="<%=basePath%>">
	<meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0">
	<link rel="stylesheet" href="css/style.css" media="all" />
</head>

<body class="login">
	<section>
		<h1><strong>Carrot</strong> ERP</h1>
		<form action="user/login.do" method="post" >
			<input type="text" value="email" name="email" /> 
			<input type="password" value="password" name="password"/>
			<button class="blue">Login</button>
		</form>
		<p><a href="inscription.jsp">Créez votre compte</a></p>
	</section>
	

		
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js"></script>
<script type="text/javascript">
// Page load delay by Curtis Henson - http://curtishenson.com/articles/quick-tip-delay-page-loading-with-jquery/
$(function(){
	$('.login button').click(function(e){ 
		var toLoad = $(this).attr('href');  
		setTimeout(function(){window.location = toLoad}, 10000);	  
		e.preventDefault
	});

});
</script>
</body>
</html>