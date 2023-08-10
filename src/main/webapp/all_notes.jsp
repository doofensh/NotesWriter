<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.entities.Notes"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>NotesWriter: Show Notes</title>
<%@include file="all-css-js.jsp"%>

<style>
body{
background-color: #F7FFE5;
}
</style>

</head>
<body>

	<div class="container-fluid">

		<%@include file="navbar.jsp"%>
		<br>

		<h1 class="text_uppercase mx-2">All Notes:</h1>

		<div class="row">

			<div class="col-12">

				<%
				Session s = FactoryProvider.getFactory().openSession();
				Query q = s.createQuery("from Notes");
				List<Notes> list = q.list();

				SimpleDateFormat formatter = new SimpleDateFormat("dd/MMM/yyyy");

				for (Notes notes : list) {
				%>

				<div class="card mt-3 mx-4" style="background-color: #FFFEC4" >
					<img class="card-img-top mx-4 my-3" src="img/note2.png"
						style="max-width: 5rem" alt="Card image cap">
					<div class="card-body px-5">
						<h5 class="card-title"><%=notes.getTitle()%></h5>
						<p class="card-text"><%=notes.getContent()%></p>
						<p class="text-secondary" style="text-align: right; font-weight: bold;">
							Last updated:
							<%=formatter.format(notes.getAddedDate())%>
						</p>
						<div class="container my-2">
							<a href="DeleteServlet?note_id=<%=notes.getId()%>"
								class="btn btn-danger mr-3">Delete</a> <a
								href="update.jsp?note_id=<%=notes.getId()%>"
								class="btn btn-primary">Update</a>
						</div>
					</div>
				</div>


				<%
				}

				s.close();
				%>

			</div>
		</div>

	</div>

</body>
</html>