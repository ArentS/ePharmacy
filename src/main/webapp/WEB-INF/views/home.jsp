<%@ include file="/WEB-INF/views/template/header.jsp"%>
<!-- Carousel
    ================================================== -->
<div id="myCarousel" class="carousel slide" data-ride="carousel">
	<!-- Indicators -->
	<ol class="carousel-indicators">
		<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
		<li data-target="#myCarousel" data-slide-to="1"></li>
		<li data-target="#myCarousel" data-slide-to="2"></li>
	</ol>
	<div class="carousel-inner" role="listbox">
		<div class="item active">
			<img class="first-slide home-image"
				src='<c:url value="/resources/images/back.jpg"/>' alt="First slide">

		</div>
		<div class="item">
			<img class="second-slide home-image"
				src='<c:url value="/resources/images/back2.jpg"/>'
				alt="Second slide">

		</div>
		<div class="item">
			<img class="third-slide home-image"
				src='<c:url value="/resources/images/back3.jpg"/>' alt="Third slide">

		</div>
	</div>
	<a class="left carousel-control" href="#myCarousel" role="button"
		data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"
		aria-hidden="true"></span> <span class="sr-only">Previous</span>
	</a> <a class="right carousel-control" href="#myCarousel" role="button"
		data-slide="next"> <span class="glyphicon glyphicon-chevron-right"
		aria-hidden="true"></span> <span class="sr-only">Next</span>
	</a>
</div>
<!-- /.carousel -->


<!-- Marketing messaging and featurettes
    ================================================== -->
<!-- Wrap the rest of the page in another container to center all the content. -->

<div class="container marketing">

	<!-- Three columns of text below the carousel -->
	<div class="row">
		<div class="col-lg-4">
			<img class="img-circle"
				src='<c:url value="/resources/images/marketing1.jpg"/>'
				alt="Generic placeholder image" width="140" height="140">
			<h2>3 Ways to Reduce the Risk of Asthma in Early Childhood</h2>
			<p>It has long been known that allergies and asthma tend to run
				in families, making children where one or both parents have an
				allergic disease more likely to develop these conditions.
				Fortunately, there are steps that may delay or possibly prevent
				allergies or asthma from developing.</p>
			<p>
				<a class="btn btn-default" href="<c:url value="/extra/1" /> " role="button">View
					details &raquo;</a>
			</p>
		</div>
		<!-- /.col-lg-4 -->
		<div class="col-lg-4">
			<img class="img-circle"
				src='<c:url value="/resources/images/dehydration.jpg"/>'
				alt="Generic placeholder image" width="140" height="140">
			<h2>Dehydration</h2>
			<p>Dehydration occurs when your body loses more fluid than you
				take in. When the normal water content of your body is reduced, it
				upsets the balance of minerals (salts and sugar) in your body, which
				affects the way it functions. Water makes up over two-thirds of the
				healthy human body. It lubricates the joints and eyes, aids
				digestion, flushes out waste and toxins, and keeps the skin healthy.</p>
			<p>
				<a class="btn btn-default" href="<c:url value="/extra/2" /> " role="button">View
					details &raquo;</a>
			</p>
		</div>
		<!-- /.col-lg-4 -->
		<div class="col-lg-4">
			<img class="img-circle"
				src='<c:url value="/resources/images/omega.jpg"/>'
				alt="Generic placeholder image" width="140" height="140">
			<h2>Fish and Omega-3 Fatty Acids</h2>
			<p>Fish is a good source of protein and, unlike fatty meat
				products, it's not high in saturated fat. Fish is also a good source
				of omega-3 fatty acids. Omega-3 fatty acids benefit the heart of
				healthy people, and those at high risk of - or who have -
				cardiovascular disease. Research has shown that omega-3 fatty acids
				decrease risk of arrhythmias (abnormal heartbeats), which can lead
				to sudden death. Omega-3 fatty acids also decrease triglyceride
				levels, slow growth rate of atherosclerotic plaque, and lower blood
				pressure (slightly).</p>
			<p>
				<a class="btn btn-default" href="<c:url value="/extra/3" /> " role="button">View
					details &raquo;</a>
			</p>
		</div>
		<!-- /.col-lg-4 -->
	</div>
	<!-- /.row -->





	<%@ include file="/WEB-INF/views/template/footer.jsp"%>