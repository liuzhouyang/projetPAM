<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="commun.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Consulter commandes</title>
</head>
<body>
<section class="content">
	<section class="widget">
		<header>
			<span class="icon">&#59160;</span>
			<hgroup>
				<h1>Commandes</h1>
				<h2>CMS blog pages</h2>
			</hgroup>
		</header>
		<div class="content">
			<table id="myTable" border="0" width="100">
				<thead>
					<tr>
						<th>Page title</th>
						<th >Date</th>
						<th>Child pages</th>
						<th>Comments</th>
						<th>Author</th>
					</tr>
				</thead>
					<tbody>
						<tr>
							<td><input type="checkbox" /> How to design for retina display</td>
							<td>01/3/2013</td>
							<td>0</td>
							<td>0</td>
							<td>John Doe</td>
						</tr>
						
					</tbody>
				</table>
		</div>
	</section>
</section>
<%@ include file="footer.jsp" %>