<%@ include file="/WEB-INF/views/template/header.jsp"%>
<link href="<c:url value="/resources/css/register.css" />"
	rel="stylesheet">
</head>

<div class="container-wrapper">
		<div class="container center_div">

				<h1 class="well" id="colorText1">Login</h1>

				<c:if test="${not empty msg }">
					<div class="msg">${msg}</div>
				</c:if>

<div class="well">
		<div class="row">
			<form name="loginForm" class="form col-md-12 center-block"
				action='<c:url value="/j_spring_security_check"/>' method="post">

				<c:if test="${not empty error }">
					<div class="error" style="color: #ff0000;">${error }</div>
				</c:if>

<br>

				<div class="col-sm-12 form-group">
					<label for="username">User: </label> <input type="text"
						id="username" name="username" class="form-control"
						placeholder="Enter username here..." />
				</div>
				<div class="col-sm-12 form-group">
					<label for="password">Password:</label> <input type="password"
						id="password" name="password" class="form-control"
						placeholder="Enter password here..." />
				</div>
				<div class="form-group">
					<button type="submit" value="Submit"
						class="btn btn-primary btn-lg btn-block">Sign in</button>
					<input type="hidden" name="${_csrf.parameterName}"
						value="${_csrf.token}" />
				</div>
			</form>
		</div>

		<div class="modal-footer">
				<div class="col-md-12">
					
					
				<a href='<c:url value="/"/>' class="btn" data-dismiss="modal" aria-hidden="true">Cancel</a>
				</div>
			</div>
		</div>
	</div>
</div>



