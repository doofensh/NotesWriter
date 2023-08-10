<%@page import="com.entities.Notes"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>NotesWriter: Update</title>
<%@include file="all-css-js.jsp"%>

<style>
body {
	background-color: #F7FFE5;
}
</style>

</head>
<body>
	<div class="container-fluid">
		<!-- <div class="container-fluid p-0 m-0"> -->

		<%@include file="navbar.jsp"%>
		<br>

		<%
		int noteId = Integer.parseInt(request.getParameter("note_id").trim());
		Session s = FactoryProvider.getFactory().openSession();
		Notes notes = (Notes) s.get(Notes.class, noteId);
		%>

		<div class="container" style="width: 70%">

			<h1>Update notes here.</h1>

			<form class="m-3" action="UpdateServlet" method="post">
				<div class="form-group">

					<input name="noteId" value="<%=notes.getId()%>" type="hidden" /> 
					<label
						for="title">Note Title</label> 
						<input type="text"
						class="form-control rang" id="title" aria-describedby="emailHelp"
						placeholder="Enter here" required name="title"
						value="<%=notes.getTitle()%>">
				</div>

				<div class="form-group">
					<label for="content">Type Content</label>
					<textarea class="form-control rang" id="content" required
						placeholder="Enter your content here." style="height: 100px;"
						name="content"><%=notes.getContent()%></textarea>
				</div>

				<div class="container text-center ">
					<button type="submit" class="btn btn-success"
						style="margin-right: 3rem">Save your note</button>
					<button type="reset" class="btn btn-primary">Clear</button>
				</div>

			</form>
		</div>

	</div>


</body>
</html>