<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
	<meta charset="utf-8">
	<base href="<%=basePath%>">
	</head>
	<body>
   	 <script>
		alert("email ou password error");
		window.location ="index.jsp";
 	 </script> 
  </body>
</html>
