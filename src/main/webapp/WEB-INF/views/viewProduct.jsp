<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ include file="/WEB-INF/views/template/header.jsp"%>
<head></head>
<body>
	<div class="container-wrapper">
		<div class="container">
			<div class="page-header">
				<h1>Product Detail</h1>

				<p class="lead">Here is the detail information of the product</p>

			</div>

			<div class="container" ng-app="cartApp">
				<div class="row">
					<div class="col-md-5">
						<!-- 						<img alt="image" src="#" style="width: 100%; height: 300px" /> -->
						<img
							src='<c:url value="/resources/images/${product.productId }.png"/>'
							style="width: 100%" alt="image" />
					</div>
					<div class="col-md-5">
						<h3>${product.productName}</h3>
						<p>${product.productDescription }</p>
						<p>
							<strong>Manufacturer</strong> ${product.productManufacturer }
						</p>
						<p>
							<strong>Category</strong> ${product.productCategory }
						</p>
						<p>
							<strong>Condition</strong> ${product.productCondition }
						</p>
						<h4>${product.productPrice }Euro</h4>

						<br>

						<c:set var="role" scope="page" value="${param.role }" />
						<c:set var="url" scope="page" value="/product/productList" />
						<c:if test="${role='admin'}">
							<c:set var="url" scope="page" value="/admin/productInventory" />
						</c:if>

						<!-- Nese je admin shkon te faqja productInventory, nese je klient shkon tek productList -->
						<p ng-controller="cartCtrl">
							<a href='<c:url value="${url }"/>' class="btn btn-default">Back</a>
							
							<c:url
								value="/resources/pdfFiles/${product.productId }.pdf"
								var="pdflink" />

							<a href="${pdflink}"
								onclick="window.open('${pdflink}', 'newwindow', 'width=500, height=650'); return false;" class="btn btn-default">Leaflet INFO</a>
							
						
						<!--  <a href="#" class="btn btn-warning btn-large" ng-href="addToCart('${product.productId }')?${_csrf.parameterName}=${_csrf.token}"><span class="glyphicon glyphicon-shopping-cart"></span>Order Now</a>-->
						 	<c:if test="${pageContext.request.userPrincipal.name!='admin1' }">
							
								<a href="#" class="btn btn-warning btn-large"
									ng-click="addToCart('${product.productId }')"><span
									class="glyphicon glyphicon-shopping-cart"></span>Order Now</a>
								<a href='<spring:url value="/customer/cart"/>'
									class="btn btn-default"><span
									class="glyphicon glyphicon-hand-right"></span>View Cart</a>
								<input type="hidden" name="${_csrf.parameterName}"
									value="${_csrf.token}" />
							</c:if>
						</p>
						

					</div>
				</div>

			</div>


			<script src='<c:url value="/resources/js/controller.js"/>'></script>
			<%@ include file="/WEB-INF/views/template/footer.jsp"%>

</body>