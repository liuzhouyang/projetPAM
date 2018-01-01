<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Gestion de produit</title>
	<base href="<%=basePath%>">
	<meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0">
	<link rel="stylesheet" href="css/style.css" media="all" />
</head>
<body>
<div class="products">
<header class="main">
	<h1><strong>Carrot</strong> Dashboard</h1>
	<input type="text" value="search" />
</header>
<section class="user">
	<div class="profile-img">
		<p><img src="images/uiface2.png" alt="" height="40" width="40" /> Welcome back John Doe</p>
	</div>
	<div class="buttons">
		<button class="ico-font">&#9206;</button>
		<span class="button dropdown">
			<a href="#">Notifications <span class="pip">4</span></a>
			<ul class="notice">
				<li>
					<hgroup>
						<h1>You have a new task</h1>
						<h2>Report web statistics week by week.</h2> 
					</hgroup>
					<p><span>14:24</span></p>
				</li>
				<li>
					<hgroup>
						<h1>New comment</h1>
						<h2>Comment on <em>About page</em> by Darren.</h2> 
					</hgroup>
					<p><span>11:04</span></p>
				</li>
				<li>
					<hgroup>
						<h1>Broken link</h1>
						<h2>We've spotted a broken link on the <em>Blog page</em>.</h2> 
					</hgroup>
					<p><span>10:46</span></p>
				</li>
				<li>
					<hgroup>
						<h1>User report</h1>
						<h2><em>Lee Grant</em> has been promoted to admin.</h2> 
					</hgroup>
					<p><span>09:57</span></p>
				</li>
			</ul>
		</span> 
		<span class="button dropdown">
			<a href="#">Inbox <span class="pip">6</span></a>
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
		<span class="button">Live</span>
		 <span class="button">Help</span>
		 <span class="button blue"><a href="index.html">Logout</a></span>
	</div>
</section>
</div>
<nav>
	<ul>
		<li><a href="dashboard.html"><span class="icon">&#128711;</span> Dashboard</a></li>
		<li class="section">
			<a href="products.jsp"><span class="icon">&#128196;</span> Products</a>
			<ul class="submenu">
				<li><a href="products.jsp">Create page</a></li>
				<li><a href="products.jsp">View pages</a></li>
			</ul>	
		</li>
		<li>
			<a href="files.html"><span class="icon">&#127748;</span> Media <span class="pip">7</span></a>
			<ul class="submenu">
				<li><a href="files-upload.html">Upload file</a></li>
				<li><a href="files.html">View files</a></li>
			</ul>
		</li>
		<li>
			<a href="blog-timeline.html"><span class="icon">&#59160;</span> Blog <span class="pip">12</span></a>
			<ul class="submenu">
				<li><a href="blog-new.html">New post</a></li>
				<li><a href="blog-table.html">All posts</a></li>
				<li><a href="comments-timeline.html">View comments</a></li>
			</ul>
		</li>
		<li><a href="statistics.html"><span class="icon">&#128202;</span> Statistics</a></li>
		<li><a href="users.html"><span class="icon">&#128101;</span> Users <span class="pip">3</span></a></li>
		<li>
			<a href="ui-elements.html"><span class="icon">&#9881;</span> UI Elements</a>
			<ul class="submenu">
				<li><a href="icon-fonts.html">Icon fonts</a></li>
			</ul>
		</li>
	</ul>
</nav>

<section class="alert">
	<form method="link" action="page-new.html">
		 <button class="green">Create new page</button>
	</form>
</section>
<section class="content">
	<section class="widget">
		<header>
			<span class="icon">&#128196;</span>
			<hgroup>
				<h1>Products</h1>
				<h2>CMS content pages</h2>
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
			<table id="myTable" border="0" width="100">
				<thead>
					<tr>
						<th>ID</th>
						<th>Title</th>
						<th>Marque</th>
						<th>Categorie</th>
						<th>Picture</th>
						<th>Prix</th>
					</tr>
				</thead>
					<tbody>
						<c:forEach items="${listProducts}" var="p">
						<tr>
							<td><input type="checkbox" />${p.id}</td>
							<td>${p.title}</td>
							<td>${p.marque}</td>
							<td>${p.categorie}</td>
							<td>
								<%-- <c:if test="${!empty p.image}">
									<img width="40px" src="img/product/${p.image.id}.jpg">
								</c:if> --%>
							</td>
							<td>${p.prix}</td>
							<td><a href="admin_productImage_list?product.id=${p.id}"><span
									class="glyphicon glyphicon-picture"></span></a></td>
							<td><a href="admin_propertyValue_edit?product.id=${p.id}"><span
									class="glyphicon glyphicon-th-list"></span></a></td>
							
							<td><a href="admin_product_edit?product.id=${p.id}"><span
									class="glyphicon glyphicon-edit"></span></a></td>
							<td><a deleteLink="true"
								href="delete?product.id=${p.id}"><span
									class=" 	glyphicon glyphicon-trash"></span></a></td>
	
						</tr>
					</c:forEach>
					</tbody>
				</table>
		</div>
	</section>
</section>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js"></script>
<script src="js/jquery.wysiwyg.js"></script>
<script src="js/custom.js"></script>
<script src="js/cycle.js"></script>
<script src="js/jquery.checkbox.min.js"></script>
<script src="js/flot.js"></script>
<script src="js/flot.resize.js"></script>
<script src="js/flot-graphs.js"></script>
<script src="js/flot-time.js"></script>
<script src="js/cycle.js"></script>
<script src="js/jquery.tablesorter.min.js"></script>
</body>
</html>