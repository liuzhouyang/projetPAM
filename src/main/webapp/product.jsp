<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@include file="commun.jsp"%>


<section class="content">
	<section class="widget">
		<header>
			<span class="icon">&#128196;</span>
			<hgroup>
				<h1>Products</h1>
				<h2>List of products</h2>
			</hgroup>
			<aside>
				<span>
					<a href="#">&#9881;</a>
					<ul class="settings-dd">
						<li><label>Titre</label><input type="checkbox" id="titreCheckBox" name="titreCheckBox" checked="checked" /></li>
						<li><label>Marque</label><input type="checkbox" id="marqueCheckBox" name="marqueCheckBox" checked="checked" /></li>
						<li><label>Categorie</label><input type="checkbox" id="cateCheckBox" name="cateCheckBox" checked="checked" /></li>
						<li><label>Prix</label><input type="checkbox" id="prixCheckBox" name="prixCheckBox" checked="checked"/></li>
						<li><label>Couleur</label><input type="checkbox" id="coulCheckBox" name="coulCheckBox" /></li>
						<li><label>Taille</label><input type="checkbox" id="coulCheckBox" name="tailleCheckBox" /></li>
						<li><label>Description</label><input type="checkbox" id="descripCheckBox" name="descripCheckBox" /></li>
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
						<th></th>
						<th></th>
						<th></th>
					</tr>
				</thead>
					<tbody>
					<c:forEach var="p" items="${list}">
						<tr>
							<td><input name="idCheckBox" type="checkbox" />${p.idProduct}</td>
							<td>${p.title}</td>
							<td>${p.marque}</td>
							<td>${p.categorie}</td>
							<td>
								<c:if test="${!empty p.image}">
									<img width="40px" src="img/small/${p.image}" alt="Image not found">
								</c:if>
							</td>
							<td>${p.prix}</td>
							<td><form method="get" action='product/detailproduct.do'>
									<button class="orange">modif</button>
									<input type="hidden" name="id" value='${p.idProduct}'>
							</form></td>
							<td><form method="get" action='product/deleteproduct.do'>
									<button class="red">delete</button>
									<input type="hidden" name="id" value='${p.idProduct}'>
							</form></td>
							<td><form method="get" action='product/parsetoxml.do'>
									<button>import</button>
									<input type="hidden" name="id" value='${p.idProduct}' >
							</form>
							</td>
						</tr>
					</c:forEach>
					</tbody>
				</table>

		</div>
	</section>
	<form method="link" action="addProduct.jsp">
		 <button class="green">Create new product</button>
	</form>
</section>


<%@include file="footer.jsp"%>