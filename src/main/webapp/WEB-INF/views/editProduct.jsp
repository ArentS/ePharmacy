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
				<h1>Edit Product</h1>

				<p class="lead">Please update the product information here</p>
				<%-- 				<strong>${_csrf.token}</strong> --%>

			</div>

			<div class="well">
				<div class="row">
					<form:form
						action="${pageContext.request.contextPath}/admin/product/editProduct?${_csrf.parameterName}=${_csrf.token}"
						method="post" commandName="product" enctype="multipart/form-data">
						<!-- So if you will upload a file without setting enctype=multipart/form-data, it will harm the file if the file contains special characters by encoding them. -->
						<form:hidden path="productId" value="${product.productId }" />
						<div class="col-sm-12">
							<div class="col-sm-12 form-group">
								<label for="name">Name</label>
								<form:input path="productName" id="name" class="form-control"
									value="${product.productName }" />
							</div>



							<div class="col-sm-12 form-group">
								<label for="description">Description</label>
								<form:textarea path="productDescription" id="description"
									class="form-control" value="${product.productDescription }" />
							</div>

							<div class="col-sm-12 form-group">
								<label for="price">Price</label>
								<form:input path="productPrice" id="price" class="form-control"
									value="${product.productPrice }" />
							</div>


							<div class="col-sm-12 form-group">
								<label for="status">Status</label> <label
									class="checkbox-inline"><form:radiobutton
										path="productStatus" id="status" value="active" />Active</label> <label
									class="checkbox-inline"><form:radiobutton
										path="productStatus" id="status" value="inactive" />Inactive</label>

							</div>

							<div class="col-sm-12 form-group">
								<label for="unitInStock">Unit In Stock</label>
								<form:input path="unitInStock" id="unitInStock"
									class="form-control" value="${product.unitInStock }" />
							</div>

							<div class="col-sm-12 form-group">
								<label for="productManufacturer">Product Manufacturer</label>
								<form:input path="productManufacturer" id="productManufacturer"
									class="form-control" value="${product.productManufacturer }" />
							</div>

							<div class="col-sm-6 form-group">
								<label for="productImage" class="control-label">Upload
									Image</label>
								<form:input path="productImage" id="productImage" type="file"
									class="form-input-large"  />
							</div>

							<div class="col-sm-6 form-group">
								<label for="productPdf" class="control-label">Upload Pdf</label>
								<form:input path="productPdf" id="productPdf" type="file"
									class="form-input-large" />
							</div>

							<div class="col-sm-12 form-group">
								<input type="submit" value="submit" class="btn btn-default">
								&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a
									href='<c:url value="/"/>' class="btn btn-default">Cancel</a>
							</div>
						</div>
					</form:form>


				</div>
			</div>
	<%@ include file="/WEB-INF/views/template/footer.jsp"%>
		</div>
	</div>
