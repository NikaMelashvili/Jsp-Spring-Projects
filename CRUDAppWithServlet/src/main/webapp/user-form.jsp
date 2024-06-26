<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
	<title>User Management Application</title>
	<link rel="stylesheet"
		  href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
		  integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
		  crossorigin="anonymous">
</head>
<body>

<header>
	<nav class="navbar navbar-expand-md navbar-dark" style="background-color: tomato">
		<div>
			<a href="#" class="navbar-brand"> User Management App </a>
		</div>

		<ul class="navbar-nav">
			<li><a href="<%=request.getContextPath()%>/list" class="nav-link">Users</a></li>
		</ul>
	</nav>
</header>
<br>
<div class="container col-md-5">
	<div class="card">
		<div class="card-body">
			<c:if test="${profile != null}">
			<form action="update" method="post" enctype="multipart/form-data">
				</c:if>
				<c:if test="${profile == null}">
				<form action="insert" method="post" enctype="multipart/form-data">
					</c:if>

					<caption>
						<h2>
							<c:if test="${profile != null}">
								Edit User
							</c:if>
							<c:if test="${profile == null}">
								Add New User
							</c:if>
						</h2>
					</caption>

					<c:if test="${profile != null}">
						<input type="hidden" name="id" value="<c:out value='${profile.id}' />" />
					</c:if>

					<fieldset class="form-group">
						<label>First Name</label>
						<input type="text" value="<c:out value='${profile.firstName}' />" class="form-control" name="name" required="required">
					</fieldset>

					<fieldset class="form-group">
						<label>Profile Picture</label>
						<input type="file" class="form-control" name="profilePicture">
					</fieldset>

					<button type="submit" class="btn btn-success">Save</button>
				</form>
		</div>
	</div>
</div>
</body>
</html>
