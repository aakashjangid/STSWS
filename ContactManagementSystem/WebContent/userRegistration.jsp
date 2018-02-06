<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Registration</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body background="images/pexels-photo-226797.jpeg">
	<header>
		<jsp:include page="include/header.jsp"></jsp:include>
	</header>
	<nav>
		<jsp:include page="include/menu.jsp"></jsp:include>
	</nav>
	<main>
	<form action="UserRegisterController" method="post">
		<table border="1" style="margin: auto;">
			<tr>
				<td>Name</td>
				<td><input type="text" name="name" required/></td>
			</tr>
			<tr>
				<td>Contact</td>
				<td><input type="text" name="contact" required/></td>
			</tr>
			<tr>
				<td>Login Name</td>
				<td><input type="text" name="loginname" required/></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><input type="password" name="password" required/></td>
			</tr>
			<tr>
				<td colspan="2" align="right"><input type="submit"
					value="Register" /></td>
			</tr>
		</table>
	</form>
	</main>
	<footer>
		<jsp:include page="include/footer.jsp"></jsp:include>
	</footer>
</body>
</html>
