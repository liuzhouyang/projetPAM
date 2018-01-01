<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="commun.jsp" %>
<!DOCTYPE html>
<html lang="">
<head>
	<meta charset="utf-8">
	<title>Retina Dashboard</title>
	<meta name="description" content="" />
	<meta name="keywords" content="" />
	<meta name="robots" content="" />
	<meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0">
	<link rel="stylesheet" href="css/style.css" media="all" />
	<link rel="stylesheet" href="css/dropzone.css" media="all" />
</head>
<body>
<section class="content">
	<section class="widget">
		<header>
			<span class="icon">&#127748;</span>
			<hgroup>
				<h1>Media gallery</h1>
				<h2>All uploaded files</h2>
			</hgroup>
			<aside>
				<span>
					<a href="#">&#9881;</a>
					<ul class="settings-dd">
						<li><label>Option a</label><input type="checkbox" /></li>
						<li><label>Option b</label><input type="checkbox" checked="checked" /></li>
						<li><label>Option c</label><input type="checkbox" /></li>
					</ul>
				</span>
			</aside>
		</header>
		<div class="content">
			<div id="dropzone" class="dropzone gallery">
				<a href="#"><img src="images/mobile-stats.png" alt="" width="200" height="150" /></a> 
				<a href="#"><img src="images/mobile-dashboard.png" alt="" width="200" height="150" /></a> 
				<a href="#"><img src="images/mobile-stats.png" alt="" width="200" height="150" /></a> 
				<a href="#"><img src="images/mobile-dashboard.png" alt="" width="200" height="150" /></a> 
				<a href="#"><img src="images/mobile-stats.png" alt="" width="200" height="150" /></a> 
				<a href="#"><img src="images/mobile-dashboard.png" alt="" width="200" height="150" /></a> 
				<a href="#"><img src="images/mobile-stats.png" alt="" width="200" height="150" /></a> 
				<a href="#"><img src="images/mobile-dashboard.png" alt="" width="200" height="150" /></a> 
				<a href="#"><img src="images/mobile-stats.png" alt="" width="200" height="150" /></a> 
				<a href="#"><img src="images/mobile-dashboard.png" alt="" width="200" height="150" /></a> 
				<a href="#"><img src="images/mobile-stats.png" alt="" width="200" height="150" /></a> 
			</div>
		</div>
	</section>
</section>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8/jquery.min.js"></script>
<script src="js/jquery.wysiwyg.js"></script>
<script src="js/custom.js"></script>
<script src="js/jquery.checkbox.min.js"></script>
<!--<script src="js/flot.js"></script>
<script src="js/flot.resize.js"></script>
<script src="js/flot-time.js"></script>
<script src="js/flot-pie.js"></script>
<script src="js/flot-graphs.js"></script>
<script src="js/cycle.js"></script>-->
<script src="js/jquery.tablesorter.min.js"></script>
<!--<script src="js/dropzone.js"></script>-->
</body>
</html>