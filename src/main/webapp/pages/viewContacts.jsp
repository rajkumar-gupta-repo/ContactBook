<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Contacts</title>

<%@include file="all.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">


<style type="text/css">
.deletebtn {
	color: #ff6b5c;
}

.deletebtn:hover {
	color: red;
}

#editbtn {
	color: #d6d0c1;
}

#editbtn:hover {
	color: #4f4c45;
}
</style>
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

		<div class="container">
			<h5
				style="text-align: center; padding-top: 20px; padding-bottom: 20px">Contact
				List</h5>

			<table class="table">
				<thead>
					<tr>
						<th scope="col">ID</th>
						<th scope="col">Name</th>
						<th scope="col">Email</th>
						<th scope="col">Phone</th>
						<th scope="col">Last Updated</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${list}" var="contact">
						<c:if test="${contact.activeSwitch == false }">
							<tr>
								<th scope="row">${contact.contactId}</th>
								<td>${contact.contactName}</td>
								<td>${contact.contactEmail}</td>
								<td>${contact.contactNumber}</td>
								<td>${contact.updatedDate}</td>
								<td><a href="update/${contact.contactId}"><span
										class="btn material-symbols-outlined" id="editbtn"
										data-toggle="tooltip" data-placement="right"
										title="Update Contact"> edit </span></a> <a
									href="trash/${contact.contactId}"><span
										class=" btn material-symbols-outlined deletebtn"
										data-toggle="tooltip" data-placement="right"
										title="Move To Trash"> delete </span></a></td>


							</tr>

						</c:if>
						<%-- <div class="modal fade" id="exampleModal" tabindex="-1"
							role="dialog" aria-labelledby="exampleModalLabel"
							aria-hidden="true">
							<div class="modal-dialog" role="document">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title" id="exampleModalLabel">Alert</h5>
										<button type="button" class="close" data-dismiss="modal"
											aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
									</div>


									<div class="modal-body">
										<p>Are you sure ,you want to Delete this Contact.</p>

									</div>

									<div class="modal-footer">
										<a href="trash/<%=conId %>>" class="btn btn-secondary" id="conId" name="cn">Move
											to Trash</a> <a href="delete/${contact.contactId}"
											class="btn btn-danger">Delete</a>
									</div>

								</div>
							</div>
						</div> --%>

					</c:forEach>

				</tbody>
			</table>










		</div>



		<hr>
		<hr>
		<div class="container" style="margin-top: 200px">
			<h5
				style="text-align: center; padding-top: 20px; padding-bottom: 20px">Trash</h5>

			<table class="table">

				<tbody>
					<c:forEach items="${list}" var="contact">
						<c:if test="${contact.activeSwitch == true }">
							<tr style="text-decoration: line-through;">
								<th scope="row" id="conId">${contact.contactId}</th>
								<td>${contact.contactName}</td>
								<td>${contact.contactEmail}</td>
								<td>${contact.contactNumber}</td>
								<td>${contact.updatedDate}</td>

								<td><a href="delete/${contact.contactId}"><span
										class=" btn material-symbols-outlined deletebtn"
										data-toggle="tooltip" data-placement="right"
										title="Delete Permanently"> delete_forever </span></a></td>

							</tr>

						</c:if>
						<%-- <div class="modal fade" id="example" tabindex="-1" role="dialog"
							aria-labelledby="exampleModalLabel" aria-hidden="true">
							<div class="modal-dialog" role="document">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title" id="exampleModalLabel">Alert</h5>
										<button type="button" class="close" data-dismiss="modal"
											aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
									</div>


									<div class="modal-body">
										<p>you want to delete this permanently</p>

									</div>

									<div class="modal-footer">
										<a href="delete/${contact.contactId}" class="btn btn-danger">Delete</a>
									</div>

								</div>
							</div>
						</div>
 --%>
					</c:forEach>

				</tbody>
			</table>










		</div>



	</div>




</body>
</html>