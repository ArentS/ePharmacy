<%@ include file="/WEB-INF/views/template/header.jsp"%>


<head>

</head>
<body>
	<div class="container-wrapper">
		<div class="container">
			<div class="page-header">
				<h1>Administrator Page</h1>

				<p class="lead">This is the administrator page!</p>

			</div>

			<%-- 			<c:if test="${pageContext.request.userPrincipal.name != null}"> --%>
			<!-- 				<h2> -->
			<%-- 					Welcome : ${pageContext.request.userPrincipal.name} |  --%>
			<%-- 					<a href="<c:url value="j_spring_security_logout?${_csrf.parameterName}=${_csrf.token}" />"> Logout</a> --%>
			<!-- 				</h2> -->
			<%-- 			</c:if> --%>
			<c:if test="${pageContext.request.userPrincipal.name != null}">
			<c:url var="logoutUrl" value="j_spring_security_logout" />
			
					<form action="${logoutUrl}" method="post">
					
				</form>
				
			</c:if>

			<h3>
				<a href='<c:url value="/admin/productInventory"/>'>Product
					Inventory</a>
			</h3>
			
			<p>Here you can view, check and modify the product inventory!</p>

			<br><br>

			<h3>
				<a href='<c:url value="/admin/customer"/>'>Customer Management</a>
			</h3>
			
			<p>Here you can view the customer information!</p>
			
			<br><br>
			
			<h3>
				<a href='<c:url value="/admin/contactUsList"/>'>Customer Messages</a>
			</h3>
			
			<p>Here you can view the customer messages!</p>

			<%@ include file="/WEB-INF/views/template/footer.jsp"%>
			