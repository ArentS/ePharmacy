<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ include file="/WEB-INF/views/template/header.jsp"%>
<head>
<link href="<c:url value="/resources/css/register.css" />"
	rel="stylesheet">
	
	<script src="<c:url value="/resources/js/validatePass.js" />"></script>
</head>

	<div class="container-wrapper">
		<div class="container center_div">
			<h1 class="well" id="colorText1">Registration Form</h1>
			<div class="well">
				<div class="row">
					<!-- pom doket nuk vyn qitu csrf -->

					<form:form action="${pageContext.request.contextPath}/register"
						method="post" commandName="customer">

						<div class="col-sm-12">
							<h3 class="colorText3">Basic Info</h3>
							<div class="row">
								<div class="col-sm-12 form-group">

									<label for="name">Full Name</label><form:errors path="customerName" cssStyle="color:#ff0000"/>
									<form:input path="customerName" id="name" class="form-control"
										placeholder="Enter Full Name Here.." />

								</div>

								<div class="col-sm-12 form-group">
									<label for="email">Email</label><span style="color: #ff0000;">${emailMsg}</span><form:errors path="customerEmail" cssStyle="color:#ff0000"/>
									<form:input path="customerEmail" id="email"
										class="form-control" placeholder="Enter Email Here.." />
								</div>

								<div class="col-sm-12 form-group">
									<label for="phone">Phone</label>
									<form:input path="customerPhone" id="phone"
										class="form-control" placeholder="Enter Phone Here.." />
								</div>

								<div class="col-sm-12 form-group">
									<label for="username">Username</label><span style="color: #ff0000;">${usernameMsg}</span><form:errors path="username" cssStyle="color:#ff0000"/>
									<form:input path="Username" id="username" class="form-control"
										placeholder="Enter Username Here.." />
								</div>

								<div class="col-sm-6 form-group">
									<label for="password">Password</label><form:errors path="password" cssStyle="color:#ff0000"/>
									<form:password path="password" id="password"
										class="form-control" placeholder="Enter Password Here.." />
								</div>
								
								<div class="col-sm-6 form-group">
									<label for="password">Confirm Password</label><form:errors path="password" cssStyle="color:#ff0000"/>
									<input id="confirmPassword" type="password"
										class="form-control" placeholder="Confirm Password .." />
								</div>
							</div>


							<h3 class="colorText3">Billing Address</h3>
							<div class="row">
								<div class="col-sm-12 form-group">
									<label for="billingStreet">Street Name</label>
									<form:input path="billingAddress.streetName" id="billingStreet"
										class="form-control" placeholder="Enter Street Name Here.."/>
								</div>

								<div class="col-sm-12 form-group">
									<label for="billingApartmentNumber">Apartment Number</label>
									<form:input path="billingAddress.apartmentNumber"
										id="billingApartmentNumber" class="form-control" placeholder="Enter Apartment Number Here.."/>
								</div>

								<div class="col-sm-6 form-group">
									<label for="billingCity">City</label>
									<form:input path="billingAddress.city" id="billingCity"
										class="form-control" placeholder="Enter City Here.."/>
								</div>

								<div class="col-sm-6 form-group">
									<label for="billingZip">Zipcode</label>
									<form:input path="billingAddress.zipCode" id="billingZip"
										class="form-control" placeholder="Enter Zipcode Here.."/>
								</div>

								<div class="col-sm-6 form-group">
									<label for="billingState">State</label>
									<form:input path="billingAddress.state" id="billingState"
										class="form-control" placeholder="Enter State Here.."/>
								</div>

								<div class="col-sm-6 form-group">
									<label for="billingCountry">Country</label>
									<form:input path="billingAddress.country" id="billingCountry"
										class="form-control" placeholder="Enter Country Here.."/>
								</div>
							</div>


							<h3 class="colorText3">Shipping Address</h3>
							<div class="row">
								<div class="col-sm-12 form-group">
									<label for="shippingStreet">Street Name</label>
									<form:input path="shippingAddress.streetName"
										id="shippingStreet" class="form-control" placeholder="Enter Street Name Here.."/>
								</div>

								<div class="col-sm-12 form-group">
									<label for="shippingApartmentNumber">Apartment Number</label>
									<form:input path="shippingAddress.apartmentNumber"
										id="shippingApartmentNumber" class="form-control" placeholder="Enter Apartment Number Here.."/>
								</div>

								<div class="col-sm-6 form-group">
									<label for="shippingCity">City</label>
									<form:input path="shippingAddress.city" id="shippingCity"
										class="form-control" placeholder="Enter City Here.."/>
								</div>

								<div class="col-sm-6 form-group">
									<label for="shippingZip">Zipcode</label>
									<form:input path="shippingAddress.zipCode" id="shippingZip"
										class="form-control" placeholder="Enter Zipcode Here.."/>
								</div>

								<div class="col-sm-6 form-group">
									<label for="shippingState">State</label>
									<form:input path="shippingAddress.state" id="shippingState"
										class="form-control" placeholder="Enter State Here.."/>
								</div>

								<div class="col-sm-6 form-group">
									<label for="shippingCountry">Country</label>
									<form:input path="shippingAddress.country" id="shippingCountry"
										class="form-control" placeholder="Enter Country Here.."/>
								</div>
							</div>



							<br> <br> <input type="submit" value="Submit" onclick="return Validate()"
								class="btn btn-default"> <a href='<c:url value="/"/>'
								class="btn btn-default">Cancel</a>
						</div>
					</form:form>
				</div>
			</div>
			<%@ include file="/WEB-INF/views/template/footer.jsp"%>
		</div>
	</div>