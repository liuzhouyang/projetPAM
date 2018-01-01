<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="commun.jsp" %>
<!DOCTYPE html>
<html lang="">
<head>
	<meta charset="utf-8">
	<title>Retina Dashboard</title>
	<meta name="description" content="" />
	<meta name="keywords" content="" />
	<meta name="robots" content="" />
	<meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0">
	<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.1/themes/base/jquery-ui.css" /> 
	<link rel="stylesheet" href="css/style.css" media="all" />
	<link rel="stylesheet" href="css/ui.css" media="all" />
</head>
<body>
<section class="content">

	<section class="widget">
		<header>
			<span class="icon">&#9888;</span>
			<hgroup>
				<h1>Alerts</h1>
				<h2>Alerts & buttons</h2>
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
			<!-- Green alert -->
			<div class="green">	
				<p>Hi Lee, you have <a href="#">3 new pages</a> and <a href="#">16 comments</a> to approve, better get going!</p>
				<span class="close">&#10006;</span>
			</div>
			<!-- Orange alert -->
			<div class="orange">	
				<p>Hi Lee, you have <a href="#">8 new comments</a> and <a href="#">4 users</a> to approve, chop chop!</p>
				<span class="close">&#10006;</span>
			</div>
			<!-- Red alert -->
			<div class="red">	
				<p>Hi Lee, you have <a href="#">36 spam comments</a> to clear, better get going!</p>
				<span class="close">&#10006;</span>
			</div>
			<!-- Buttons -->
			<button class="green">Button</button> <button>Button</button> <button class="blue">Button</button> <button class="red">Button</button> <button class="orange">Button</button>
		</div>
	</section>

	<div class="widget-container">
		<section class="widget small">
			<header>
				<span class="icon">&#9776;</span>
				<hgroup>
					<h1>Accodion</h1>
					<h2>Save some space</h2>
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
				<div id="accordion">
					<h3>Section 1</h3>
					  <div>
					    <p>
					    Mauris mauris ante, blandit et, ultrices a, suscipit eget, quam. Integer
					    ut neque. Vivamus nisi metus, molestie vel, gravida in, condimentum sit
					    amet, nunc. Nam a nibh. Donec suscipit eros. Nam mi. Proin viverra leo ut
					    odio. Curabitur malesuada. Vestibulum a velit eu ante scelerisque vulputate.
					    </p>
					  </div>
					  <h3>Section 2</h3>
					  <div>
					    <p>
					    Sed non urna. Donec et ante. Phasellus eu ligula. Vestibulum sit amet
					    purus. Vivamus hendrerit, dolor at aliquet laoreet, mauris turpis porttitor
					    velit, faucibus interdum tellus libero ac justo. Vivamus non quam. In
					    suscipit faucibus urna.
					    </p>
					  </div>
					  <h3>Section 3</h3>
					  <div>
					    <p>
					    Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis.
					    Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero
					    ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis
					    lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.
					    </p>
					    <ul>
					      <li>List item one</li>
					      <li>List item two</li>
					      <li>List item three</li>
					    </ul>
					  </div>
					  <h3>Section 4</h3>
					  <div>
					    <p>
					    Cras dictum. Pellentesque habitant morbi tristique senectus et netus
					    et malesuada fames ac turpis egestas. Vestibulum ante ipsum primis in
					    faucibus orci luctus et ultrices posuere cubilia Curae; Aenean lacinia
					    mauris vel est.
					    </p>
					    <p>
					    Suspendisse eu nisl. Nullam ut libero. Integer dignissim consequat lectus.
					    Class aptent taciti sociosqu ad litora torquent per conubia nostra, per
					    inceptos himenaeos.
					    </p>
					  </div>
				</div>
		</section>
		
		<section class="widget 	small">
			<header>
				<span class="icon">&#59241;</span>
				<hgroup>
					<h1>Progress bars</h1>
					<h2>Why not?</h2>
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
				<div id="progressbar1"></div>
				<div id="progressbar2"></div>
				<div id="progressbar3"></div>
				<div id="progressbar4"></div>
				<div id="progressbar5"></div>
				<div id="progressbar6"></div>
			</div>
		</section>
	</div>
	
	<div class="widget-container">
		<section class="widget small">
			<header> 
				<span class="icon">&#59243;</span>
				<hgroup>
					<h1>Tabs</h1>
					<h2>Tabbed content</h2>
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
				<div id="tabs">
					<ul>
						<li><a href="#tabs-1">Tab 1</a></li>
						<li><a href="#tabs-2">Tab 2</a></li>
						<li><a href="#tabs-3">Tab 3</a></li>
					</ul>
					<div id="tabs-1">
						<p>Proin elit arcu, rutrum commodo, vehicula tempus, commodo a, risus. Curabitur nec arcu. Donec sollicitudin mi sit amet mauris. Nam elementum quam ullamcorper ante. Etiam aliquet massa et lorem. Mauris dapibus lacus auctor risus. Aenean tempor ullamcorper leo. Vivamus sed magna quis ligula eleifend adipiscing. Duis orci. Aliquam sodales tortor vitae ipsum. Aliquam nulla. Duis aliquam molestie erat. Ut et mauris vel pede varius sollicitudin. Sed ut dolor nec orci tincidunt interdum. Phasellus ipsum. Nunc tristique tempus lectus.</p>
					</div>
					<div id="tabs-2">
						<p>Morbi tincidunt, dui sit amet facilisis feugiat, odio metus gravida ante, ut pharetra massa metus id nunc. Duis scelerisque molestie turpis. Sed fringilla, massa eget luctus malesuada, metus eros molestie lectus, ut tempus eros massa ut dolor. Aenean aliquet fringilla sem. Suspendisse sed ligula in ligula suscipit aliquam. Praesent in eros vestibulum mi adipiscing adipiscing. Morbi facilisis. Curabitur ornare consequat nunc. Aenean vel metus. Ut posuere viverra nulla. Aliquam erat volutpat. Pellentesque convallis. Maecenas feugiat, tellus pellentesque pretium posuere, felis lorem euismod felis, eu ornare leo nisi vel felis. Mauris consectetur tortor et purus.</p>
					</div>
					<div id="tabs-3">
						<p>Mauris eleifend est et turpis. Duis id erat. Suspendisse potenti. Aliquam vulputate, pede vel vehicula accumsan, mi neque rutrum erat, eu congue orci lorem eget lorem. Vestibulum non ante. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce sodales. Quisque eu urna vel enim commodo pellentesque. Praesent eu risus hendrerit ligula tempus pretium. Curabitur lorem enim, pretium nec, feugiat nec, luctus a, lacus.</p>
					<p>Duis cursus. Maecenas ligula eros, blandit nec, pharetra at, semper at, magna. Nullam ac lacus. Nulla facilisi. Praesent viverra justo vitae neque. Praesent blandit adipiscing velit. Suspendisse potenti. Donec mattis, pede vel pharetra blandit, magna ligula faucibus eros, id euismod lacus dolor eget odio. Nam scelerisque. Donec non libero sed nulla mattis commodo. Ut sagittis. Donec nisi lectus, feugiat porttitor, tempor ac, tempor vitae, pede. Aenean vehicula velit eu tellus interdum rutrum. Maecenas commodo. Pellentesque nec elit. Fusce in lacus. Vivamus a libero vitae lectus hendrerit hendrerit.</p>
					</div>
				</div>
			</div>
		</section>
		
		<section class="widget small">
			<header> 
				<span class="icon">&#9207;</span>
				<hgroup>
					<h1>Sliders</h1>
					<h2>get your slide on</h2>
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
				<div id="master1"></div>
				<div id="master2"></div>
				<div id="master3"></div>
				<div id="master4"></div>
				<div id="master5"></div>
				<div id="master6"></div>
				<aside class="vertical-slide">
					<div id="master7"></div>
					<div id="master8"></div>
					<div id="master9"></div>
					<div id="master10"></div>
					<div id="master11"></div>
					<div id="master12"></div>
				</aside>
			</div>
		</section>
	</div>
</section>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js"></script>
<script src="js/jquery.wysiwyg.js"></script>
<script src="js/custom.js"></script>
<!--<script src="js/cycle.js"></script>-->
<script src="js/jquery.checkbox.min.js"></script>
<!--<script src="js/flot.js"></script>
<script src="js/flot.resize.js"></script>
<script src="js/flot-time.js"></script>
<script src="js/flot-pie.js"></script>
<script src="js/flot-graphs.js"></script>
<script src="js/cycle.js"></script>-->
<script src="js/jquery.tablesorter.min.js"></script>
<script src="http://code.jquery.com/ui/1.10.1/jquery-ui.js"></script>
<script type="text/javascript">
	$(function() {
		
		$("#accordion" ).accordion();
		
		$("#progressbar1").progressbar({
			value: 47
		});
		
		$("#progressbar2").progressbar({
			value: 23
		});
		
		$("#progressbar3").progressbar({
			value: 29
		});
		
		$("#progressbar4").progressbar({
			value: 78
		});
		
		$("#progressbar5").progressbar({
			value: 38
		});
		
		$("#progressbar6").progressbar({
			value: 95
		});
		
		$( "#tabs" ).tabs();
		
		// setup master volume
		$( "#master1" ).slider({
			value: 60,
			orientation: "horizontal",
			range: "min",
			animate: true
		});
		
		$( "#master2" ).slider({
			value: 10,
			orientation: "horizontal",
			range: "min",
			animate: true
		});
		
		$( "#master3" ).slider({
			value: 45,
			orientation: "horizontal",
			range: "min",
			animate: true
		});
		
		$( "#master4" ).slider({
			value: 90,
			orientation: "horizontal",
			range: "min",
			animate: true
		});
		
		$( "#master5" ).slider({
			value: 80,
			orientation: "horizontal",
			range: "min",
			animate: true
		});
		
		$( "#master6" ).slider({
			value: 58,
			orientation: "horizontal",
			range: "min",
			animate: true
		});
		
		$( "#master7" ).slider({
			value: 30,
			orientation: "vertical",
			range: "min",
			animate: true
		});
		
		$( "#master8" ).slider({
			value: 34,
			orientation: "vertical",
			range: "min",
			animate: true
		});
		
		$( "#master9" ).slider({
			value: 74,
			orientation: "vertical",
			range: "min",
			animate: true
		});
		
		$( "#master10" ).slider({
			value: 48,
			orientation: "vertical",
			range: "min",
			animate: true
		});
		
		$( "#master11" ).slider({
			value: 34,
			orientation: "vertical",
			range: "min",
			animate: true
		});
		
		$( "#master12" ).slider({
			value: 78,
			orientation: "vertical",
			range: "min",
			animate: true
		});
		
	});
</script>
</body>
</html>