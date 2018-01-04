<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false"%>

<%@include file="commun.jsp"%>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js"></script>
<script type="text/javascript">
$(function(){
	$('.content button').click(function(){ 
		var file = document.getElementById("file").value;
		if (file == ""){
			alert("No file has been chosen!");
			return false;
		}
		var length = file.length;
		var last = file.substring(length-3,length).toUpperCase();
    	if (last != "XML") {
    		alert("Not a XML file!");
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
				<h1><strong>Import from XML</strong></h1>
			</hgroup>
		</header>
		<div class="content">
		<form action="product/importProduct.do" method="post" enctype="multipart/form-data" >
     		<input type="file" id="file" name="productXML"/>
     		<table>
     			<tr>
     				<td colspan="3">
     					<button class="blue">import</button>
     				</td>
     			</tr>
     		</table>
			<!-- <button class="blue">edit</button><button id="cancel" class="red">cancel</button> -->
		</form>
		</div>
	</section>
</section>

<%@include file="footer.jsp"%>