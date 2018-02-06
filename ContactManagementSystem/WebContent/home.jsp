<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CONTACT MANAGEMENT SYSTEM</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body background="images/pexels-photo-791501.jpeg">
	<header>
		<jsp:include page="include/header.jsp"></jsp:include>
	</header>
	<nav>
		<jsp:include page="include/menu.jsp"></jsp:include>
	</nav>
	<main>
	<center>
		<span class="success">${fn:toUpperCase(param.msg)}</span>
	</center>
	<center>
		<span class="error"> ${fn:toUpperCase(param.err)}</span>
	</center>
	<br>
	<form action="UserLoginController" method="post">
		<table border="1" style="margin: auto;">
			<tr>
				<td><b>User Id</b></td>
				<td><input type="text" name="loginname" required/></td>
			</tr>
			<tr>
				<td><b>Password</b></td>
				<td><input type="password" name="password" required/></td>
			</tr>
			<tr>
				<td colspan="2" align="right"><a href="#"><b>Sign Up</b></a>&nbsp;<input
					type="submit" value="Sign In" /></td>
			</tr>
		</table>
	</form>
	</main>
	<footer>
		<jsp:include page="include/footer.jsp"></jsp:include>
	</footer>
</body>
</html>
