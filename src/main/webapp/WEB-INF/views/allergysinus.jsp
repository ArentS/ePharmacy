<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/views/template/header.jsp"%>

<head>

</head>
<body>

	<div class="container-wrapper">
		<div class="container">
			<div class="page-header">
				<h1>All products</h1>

				<p class="lead">Checkout all the awesome products available now!
				</p>

			</div>


			<table id="example" class="table table-striped table-hover"
				cellspacing="0" width="100%">
				<thead>
					<tr class="bg-success">
						<th>Photo Thumb</th>
						<th>Product Name</th>
						<th>Category</th>
						<th>Condition</th>
						<th>Price</th>
						<th></th>
					</tr>
				</thead>
				<tfoot>
					<tr class="bg-success">
						<th style="visibility:hidden">Photo Thumb</th>
						<th>Product Name</th>
						<th>Category</th>
						<th>Condition</th>
						<th>Price</th>
						<th style="visibility:hidden"></th>
					</tr>
				</tfoot>

				<tbody>
					<c:forEach items="${products }" var="product">
						<c:if test="${product.productCondition=='Allergy and Sinus'}">
							<tr>
								<!-- 						<td><img src="#" alt="image" /></td> -->
								<td><img
									src='<c:url value="/resources/images/${product.productId }.png"/>'
									style="width: 100%; height: 100px" alt="image" /></td>

								<td>${product.productName }</td>
								<td>${product.productCategory }</td>
								<td>${product.productCondition }</td>
								<td>${product.productPrice}Euro</td>
								<td><a
									href='<spring:url value="/product/viewProduct/${product.productId}"/>'><span
										class="glyphicon glyphicon-info-sign"></span></a></td>
							</tr>
						</c:if>
					</c:forEach>

				</tbody>
			</table>

			<%@ include file="/WEB-INF/views/template/footer.jsp"%>
</body>