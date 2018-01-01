<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@include file="commun.jsp"%>

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
					<c:forEach var="p" items="${list}">
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
<%-- 							<td><a href="admin_productImage_list?product.id=${p.id}"><span
									class="glyphicon glyphicon-picture"></span></a></td>
							<td><a href="admin_propertyValue_edit?product.id=${p.id}"><span
									class="glyphicon glyphicon-th-list"></span></a></td>
							
							<td><a href="admin_product_edit?product.id=${p.id}"><span
									class="glyphicon glyphicon-edit"></span></a></td>
							<td><a deleteLink="true"
								href="delete?product.id=${p.id}"><span
									class=" 	glyphicon glyphicon-trash"></span></a></td> --%>
	
						</tr>
					</c:forEach>
					</tbody>
				</table>
		</div>
	</section>
</section>

<%@include file="footer.jsp"%>