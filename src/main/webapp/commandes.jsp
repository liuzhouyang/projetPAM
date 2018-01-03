<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
						<th>Site</th>
						<th>Date</th>
						<th>PrixLivraison</th>
						<th>PrixTotal</th>
						<th>Statut</th>
						<th>Acheteur</th>
					</tr>
				</thead>
					<tbody>
						<c:forEach var="commande" items="${commandes}">
							<tr>
								<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${commande.nom_site}</td>
								<td>${commande.date_commande}</td>
								<td>${commande.prix_livraison}</td>
								<td>${commande.prix_total}</td>
								<td>${commande.statut}</td>
								<td>${commande.nom_acheteur}<br/>${commande.add_acheteur}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
		</div>
	</section>
</section>
<%@ include file="footer.jsp" %>