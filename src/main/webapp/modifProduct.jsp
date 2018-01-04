<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="commun.jsp"%>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js"></script>
<script type="text/javascript">
$(function(){
	$('.content button').click(function(){
		var poid = document.getElementById("poid").value;
		var prix = document.getElementById("prix").value;
		var image = document.getElementById("image").value;
		var testPoid = new Number(poid);
		if (isNaN(testPoid)){
			alert("Le poid de produit doit etre un nombre");
			return false;
		}
		var testPrix = new Number(prix);
		if (isNaN(testPrix)){
			alert("Le prix de produit doit etre un nombre");
			return false;
		}
		if(image != ""){
			var length = image.length;
			var last = image.substring(length-3,length).toUpperCase();
	    	if (last != "JPG" || last != "GIF" || last != "PNG") {
	    		alert("Not a image!");
	    		return false;
	    	}
		}
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
		<form id="editForm" action="product/modifProduct.do" method="post" >
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
     				<input type="hidden" name="image" value="${product.image}"/>
     					<button class="blue">edit</button>
     				</td>
     			</tr>
     		</table>
		</form>
		</div>
	</section>
</section>
<%@include file="footer.jsp"%>