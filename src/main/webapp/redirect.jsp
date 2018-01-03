<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
	<head>
	<meta charset="utf-8">
	<base href="<%=basePath%>">
	</head>
	<body>
   	 <script>
   		var info = '<%=request.getAttribute("info")%>' ;
   		alert(info);
		window.location = '<%=request.getAttribute("page")%>' ;
 	 </script> 
  </body>
</html>
