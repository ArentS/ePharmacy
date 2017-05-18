<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ include file="/WEB-INF/views/template/header.jsp"%>
<head></head>
<body>
	<div class="container-wrapper">
		<div class="container">
			<div class="page-header">
				<h1>Product Inventory Page</h1>

				<p class="lead">This is the inventory page</p>

			</div>

			<!-- 			<table style="table-layout:fixed; width: 1000px"> -->
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
						<th style="visibility: hidden"></th>
						<th>Product Name</th>
						<th>Category</th>
						<th>Condition</th>
						<th>Price</th>
						<th style="visibility: hidden"></th>
					</tr>
				</tfoot>

				<tbody>

					<c:forEach items="${products }" var="product">

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
									class="glyphicon glyphicon-info-sign"></span></a> &nbsp; &nbsp; <a
								href='<spring:url value="/admin/product/deleteProduct/${product.productId}"/>'>
									<span class="glyphicon glyphicon-trash"></span>
							</a> &nbsp; &nbsp; <a
								href='<spring:url value="/admin/product/editProduct/${product.productId}"/>'>
									<span class="glyphicon glyphicon-pencil"></span>
							</a></td>
						</tr>

					</c:forEach>

				</tbody>
			</table>

			<a href='<spring:url value="/admin/product/addProduct"/>'
				class="btn btn-primary">Add Product</a>

			<%@ include file="/WEB-INF/views/template/footer.jsp"%>
</body>