<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="commun.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Historique commandes</title>
</head>
<body>
<section class="content">
	<section class="widget">
		<header>
			<span class="icon">&#59160;</span>
			<hgroup>
				<h1>Historique commandes</h1>
			</hgroup>
		</header>
		<div class="content">
			<table id="myTable" border="0" width="100">
				<thead>
					<tr>
						<th>Site</th>
						<th>Date</th>
						<th>Fichier</th>
					</tr>
				</thead>
					<tbody>
						<c:forEach var="historique" items="${historiques}">
							<tr>
								<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${historique.nomWeb}</td>
								<td>${historique.date}</td>
								<td>${historique.nomFichier}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
		</div>
	</section>
</section>
<%@ include file="footer.jsp" %>