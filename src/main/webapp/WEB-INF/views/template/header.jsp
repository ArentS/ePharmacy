<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="../../favicon.ico">

<title>My Pharmacy Store</title>

<!-- Angular JS -->
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>

<!-- Bootstrap core CSS -->
<link href="<c:url value="/resources/css/bootstrap.min.css" />"
	rel="stylesheet">

<link href="<c:url value="/resources/css/styles.css" />"
	rel="stylesheet">

<!-- Carousel CSS -->
<link href="<c:url value="/resources/css/carousel.css" />"
	rel="stylesheet">

<!-- Main CSS -->
<link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">

<!-- Sort, search, paging -->
<link href="<c:url value="/resources/css/footeritabeles.css" />"
	rel="stylesheet">

<link
	href="https://cdn.datatables.net/1.10.12/css/dataTables.bootstrap.min.css"
	rel="stylesheet">

<!-- Menu-submenu -->
<link
	href="<c:url value="/resources/css/bootstrap-dropdownhover.css" />"
	rel="stylesheet">
<link
	href="<c:url value="/resources/css/bootstrap-dropdownhover.min.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/css/animate.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/css/animate.min.css" />"
	rel="stylesheet">

<!-- Map -->
<!-- <script src="http://maps.google.com/maps/api/js?sensor=false"></script> -->


</head>
<!-- NAVBAR
================================================== -->
<body>
	<div class="navbar-wrapper">
		<div class="container">

			<nav class="navbar navbar-inverse navbar-static-top">
				<div class="container">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed"
							data-toggle="collapse" data-target="#navbar"
							aria-expanded="false" aria-controls="navbar">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
						<a class="navbar-brand" style="color: green;" href="<c:url value="/" /> "><strong>Arent's
							Pharmacy Store</strong></a>
					</div>
					<div id="navbar" class="navbar-collapse collapse">
						<ul class="nav navbar-nav" data-hover="dropdown"
							data-animations="fadeInDown fadeInRight fadeInUp fadeInLeft">
							<li><a href="<c:url value="/" /> ">Home</a></li>
							
							<li><a href="<c:url value="/product/productList" /> ">All Products</a></li>

							<li class="dropdown">
							<a href="#">Medicines</a>
<%-- 							<a href="<c:url value="/product/productList" />">Medicines</a> --%>
								<ul class="dropdown-menu">
									<li><a
										href="<c:url value="/product/medicine/AllergyandSinus" />">Allergy
											& Sinus</a></li>
									<li><a href="<c:url value="/product/medicine/Antacids" />">Antacids
											- Indigestion & Heartburn</a></li>
									<li><a
										href="<c:url value="/product/medicine/Arthritis" />">Arthritis</a></li>
									<li><a
										href="<c:url value="/product/medicine/Antihistamines" />">Antihistamines</a></li>
									
									<li><a
										href="<c:url value="/product/medicine/CoughColdandFlu" />">Cough,
											Cold & Flu</a></li>
									<li><a href="<c:url value="/product/medicine/Diarrhea" />">Diarrhea</a></li>
									<li><a
										href="<c:url value="/product/medicine/EarNoseandThroatCare" />">Ear,
											Nose & Throat Care</a></li>
									<li><a href="<c:url value="/product/medicine/EyeCare" />">Eye
											Care</a></li>
									<li><a
										href="<c:url value="/product/medicine/NauseaandTravelSickness" />">Nausea
											& Travel Sickness</a></li>
									<li><a
										href="<c:url value="/product/medicine/PainRelief" />">Pain
											Relief</a></li>
									<li><a
										href="<c:url value="/product/medicine/Respiratory" />">Respiratory</a></li>
									<li><a href="<c:url value="/product/medicine/FootCare" />">Foot
											Care</a></li>

								</ul></li>

							<li class="dropdown"><a href="#Vitamins & Supplements">Vitamins
									& Supplements</a>
								<ul class="dropdown-menu">
									<li><a
										href="<c:url value="/product/vitaminsandSupplements/Antioxidants" />">Antioxidants</a></li>
									<li><a
										href="<c:url value="/product/vitaminsandSupplements/BodyBuilding" />">Body
											Building</a></li>
									<li><a
										href="<c:url value="/product/vitaminsandSupplements/BoneHealth" />">Bone
											Health</a></li>
									<li><a
										href="<c:url value="/product/vitaminsandSupplements/BrainandMemory" />">Brain
											& Memory</a></li>
									<li><a
										href="<c:url value="/product/vitaminsandSupplements/Cholesterol" />">Cholesterol</a></li>
									<li><a
										href="<c:url value="/product/vitaminsandSupplements/EnergySupport" />">Energy
											Support</a></li>
									<li><a
										href="<c:url value="/product/vitaminsandSupplements/EyeVision" />">Eye
											& Vision</a></li>
									<li><a
										href="<c:url value="/product/vitaminsandSupplements/FishOil" />">Fish
											Oil</a></li>
									<li><a
										href="<c:url value="/product/vitaminsandSupplements/ImmuneSystemandVitamins" />">Immune
											System & Vitamins</a></li>
									<li><a
										href="<c:url value="/product/vitaminsandSupplements/SkinHairandNails" />">Skin,
											Hair & Nails</a></li>
									<li><a
										href="<c:url value="/product/vitaminsandSupplements/SleepingandInsomnia" />">Sleeping
											& Insomnia</a></li>
									<li><a
										href="<c:url value="/product/vitaminsandSupplements/WeightLoss" />">Weight
											Loss</a></li>
								</ul></li>



							<li class="dropdown"><a href="#Skin Care">Skin Care</a>
								<ul class="dropdown-menu">
									<li><a href="<c:url value="/product/skinCare/Acne" />">Acne</a></li>
									<li class="dropdown"><a
										href="<c:url value="/product/skinCare/AntiAgeing" />">Anti
											Ageing<span class="glyphicon glyphicon-menu-right"
											style="float: right;"></span>
									</a>
										<ul class="dropdown-menu">
											<li><a
												href="<c:url value="/product/skinCare/AntiAgeing/AntiWrinkle" />">Anti
													Wrinkle</a></li>
											<li><a
												href="<c:url value="/product/skinCare/AntiAgeing/FaceliftCreamsandSerums" />">Facelift
													Creams & Serums</a></li>
										</ul></li>
									<li><a
										href="<c:url value="/product/skinCare/EczemaandProblemSkin" />">Eczema
											& Problem Skin</a></li>
									<li><a
										href="<c:url value="/product/skinCare/ExfoliatorsandScrubs" />">Exfoliators
											and Scrubs</a></li>
									<li><a
										href="<c:url value="/product/skinCare/EyesDarkCircles" />">Eyes
											and Dark Circles</a></li>
									<li><a href="<c:url value="/product/skinCare/HandCare" />">Hand
											Care</a></li>
									<li><a href="<c:url value="/product/skinCare/LipCare" />">Lip
											Care</a></li>
									<li class="dropdown"><a
										href="<c:url value="/product/skinCare/Moisturisers" />">Moisturisers<span
											class="glyphicon glyphicon-menu-right" style="float: right;"></span></a>
										<ul class="dropdown-menu">
											<li><a
												href="<c:url value="/product/skinCare/Moisturisers/FaceMoisturiserDay" />">Face
													Moisturiser - Day</a></li>
											<li><a
												href="<c:url value="/product/skinCare/Moisturisers/FaceMoisturiserNight" />">Face
													Moisturiser - Night</a></li>
											<li><a
												href="<c:url value="/product/skinCare/Moisturisers/BodyMoisturisers" />">Body
													Moisturisers</a></li>
										</ul></li>

								</ul></li>

							<li><a href="<c:url value="/contactUs" />">Contact Us</a></li>


						</ul>


						<ul class="nav navbar-nav pull-right" style="margin-top: 10px">

							<c:if test="${pageContext.request.userPrincipal.name != null}">
								<c:url var="logoutUrl" value="/j_spring_security_logout" />

								<form class="" action="${logoutUrl}" method="post">



									<c:if
										test="${pageContext.request.userPrincipal.name!='admin1' }">
										<a href='<c:url value="/customer/cart"></c:url>'><span
											class="glyphicon glyphicon-shopping-cart"></span></a>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<a href='<c:url value="/customer/customer/editCustomer"/>'><span
											class="glyphicon glyphicon-user"></span></a>
									</c:if>
									

									<c:if
										test="${pageContext.request.userPrincipal.name=='admin1' }">
										<a href='<c:url value="/admin"></c:url>'>Admin</a>
									</c:if>
									&nbsp;
									<button type="submit" class="btn btn-default btn-sm">
										<span class="glyphicon glyphicon-log-out"></span> Log out
									</button>
						

								</form>


							</c:if>

							<c:if test="${pageContext.request.userPrincipal.name==null }">

								<li style="margin-top: -10px"><a
									href="<c:url value="/login" />">Login</a></li>
								<li style="margin-top: -10px"><a
									href="<c:url value="/register" />">Register</a></li>
							</c:if>



						</ul>

					</div>
				</div>
			</nav>

		</div>
	</div>