<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.yash.cmsass.dao.Dao"%>
<%@page import="com.yash.cmsass.daoimpl.DaoImpl"%>

<%!
	Dao dao;
	ArrayList<String> courses;
	
	public void init() throws ServletException{
		dao = new DaoImpl();
		courses = dao.getCourses();
	}
%>

<html>
<head>
<style>
.button {
    background-color: #9ACD32;
    border: none;
    color: white;
    padding: 7px 10px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
    -webkit-transition-duration: 0.4s; /* Safari */
    transition-duration: 0.4s;
}
.button2:hover {
    box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
}
</style>
</head>
<body>

<div id="center">
	<fieldset>
		<legend>All Courses</legend>
		<form action="test" method="post">
			<table border='1' style="margin: auto;">
				<tr>
					<%
						for (int i = 0; i < courses.size(); i++) {
							System.out.println(courses.get(i));
							out.println("<td height='100' width='100'><center>" + courses.get(i) + "<br><br>");
							out.println("<button class='button button2' name='course' type='submit' value='"+courses.get(i)+"'>View</button></center></td>");
						}
					%>

				</tr>
			</table>
		</form>
	</fieldset>
</div>
</body>
</html>