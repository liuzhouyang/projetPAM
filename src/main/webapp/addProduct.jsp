<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false"%>

<%@include file="commun.jsp"%>

<section class="content">
	<section class="widget">
		<header>
			<span class="icon">&#128196;</span>
			<hgroup>
				<h1><strong>New product</strong></h1>
			</hgroup>
		</header>
		<div class="content">
		<form action="product/addProduct.do" method="post" enctype="multipart/form-data">
    		<input type="text" name="title" value="Title"/>
    		<input type="text" name="marque" value="Marque"/>
    		<input type="text" name="categorie" value="Categorie"/>
    		<input type="text" name="poid" value="Poid"/>
    		<input type="text" name="prix" value="Prix"/>
    		<input type="text" name="couleur" value="Couleur"/>
    		<input type="text" name="taille" value="Taille"/>
    		<textarea name="description"/>Entrez la descrption de produit</textarea>
    		<input type="file" name="img"/>
			<button class="blue">Ajouter</button>
		</form>
		
		</div>
	</section>
</section>
<%@include file="footer.jsp"%>