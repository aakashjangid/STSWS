<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:if test="${sessionScope.user==null}">
	<ul>
		<li><b><a href="home.jsp">HOME &nbsp; <img alt="logo"
					src="images/home.png" height="30px;" width="30px"></a></b></li>
		<li><b><a href="https://aakashjangid.github.io">ABOUT
					&nbsp; <img alt="logo" src="images/about.png" height="30px;"
					width="30px">
			</a></b></li>
		<li><b><a href="contact.jsp">CONTACT US &nbsp; <img
					alt="logo" src="images/contacts.png" height="30px;" width="30px"></a></b></li>
		<li><b><a href="userRegistration.jsp">SIGN UP &nbsp; <img
					alt="logo" src="images/196436-200.png" height="30px;" width="30px"></a></b></li>
	</ul>
</c:if>
<c:if test="${sessionScope.user!=null}">
	<ul>
		<li><a href="FirstPageWelcome.jsp">HOME &nbsp; <img
				alt="logo" src="images/home.png" height="30px;" width="30px"></a></li>
		<li><b><a href="addContact.jsp">ADD CONTACT &nbsp; <img
					alt="logo" src="images/196436-200.png" height="30px;" width="30px">
			</a></b></li>
		<li><b><a href="./ContactListController">LIST CONTACTS
					&nbsp; <img alt="logo" src="images/users-2-icon.png" height="30px;"
					width="30px">
			</a></b></li>
		<li><b><a href="./UserLogoutController">LOGOUT &nbsp; <img
					alt="logo" src="images/012_power-512.png" height="30px;"
					width="30px"></a></b></li>

		<li class="searchOption"><form action="SearchContactController"
				method="post" class="a">
				<input type="text" name="freetext" required/> <input type="submit"
					name="Submit" value="Search" />
			</form></li>
	</ul>
</c:if>
