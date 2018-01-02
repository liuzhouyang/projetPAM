<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false"%>

<%@include file="commun.jsp"%>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js"></script>
<script type="text/javascript">
$(function(){
	$('.content button').click(function(e){ 
		var title = document.getElementById("title").value;
		var marque = document.getElementById("marque").value;
		var categorie = document.getElementById("categorie").value;
		var poid = document.getElementById("poid").value;
		var prix = document.getElementById("prix").value;
		var description = document.getElementById("description").value;
		var image = document.getElementById("image").value;
		if(title == "Title"){
		    alert("Le titre de produit ne peut pas etre null");
		    return false;
		}
		if(marque == "Marque"){
		    alert("La marque de produit ne peut pas etre null");
		    return false;
		}
		if(categorie == "Categorie"){
		    alert("La categorie de produit ne peut pas etre null");
		    return false;
		}
		if(poid == "Poid"){
		    alert("Le poid de produit ne peut pas etre null");
		    return false;
		} else {
			var testPoid = new Number("poid");
			if (testPoid == "NaN"){
				alert("Le poid de produit est un nombre");
				return false;
			}
		}
		if(prix == "Prix"){
		    alert("Le prix de produit ne peut pas etre null");
		    return false;
		} else {
			var testPrix = new Number("prix");
			if (testPrix == "NaN"){
				alert("Le prix de produit est un nombre");
				return false;
			}
		}
		if(description == "Entrez la descrption de produit"){
		    alert("La description de produit ne peut pas etre null");
		    return false;
		}
		if(image == ""){
		    alert("L'image de produit ne peut pas etre null");
		    return false;
		}

});
});
</script>
<section class="content">
	<section class="widget">
		<header>
			<span class="icon">&#128196;</span>
			<hgroup>
				<h1><strong>New product</strong></h1>
			</hgroup>
		</header>
		<div class="content">
		<form action="product/addproduct.do" method="post" enctype="multipart/form-data" >
	  		<input type="text" id="title" name="title" value="Title">
    		<input type="text" id="marque" name="marque" value="Marque">
    		<input type="text" id="categorie" name="categorie" value="Categorie">
    		<input type="text" id="poid" name="poid" value="Poid">
    		<input type="text" id="prix" name="prix" value="Prix">
    		<input type="text" id="couleur"name="couleur" value="Couleur">
    		<input type="text" name="taille" value="Taille">
      		<textarea id="description" name="description"/>Entrez la descrption de produit</textarea>
     		<input type="file" id="image" name="img"/>
			<button class="blue">Ajouter</button>
		</form>
		
		</div>
	</section>
</section>
<script>

</script>
<%@include file="footer.jsp"%>