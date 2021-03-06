<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="">
<head>
	<meta charset="utf-8">
	<title>Carrot ERP</title>
	<base href="<%=basePath%>">
	<meta name="description" content="" />
	<meta name="keywords" content="" />
	<meta name="robots" content="" />
	<meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0">
	<link rel="stylesheet" href="css/style.css" media="all" />
</head>
<body>
<div class="testing">
	<header class="main">
		<h1><strong>Carrot</strong> ERP</h1>
	</header>
	<section class="user">
		<div class="profile-img">
			<p><img src="images/carrot.png" alt="" height="40" width="40" /> Welcome back <%= session.getAttribute("username") %></p>
		</div>
		<div class="buttons">
			<button class="ico-font">&#9206;</button>
			<span class="button dropdown">
				<a href="#">Mail <span class="pip">6</span></a>
				<ul class="notice">
					<li>
						<hgroup>
							<h1>Hi, I need a favour</h1>
							<h2>John Doe</h2>
							<h3>Lorem ipsum dolor sit amet, consectetuer sed aidping putamus delo de sit felume...</h3>
						</hgroup>
						<p><span>11:24</span></p>
					</li>
					<li>
						<hgroup>
							<h1><span class="icon">&#59154;</span>Hi, I need a favour</h1>
							<h2>John Doe</h2>
							<h3>Lorem ipsum dolor sit amet, consectetuer sed aidping putamus delo de sit felume...</h3>
						</hgroup>
						<p><span>11:24</span></p>
					</li>
					<li>
						<hgroup>
							<h1><span class="icon">&#59154;</span>Hi, I need a favour</h1>
							<h2>John Doe</h2>
							<h3>Lorem ipsum dolor sit amet, consectetuer sed aidping putamus delo de sit felume...</h3>
						</hgroup>
						<p><span>11:24</span></p>
					</li>
				</ul>
			</span> 
			<span class="button">Profil</span>
			<span class="button blue"><a href="user/logout.do">Logout</a></span>
		</div>
	</section>
</div>

<nav>
	<ul>
		<li class="section"><a href="dashboard.jsp"><span class="icon">&#128711;</span> Accueil</a></li>
		<li>
			<a href="commande/consulter.do"><span class="icon">&#128196;</span> Commandes </a>
			<ul class="submenu">
				<li><a href="synchronisation.jsp">Synchroniser commandes</a></li>
				<li><a href="commande/historique.do">Historique</a></li>
			</ul>	
		</li>
		<li>
			<a href="product/listproduct.do"><span class="icon">&#127748;</span> Produits <span class="pip">7</span></a>
			<ul class="submenu">
				<li><a href="importProduct.jsp">Créer des produits via XML</a></li>
			</ul>
		</li>
		<li>
			<a href="blog-timeline.jsp"><span class="icon">&#59160;</span> Stockage <span class="pip">12</span></a>
			<ul class="submenu">
				<li><a href="stocage/consulter.do">Consulter</a></li>
				<li><a href="blog-table.jsp">Modifier le stockage</a></li>
			</ul>
		</li>
		<li><a href="statistics.jsp"><span class="icon">&#128202;</span> Statistique</a></li>
		<li><a href="users.jsp"><span class="icon">&#128101;</span> Compabilité <span class="pip">3</span></a></li>
		<li>
			<a href="ui-elements.jsp"><span class="icon">&#9881;</span> UI Elements</a>
			<ul class="submenu">
				<li><a href="icon-fonts.jsp">Icon fonts</a></li>
			</ul>
		</li>
	</ul>
</nav>
</body>