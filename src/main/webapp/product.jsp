<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@include file="commun.jsp"%>

<section class="alert">
	<form method="link" action="addProduct.jsp">
		 <button class="green">Create new product</button>
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
						<th></th>
						<th></th>
					</tr>
				</thead>
					<tbody>
					<c:forEach var="p" items="${list}">
						<tr>
							<td><input type="checkbox" />${p.idProduct}</td>
							<td>${p.title}</td>
							<td>${p.marque}</td>
							<td>${p.categorie}</td>
							<td>
								<%-- <c:if test="${!empty p.image}">
									<img width="40px" src="img/product/${p.image.id}.jpg">
								</c:if> --%>
							</td>
							<td>${p.prix}</td>
							<td><form method="get" action='product/detailproduct.do'>
									<button class="green">modif</button>
									<input type="hidden" name="id" value='${p.idProduct}'>
								</form></td>
							<td><form method="get" action='product/deleteproduct.do'>
									<button class="red">delete</button>
									<input type="hidden" name="id" value='${p.idProduct}'>
							</form></td>
						</tr>
					</c:forEach>
					</tbody>
				</table>

		</div>
	</section>
</section>


<%@include file="footer.jsp"%>