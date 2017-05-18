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
				<h1>Add Product</h1>

				<p class="lead">Fill the below information to add a product</p>

			</div>
			<div class="well">
				<div class="row">
					<form:form
						action="${pageContext.request.contextPath}/admin/product/addProduct?${_csrf.parameterName}=${_csrf.token}"
						method="post" commandName="product" enctype="multipart/form-data">
						<!-- So if you will upload a file without setting enctype=multipart/form-data, it will harm the file if the file contains special characters by encoding them. -->
						<div class="col-sm-12">
							<div class="col-sm-12 form-group">
								<label for="name">Name</label>
								<form:errors path="productName" cssStyle="color: #ff0000;" />
								<form:input path="productName" id="name" class="form-control" />
							</div>

							<div class="col-sm-12 form-group">
								<label for="category">Category</label><br> <label
									class="checkbox-inline"><form:radiobutton
										path="productCategory" id="category" value="Pills(Tablets)" />Pills(Tablets)
								</label> <label class="checkbox-inline"><form:radiobutton
										path="productCategory" id="category" value="Capsules" />Capsules</label>
								<label class="checkbox-inline"><form:radiobutton
										path="productCategory" id="category" value="Liquids(Syrups)" />Liquids(Syrups)</label>
								<label class="checkbox-inline"><form:radiobutton
										path="productCategory" id="category" value="Lozenges" />Lozenges</label>
								<label class="checkbox-inline"><form:radiobutton
										path="productCategory" id="category" value="Inhalants" />Inhalants</label>
								<label class="checkbox-inline"><form:radiobutton
										path="productCategory" id="category" value="Creams" />Creams</label>
								<label class="checkbox-inline"><form:radiobutton
										path="productCategory" id="category" value="Drops" />Drops</label>
								<label class="checkbox-inline"><form:radiobutton
										path="productCategory" id="category" value="Sprays" />Sprays</label>

							</div>

							<div class="col-sm-12 form-group">
								<label for="description">Description</label>
								<form:textarea path="productDescription" id="description"
									class="form-control" />
							</div>

							<div class="col-sm-12 form-group">
								<label for="price">Price</label>
								<form:errors path="productPrice" cssStyle="color: #ff0000;" />
								<form:input path="productPrice" id="price" class="form-control" />
							</div>

							<div class="col-sm-12 form-group">
								<label for="condition">Condition</label>
								<form:select class="form-control" path="productCondition"
									id="condition">
									<option value="" disabled selected hidden>Select your
										option</option>
									<optgroup label="Medicine">
										<option value="Allergy and Sinus">Allergy & Sinus</option>
										<option value="Antacids">Antacids - Indigestion &
											Heartburn</option>
										<option value="Arthritis">Arthritis</option>
										<option value="Antihistamines">Antihistamines</option>
										<option value="BloodPressure and Diabetes">Blood
											Pressure & Diabetes</option>
										<option value="Cough Cold and Flu">Cough, Cold & Flu</option>
										<option value="Diarrhea">Diarrhea</option>
										<option value="Ear Nose and Throat">Ear, Nose &
											Throat Care</option>
										<option value="Eye">Eye Care</option>
										<option value="Nausea and Travel Sickness">Nausea &
											Travel Sickness</option>
										<option value="Pain Relief">Pain Relief</option>
										<option value="Respiratory">Respiratory</option>
										<option value="Foot">Foot Care</option>
									</optgroup>
									<optgroup label="Vitamins & Supplements">
										<option value="Antioxidants">Antioxidants</option>
										<option value="Body Building">Body Building</option>
										<option value="Bone Health">Bone Health</option>
										<option value="Brain and Memory">Brain & Memory</option>
										<option value="Cholesterol">Cholesterol</option>
										<option value="Energy Support">Energy Support</option>
										<option value="Eye and Vision">Eye & Vision</option>
										<option value="Fish Oil">Fish Oil</option>
										<option value="Immune System and Vitamins">Immune
											System & Vitamins</option>
										<option value="Skin Hair and Nails">Skin, Hair &
											Nails</option>
										<option value="Sleeping and Insomnia">Sleeping &
											Insomnia</option>
										<option value="Weight Loss">Weight Loss</option>

									</optgroup>

									<optgroup label="Skin Care">
										<option value="Acne">Acne</option>
										<option value="Anti Wrinkle">Anti Wrinkle</option>
										<option value="Eczema and Problem Skin">Eczema &
											Problem Skin</option>
										<option value="Exfoliators and Scrubs">Exfoliators &
											Scrubs</option>
										<option value="Eyes Dark Circles">Eyes Dark Circles</option>
										<option value="Hand Care">Hand Care</option>
										<option value="Lip Care">Lip Care</option>
										<option value="Face Moisturiser Day">Face Moisturiser
											Day</option>
										<option value="Face Moisturiser Night">Face
											Moisturiser Night</option>
										<option value="Body Moisturisers">Body Moisturisers</option>
									</optgroup>

								</form:select>
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
								<form:errors path="unitInStock" cssStyle="color: #ff0000;" />
								<form:input path="unitInStock" id="unitInStock"
									class="form-control" />
							</div>

							<div class="col-sm-12 form-group">
								<label for="productManufacturer">Product Manufacturer</label>
								<form:input path="productManufacturer" id="productManufacturer"
									class="form-control" />
							</div>

							<div class="col-sm-6 form-group">
								<label for="productImage" class="control-label">Upload
									Image</label>
								<form:input path="productImage" id="productImage" type="file"
									class="form-input-large" />
							</div>
							<div class="col-sm-6 form-group">
								<label for="productPdf" class="control-label">Upload
									File</label>
								<form:input path="productPdf" id="productPdf" type="file"
									class="form-input-large" />
							</div>


							<div class="col-sm-12 form-group">
								<br> <input type="submit" value="Submit"
									class="btn btn-default">&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a
									href='<c:url value="/admin/productInventory"/>'
									class="btn btn-default">Cancel</a>
							</div>
						</div>
					</form:form>
				</div>
			</div>
			<%@ include file="/WEB-INF/views/template/footer.jsp"%>
		</div>
	</div>