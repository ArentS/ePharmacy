<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/views/template/header.jsp"%>

<head>

</head>
<body>

	<div class="container-wrapper">
		<div class="container">
			<div class="page-header">
				<h1>All Contact Lists</h1>

				<p class="lead">Please, check the contact forms!</p>

			</div>


			<table id="example" class="table table-striped table-hover"
				cellspacing="0" width="100%">
				<thead>
					<tr class="bg-success">
						<th>Contact Name</th>
						<th>Contact Email</th>
						<th>Contact Phone</th>
						<th style=" width: 405px">Contact Message</th>
						<th></th>
					
					</tr>
				</thead>
				<tfoot>
					<tr class="bg-success">
						<th>Contact Name</th>
						<th>Contact Email</th>
						<th>Contact Phone</th>
						<th>Contact Message</th>
						<th style="visibility: hidden"></th>
					</tr>
				</tfoot>

				<tbody>

					<c:forEach items="${contacts }" var="contact">

						<tr>

							<td>${contact.contactFullName }</td>
							<td>${contact.contactEmail }</td>
							<td>${contact.contactPhone }</td>
							<td><textarea readonly style="max-width: 400px ; max-height: 400px;">${contact.contactMessage }</textarea>
							</td>
							<td><a
								href='<spring:url value="/admin/deleteContact/${contact.contactId}"/>'>
									<span class="glyphicon glyphicon-trash"></span>
							</a></td>

						</tr>

					</c:forEach>

				</tbody>
			</table>

			<%@ include file="/WEB-INF/views/template/footer.jsp"%>
</body>