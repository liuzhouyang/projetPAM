<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="commun.jsp"%>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js"></script>
<script type="text/javascript">
$(function(){
	$("editForm").submit(function(){
		var poid = document.getElementById("poid").value;
		var prix = document.getElementById("prix").value;
		var testPoid = new Number("poid");
		if (testPoid == "NaN"){
			alert("Le poid de produit est un nombre");
			return false;
		}
		var testPrix = new Number("prix");
		if (testPrix == "NaN"){
			alert("Le prix de produit est un nombre");
			return false;
		}
	});
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
		<form id="editForm" action="product/modifProduct.do" method="post" enctype="multipart/form-data" >
	  		<input type="text" id="title" name="title" value="${product.title}">
    		<input type="text" id="marque" name="marque" value="${product.marque}">
    		<input type="text" id="categorie" name="categorie" value="${product.categorie}">
    		<input type="text" id="poid" name="poid" value="${product.poid}">
    		<input type="text" id="prix" name="prix" value="${product.prix}">
    		<input type="text" id="couleur"name="couleur" value="${product.couleur}">
    		<input type="text" name="taille" value="${product.taille}">
      		<textarea id="description" name="description"/>${product.description}</textarea>
     		<input type="file" id="image" name="img"/>
     		<table>
     			<tr>
     				<td colspan="3">
     				<input type="hidden" name="idProduct" value="${product.idProduct}"/>
     					<button type="submit" class="blue">edit</button>
     					<button id="cancel" class="red">cancel</button>
     				</td>
     			</tr>
     		</table>
			<!-- <button class="blue">edit</button><button id="cancel" class="red">cancel</button> -->
		</form>
		</div>
	</section>
</section>
<script>

</script>
<%@include file="footer.jsp"%>