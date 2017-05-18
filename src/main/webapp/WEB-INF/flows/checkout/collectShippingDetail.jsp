<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ include file="/WEB-INF/views/template/header.jsp"%>
<link href="<c:url value="/resources/css/register.css" />"
	rel="stylesheet">
</head>
<body>
	<div class="container-wrapper">
		<div class="container center_div">
			<div class="page-header">
				<h1>Customer</h1>

				<p class="lead">Customer Details</p>

			</div>

			<div class="well">
				<div class="row">
					<!-- pom doket nuk vyn qitu csrf -->
					<form:form commandName="order">
						<div class="col-sm-12">


							<h3 class="colorText3">Shipping Address</h3>
							<div class="row">
								<div class="col-sm-12 form-group">
									<label for="shippingStreet">Street Name</label>
									<form:input path="cart.customer.shippingAddress.streetName"
										id="shippingStreet" class="form-control" />
								</div>

								<div class="col-sm-12 form-group">
									<label for="shippingApartmentNumber">Apartment Number</label>
									<form:input
										path="cart.customer.shippingAddress.apartmentNumber"
										id="shippingApartmentNumber" class="form-control" />
								</div>

								<div class="col-sm-6 form-group">
									<label for="shippingCity">City</label>
									<form:input path="cart.customer.shippingAddress.city"
										id="shippingCity" class="form-control" />
								</div>

								<div class="col-sm-6 form-group">
									<label for="shippingState">State</label>
									<form:input path="cart.customer.shippingAddress.state"
										id="shippingState" class="form-control" />
								</div>

								<div class="col-sm-6 form-group">
									<label for="shippingCountry">Country</label>
									<form:input path="cart.customer.shippingAddress.country"
										id="shippingCountry" class="form-control" />
								</div>

								<div class="col-sm-6 form-group">
									<label for="shippingZip">Zipcode</label>
									<form:input path="cart.customer.shippingAddress.zipCode"
										id="shippingZip" class="form-control" />
								</div>
							</div>
							<input type="hidden" name="_flowExecutionKey" /> <br> <br>

							<button class="btn btn-default"
								name="_eventId_backToCollectCustomerInfo">Back</button>
							<input type="submit" value="Next" class="btn btn-default"
								name="_eventId_shippingDetailCollected" />
							<button class="btn btn-default" name="_eventId_cancel">Cancel</button>
						</div>
					</form:form>
				</div>
			</div>




			<%@ include file="/WEB-INF/views/template/footer.jsp"%>
		</div>
	</div>