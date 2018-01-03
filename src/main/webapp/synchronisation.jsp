<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="commun.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Synchronisation</title>
	<meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0">
	<link rel="stylesheet" href="css/style.css" media="all" />
</head>
<body>
<section class="content" style="marginTop : 0;">
	<section class="widget">
		<header>
			<span class="icon">&#128196;</span>
			<hgroup>
				<h1>Synchroniser commandes</h1>
				<h2>selecter un fichier</h2>
			</hgroup>
		</header>
		<form action="commande/synchroniser.do" method="POST" enctype="multipart/form-data" >
			<input type="file" name="fichier"/><br>
			<input type="submit" value="Synchroniser commandes" class="green" style="width:220px; color:white; margin:5px 10px 10px 10px;" />
		</form>
		<div class="content no-padding timeline">
			<div class="tl-post">
				<span class="icon">&#59185;</span>
				<p>blog page. <span class="time">Created 1 hour ago</span></p>
			</div>
			<div class="tl-post">
				<span class="icon">&#59185;</span>
				<p>blog page. <span class="time">Created 2 hours ago</span></p>
			</div>
			<div class="tl-post">
				<span class="icon">&#59185;</span>
				<p>blog page. <span class="time">Created 9 hours ago</span></p>
			</div>
			<div class="tl-post">
				<span class="icon">&#59185;</span>
				<p>blog page. <span class="time">Created 1 days ago</span></p>
			</div>
			<div class="tl-post">
				<span class="icon">&#59185;</span>
				<p> blog page. <span class="time">Created 1 days ago</span></p>
			</div>
			<div class="tl-post">
				<span class="icon">&#9881;</span>
				<p>service page. <span class="time">Created 2 days</span></p>
			</div>
			<div class="tl-post">
				<span class="icon">&#9881;</span>
				<p>service page. <span class="time">Created 2 days ago</span></p>
			</div>
			<div class="tl-post">
				<span class="icon">&#9881;</span>
				<p>service page. <span class="time">Created 2 days ago</span></p>
			</div>
		</div>
	</section>
</section>
<%@ include file="footer.jsp" %>