<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ include file="/WEB-INF/views/template/header.jsp"%>
<head>
<link href="<c:url value="/resources/css/register.css" />"
	rel="stylesheet">
</head>
<body>
	<div class="container-wrapper">
		<div class="container center_div">
			<div class="page-header">
				<h1 class="well" id="colorText1">Customer Details</h1>

			</div>

			<div class="well">
				<div class="row">
					<!-- pom doket nuk vyn qitu csrf -->
					<form:form commandName="order">
						<div class="col-sm-12">

							<h3 class="colorText3">Basic Info</h3>
							<div class="row">
								<div class="col-sm-12 form-group">
									<label for="name">Name</label>
									<form:input path="cart.customer.customerName" id="name"
										class="form-control" />
								</div>

								<div class="col-sm-12 form-group">
									<label for="email">Email</label>
									<form:input path="cart.customer.customerEmail" id="email"
										class="form-control" />
								</div>

								<div class="col-sm-12 form-group">
									<label for="phone">Phone</label>
									<form:input path="cart.customer.customerPhone" id="phone"
										class="form-control" />
								</div>
							</div>

							<h3 class="colorText3">Billing Address</h3>
							<div class="row">
								<div class="col-sm-12 form-group">
									<label for="billingStreet">Street Name</label>
									<form:input path="cart.customer.billingAddress.streetName"
										id="billingStreet" class="form-control" />
								</div>

								<div class="col-sm-12 form-group">
									<label for="billingApartmentNumber">Apartment Number</label>
									<form:input path="cart.customer.billingAddress.apartmentNumber"
										id="billingApartmentNumber" class="form-control" />
								</div>

								<div class="col-sm-6 form-group">
									<label for="billingCity">City</label>
									<form:input path="cart.customer.billingAddress.city"
										id="billingCity" class="form-control" />
								</div>

								<div class="col-sm-6 form-group">
									<label for="billingState">State</label>
									<form:input path="cart.customer.billingAddress.state"
										id="billingState" class="form-control" />
								</div>

								<div class="col-sm-6 form-group">
									<label for="billingCountry">Country</label>
									<form:input path="cart.customer.billingAddress.country"
										id="billingCountry" class="form-control" />
								</div>

								<div class="col-sm-6 form-group">
									<label for="billingZip">Zipcode</label>
									<form:input path="cart.customer.billingAddress.zipCode"
										id="billingZip" class="form-control" />
								</div>
							</div>

							<input type="hidden" name="_flowExecutionKey" /> <br> <br>

							<input type="submit" value="Next" class="btn btn-default"
								name="_eventId_customerInfoCollected" />
							<button class="btn btn-default" name="_eventId_cancel">Cancel</button>
						</div>
					</form:form>

				</div>
			</div>
			<%@ include file="/WEB-INF/views/template/footer.jsp"%>
		</div>
	</div>