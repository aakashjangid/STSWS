<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>UPDATE USER DETAILS</title>
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
	<form action="ChangeUserPasswordController?id=${user.id}" method="post">
		<table border="1" style="margin: auto;">
			<tr>
				<td><b>Old Password</b></td>
				<td><input type="password" name="oldPassword" /></td>
			</tr>
			<tr>
				<td><b>New Password</b></td>
				<td><input type="password" name="newPassword" /></td>
			</tr>
			<tr>
				<td><b>Re-type Password</b></td>
				<td><input type="password" name="reNewPassword" /></td>
			</tr>
			<tr>
				<td colspan="2" align="right"><input type="submit"
					value="Update Password" /></td>
			</tr>
		</table>
	</form>
	</main>
	<footer>
		<jsp:include page="include/footer.jsp"></jsp:include>
	</footer>
</body>
</html>
