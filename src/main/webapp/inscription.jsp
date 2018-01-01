<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Inscription</title>
	<base href="<%=basePath%>">
	<meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0">
	<link rel="stylesheet" href="css/style.css" media="all" />
</head>
<body class="login">
	<section>
		<h1><strong>Inscription</strong> </h1>
		<form action="user/inscription.do" method="post" >
			<input type="text" name="nom" value="nom"/> <font color="white">${nomError}</font>
    		<input type="text" name="prenom" value="prenom"/> <font color="white">${eprenomError}</font>
    		<input type="text" name="email" value="email"/> <font color="white">${emailError}</font>
    		<input type="text" name="password" value="password"/> <font color="white">${pwError}</font>
			<button class="blue">s'inscire</button>
		</form>
		
	</section>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js"></script>
<script type="text/javascript">
$(function(){
	$('.login button').click(function(e){ 
		var toLoad = $(this).attr('href');  
 
		$(this).addClass("loading"); 	
		setTimeout(function(){window.location = toLoad}, 100000);	  
		e.preventDefault

});
});
</script>
</body>
</html>
