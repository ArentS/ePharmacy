<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ include file="/WEB-INF/views/template/header.jsp"%>
<head></head>
<body>
	<div class="container-wrapper">
		<div class="container">
			<div class="page-header">
				<h1>Customer Management Page</h1>

				<p class="lead">This is the customer management page.</p>

			</div>

			<table id="example" class="table table-striped table-hover"
				cellspacing="0" width="100%">
				<thead>
					<tr class="bg-success">
						<th>Name</th>
						<th>Email</th>
						<th>Phone</th>
						<th>Username</th>
						<th>Enabled</th>
						<th></th>

					</tr>
				</thead>

				<tfoot>
					<tr class="bg-success">
						<th>Name</th>
						<th>Email</th>
						<th>Phone</th>
						<th>Username</th>
						<th>Enabled</th>
						<th style="visibility:hidden"></th>
					</tr>
				</tfoot>


				<tbody>
					<c:forEach items="${customerList }" var="customer">
						<tr>

							<td>${customer.customerName }</td>
							<td>${customer.customerEmail }</td>
							<td>${customer.customerPhone }</td>
							<td>${customer.username }</td>
							<td>${customer.enabled }</td>
							<td><a
								href='<spring:url value="/admin/cust/deleteCustomer/${customer.customerId}"/>'><span
									class="glyphicon glyphicon-trash"></span></a></td>
						</tr>
					</c:forEach>
				<tbody>
			</table>

			<%@ include file="/WEB-INF/views/template/footer.jsp"%>
</body>