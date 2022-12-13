<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update</title>
<%@include file="all.jsp"%>
</head>
<body>

	<div class="container">


		<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
			<a class="navbar-brand" href="home">Contact Info</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item active"><a class="nav-link" href="/">add
							Contact <span class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item"><a class="nav-link" href="allcontacts">view
							all</a></li>


				</ul>


			</div>
		</nav>


		<div class="container" style="margin-top: 20px">
			<form action="${pageContext.request.contextPath}/updateContact"
				method="post">
				<input type="hidden" name="contactId" value="${contact.contactId}">

				<div class="form-group">
					<label for="formGroupExampleInput">Name :</label> <input
						type="text" class="form-control" id="formGroupExampleInput"
						name="contactName" value="${contact.contactName}">
				</div>
				<div class="form-group">
					<label for="formGroupExampleInput2">Email :</label> <input
						type="email" class="form-control" id="formGroupExampleInput2"
						name="contactEmail" value="${contact.contactEmail}">
				</div>
				<div class="form-group">
					<label for="formGroupExampleInput2">Phone Number : </label> <input
						type="number" class="form-control" id="formGroupExampleInput2"
						name="contactNumber" value="${contact.contactNumber}">
				</div>
				<div class="form-group row">
					<div class="col-sm-10">
						<button type="submit" class="btn btn-outline-dark">Update</button>
					</div>
				</div>
			</form>
		</div>


	</div>


</body>
</html>