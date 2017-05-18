<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ include file="/WEB-INF/views/template/header.jsp"%>
<head>
<link href="<c:url value="/resources/css/register.css" />"
	rel="stylesheet">
	
	<script src="<c:url value="/resources/js/validatePass2.js" />"></script>
</head>
<body>
	<div class="container-wrapper">
		<div class="container center_div">
			<h1 class="well" id="colorText1">Customer Details</h1>

			<div class="well">
				<div class="row">
					<form:form
						action="${pageContext.request.contextPath}/customer/customer/editCustomer"
						method="post" enctype="multipart/form-data" commandName="customer"
						>

						<div class="col-sm-12">
							<h3 class="colorText3">Basic Info</h3>
							<div class="row">

								<div class="col-sm-12 form-group">
									<label for="name">Name</label>
									<form:input path="customerName" id="name" class="form-control" />
								</div>

								<div class="col-sm-6 form-group">
									<label for="newpassword">New Password</label> <input
										name="newpassword" type="password" id="newpassword" class="form-control" placeholder="Enter Password Here.."/>
								</div>
								
								<div class="col-sm-6 form-group">
									<label for="newpassword">Confirm Password</label>
									<input id="confirmPassword" type="password"
										class="form-control" placeholder="Confirm Password .." />
								</div>

								<div class="col-sm-12 form-group">
									<label for="email">Email</label>
									<form:input path="customerEmail" id="email"
										class="form-control" />
								</div>

								<div class="col-sm-12 form-group">
									<label for="phone">Phone</label>
									<form:input path="customerPhone" id="phone"
										class="form-control" />
								</div>
							</div>

							<h3 class="colorText3">Billing Address</h3>
							<div class="row">

								<div class="col-sm-12 form-group">
									<label for="billingStreet">Street Name</label>
									<form:input path="billingAddress.streetName" id="billingStreet"
										class="form-control" />
								</div>

								<div class="col-sm-12 form-group">
									<label for="billingApartmentNumber">Apartment Number</label>
									<form:input path="billingAddress.apartmentNumber"
										id="billingApartmentNumber" class="form-control" />
								</div>

								<div class="col-sm-6 form-group">
									<label for="billingCity">City</label>
									<form:input path="billingAddress.city" id="billingCity"
										class="form-control" />
								</div>

								<div class="col-sm-6 form-group">
									<label for="billingState">State</label>
									<form:input path="billingAddress.state" id="billingState"
										class="form-control" />
								</div>

								<div class="col-sm-6 form-group">
									<label for="billingCountry">Country</label>
									<form:input path="billingAddress.country" id="billingCountry"
										class="form-control" />
								</div>

								<div class="col-sm-6 form-group">
									<label for="billingZip">Zipcode</label>
									<form:input path="billingAddress.zipCode" id="billingZip"
										class="form-control" />
								</div>
							</div>

							<br> <br> <input type="submit" value="Submit" onclick="return Validate1()"
								class="btn btn-default" />
							<button class="btn btn-default">Cancel</button>
						</div>
					</form:form>
				</div>
			</div>




			<%@ include file="/WEB-INF/views/template/footer.jsp"%>
		</div>
	</div>