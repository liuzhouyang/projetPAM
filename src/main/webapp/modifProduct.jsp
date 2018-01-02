<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="commun.jsp"%>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js"></script>
<script type="text/javascript">
$(function(){

	$('#cancel').click(function(e){ 
		top.location="/projetPAM/product/listproduct.do";
		return false;
	});
});
</script>
<section class="content">
	<section class="widget">
		<header>
			<span class="icon">&#128196;</span>
			<hgroup>
				<h1><strong>Detail product</strong></h1>
			</hgroup>
		</header>
		<div class="content">
		<form action="product/test.do" method="post" enctype="multipart/form-data" >
			<input type="hidden" name="id" value='${product.idProduct}'>
<%-- 			<input type="text" id="idProduct" name="idProduct" value="${product.idProduct}" disabled="disabled"/> --%>
	  		<input type="text" id="title" name="title" value="${product.title}">
    		<input type="text" id="marque" name="marque" value="${product.marque}">
    		<input type="text" id="categorie" name="categorie" value="${product.categorie}">
    		<input type="text" id="poid" name="poid" value="${product.poid}">
    		<input type="text" id="prix" name="prix" value="${product.prix}">
    		<input type="text" id="couleur"name="couleur" value="${product.couleur}">
    		<input type="text" name="taille" value="${product.taille}">
      		<textarea id="description" name="description"/>${product.description}</textarea>
     		<input type="file" id="image" name="img"/>
			<button class="blue">edit</button><button id="cancel" class="red">cancel</button>
		</form>
		</div>
	</section>
</section>
<script>

</script>
<%@include file="footer.jsp"%>