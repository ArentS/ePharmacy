<%@ include file="/WEB-INF/views/template/header.jsp"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>


<div class="container-wrapper">
	<div class="container">
		<section>
			<div class="jumbotron">
				<div class="container">
					<h1>Customer registered successfully</h1>
				</div>
			</div>
		</section>

<!-- ${cartId} e merr nga CartItemController, tek metoda getCart, meqe po e kthejna si model ne return cart -->
		<section class="container">
				<p>
					<a href='<spring:url value="/product/productList"/>' class="btn btn-default">Products</a>
				</p>
			
		</section>
	</div>
</div>

<script src='<c:url value="/resources/js/controller.js"/>'></script>

<%@ include file="/WEB-INF/views/template/footer.jsp"%>
