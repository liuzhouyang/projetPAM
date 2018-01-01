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
</head>
<body>
<section class="content">
	<section class="widget">
		<header>
			<span class="icon">&#128100;</span>
			<hgroup>
				<h1>Users</h1>
				<h2>Current member accounts</h2>
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
						<th class="avatar">Name</th>
						<th>Email</th>
						<th>Password</th>
						<th>Date</th>
					</tr>
				</thead>
					<tbody>
						<tr>
							<td class="avatar"><img src="images/uiface1.png" alt="" height="40" width="40" /> John Doe</td>
							<td>j.doe@mtsite.com</td>
							<td>********</td>
							<td>12/03/2013</td>
						</tr>
						<tr>
							<td class="avatar"><img src="images/uiface2.png" alt="" height="40" width="40" /> John Doe</td>
							<td>j.doe@mtsite.com</td>
							<td>********</td>
							<td>27/02/2013</td>
						</tr>
						<tr>
							<td class="avatar"><img src="images/uiface3.png" alt="" height="40" width="40" /> John Doe</td>
							<td>j.doe@mtsite.com</td>
							<td>********</td>
							<td>03/12/2012</td>
						</tr>
						<tr>
							<td class="avatar"><img src="images/uiface4.png" alt="" height="40" width="40" /> John Doe</td>
							<td>j.doe@mtsite.com</td>
							<td>********</td>
							<td>31/12/2012</td>
						</tr>
						<tr>
							<td class="avatar"><img src="images/uiface1.png" alt="" height="40" width="40" /> John Doe</td>
							<td>j.doe@mtsite.com</td>
							<td>********</td>
							<td>29/11/2012</td>
						</tr>
						<tr>
							<td class="avatar"><img src="images/uiface2.png" alt="" height="40" width="40" /> John Doe</td>
							<td>j.doe@mtsite.com</td>
							<td>********</td>
							<td>09/01/2013</td>
						</tr>
						<tr>
							<td class="avatar"><img src="images/uiface3.png" alt="" height="40" width="40" /> John Doe</td>
							<td>j.doe@mtsite.com</td>
							<td>********</td>
							<td>06/01/2013</td>
						</tr>
						<tr>
							<td class="avatar"><img src="images/uiface4.png" alt="" height="40" width="40" /> John Doe</td>
							<td>j.doe@mtsite.com</td>
							<td>********</td>
							<td>17/05/2012</td>
						</tr>
						<tr>
							<td class="avatar"><img src="images/uiface1.png" alt="" height="40" width="40" /> John Doe</td>
							<td>j.doe@mtsite.com</td>
							<td>********</td>
							<td>27/07/2011</td>
						</tr>
						<tr>
							<td class="avatar"><img src="images/uiface2.png" alt="" height="40" width="40" /> John Doe</td>
							<td>j.doe@mtsite.com</td>
							<td>********</td>
							<td>27/09/2012</td>
						</tr>
						<tr>
							<td class="avatar"><img src="images/uiface3.png" alt="" height="40" width="40" /> John Doe</td>
							<td>j.doe@mtsite.com</td>
							<td>********</td>
							<td>17/08/2011</td>
						</tr>
						<tr>
							<td class="avatar"><img src="images/uiface4.png" alt="" height="40" width="40" /> John Doe</td>
							<td>j.doe@mtsite.com</td>
							<td>********</td>
							<td>31/01/2012</td>
						</tr>
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