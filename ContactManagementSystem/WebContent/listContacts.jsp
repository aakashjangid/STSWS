<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>DASHBOARD</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
<style>
/* Style The Dropdown Button */
.dropbtn {
	background-color: #00B0FF;
	color: white;
	padding: 16px;
	font-size: 16px;
	border: none;
	cursor: pointer;
}

/* The container <div> - needed to position the dropdown content */
.dropdown {
	position: absolute;
	top: 50pt;
	left: 108pt;
	display: inline-block;
}

/* Dropdown Content (Hidden by Default) */
.dropdown-content {
	display: none;
	position: absolute;
	background-color: #f9f9f9;
	min-width: 160px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 1;
}

/* Links inside the dropdown */
.dropdown-content a {
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
}

/* Change color of dropdown links on hover */
.dropdown-content a:hover {
	background-color: black;
	color: white;
}

/* Show the dropdown menu on hover */
.dropdown:hover .dropdown-content {
	display: block;
}

/* Change the background color of the dropdown button when the dropdown content is shown */
.dropdown:hover .dropbtn {
	background-color: black;
}
</style>
</head>
<body background="images/pexels-photo-791501.jpeg">
	<header>
		<jsp:include page="include/header.jsp"></jsp:include>
	</header>
	<nav>
		<jsp:include page="include/menu.jsp"></jsp:include>
	</nav>
	<div class="dropdown">
			<button class="dropbtn">
				<img alt="logo" src="images/menu2.png">
			</button>
			<div class="dropdown-content">
				<a href="./ChangeUserInfoController">Change User Info</a> <a
					href="changeUserPassword.jsp">Change Password</a> <a href="#">Upgrade
					To Premium</a>
			</div>
		</div>
	<main>
	<center>
		<h2>Contact List</h2>
		<span class="success"><c:if test="${param.success=='cadd'}">
						Contact Added Successfully
					</c:if> <c:if test="${param.success=='cdelete'}"> Contact(s) Deleted Successfully </c:if>
			<c:if test="${param.success=='cupdate'}"> Contact Updated Successfully </c:if>
			<c:if test="${param.success=='csearch'}"> Search Result(s) </c:if> </span>
		<form action="DeleteMultipleContactController" method="post">
			<table border="1">
				<tr>
					<th>Select</th>
					<th>Name</th>
					<th>Contact</th>
					<th>Email</th>
					<th>Address</th>
					<th>Action</th>
				</tr>

				<c:forEach items="${requestScope.contactlist}" var="contact">
					<tr>
						<td><input type="checkbox" value="${contact.id}"
							name="checkboxarr" /></td>
						<td>${contact.name}</td>
						<td>${contact.contact}</td>
						<td>${contact.email}</td>
						<td>${contact.address}</td>
						<td><a href="./EditContactController?id=${contact.id}"
							class="button"><img
				alt="logo" src="images/edit.png" height="20px;" width="20px" title="Edit Contact"></a> &nbsp; <a
							href="./DeleteContactController?id=${contact.id}" class="button"><img
				alt="logo" src="images/delete.png" height="20px;" width="20px" title="Delete Contact"></a></td>
					</tr>
				</c:forEach>
				<tr>
					<td colspan="2" style="text-align: left;"><input type="submit"
						name="submit" value="Delete Selected" /></td>
				</tr>
			</table>
		</form>
	</center>
	</main>
	<footer>
		<jsp:include page="include/footer.jsp"></jsp:include>
	</footer>
</body>
</html>
