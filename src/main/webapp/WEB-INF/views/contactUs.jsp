<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ include file="/WEB-INF/views/template/header.jsp"%>
<head>
<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBgcr62oINSM5f5Ls_JgbfrIXrCnUFAxk4&callback=init_map"
  type="text/javascript"></script>
</head>

<body>
	<div class="container-wrapper">
		<div class="container center_div">
			<div class="row">
				<div class="col-md-6">
					<div class="well well-sm">
						<form:form action="${pageContext.request.contextPath}/contactUs"
							method="post" commandName="contactus"
							onsubmit="setTimeout(function () { window.location.reload(); }, 10)">
							<fieldset>
								<legend class="text-center header">Contact us</legend>

								<div class="form-group">
									<div class="col-md-10 col-md-offset-1">

										<form:input path="contactFullName" id="name"
											class="form-control" placeholder="Enter Full Name Here.." />
										<br>
									</div>

								</div>


								<div class="form-group">
									<div class="col-md-10 col-md-offset-1">
										<form:input path="contactEmail" id="email"
											class="form-control" placeholder="Enter Email Here.." />
										<br>
									</div>
								</div>

								<div class="form-group">
									<div class="col-md-10 col-md-offset-1">
										<form:input path="contactPhone" id="phone"
											class="form-control" placeholder="Enter Phone Here.." />
										<br>
									</div>
								</div>

								<div class="form-group">
									<div class="col-md-10 col-md-offset-1">
										<form:textarea path="contactMessage" id="message"
											style="resize:vertical ; max-height: 400px;"
											class="form-control" placeholder="Enter Your Message Here.." />
										<br>
									</div>
								</div>

								<div class="form-group">
									<div class="col-md-12 text-center">
										<input type="submit" value="Submit" class="btn btn-default"
											onClick="alert('Thank you for your interest, you will get reply with in 24 hours!')">
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a
											href='<c:url value="/"/>' class="btn btn-default">Cancel</a>
									</div>
								</div>
							</fieldset>
						</form:form>
					</div>
				</div>
				<div class="col-md-6">
					<div>
						<div class="panel panel-default">
							<div class="text-center header">Our Office</div>
							<div class="panel-body text-center">
								<h4>Address</h4>
								<div>
									Boulevard Nënë Tereza<br /> Pristina DC<br /> # +377 (0) 999
									999<br /> <a href="mailto:#">service@company.com</a><br />

								</div>
								<hr />
								<div id="map1" class="map"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<%@ include file="/WEB-INF/views/template/footer.jsp"%>
		</div>
		
	</div>
</body>
