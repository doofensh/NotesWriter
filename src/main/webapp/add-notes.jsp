<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="all-css-js.jsp"%>

<title>NotesWriter: New Notes</title>
</head>

<style>
body{
background-color: #F7FFE5;
}
</style>

<body>

	<div class="container-fluid">
		<!-- <div class="container-fluid p-0 m-0"> -->

		<%@include file="navbar.jsp"%>
		<br>

		<div class="container" style="width: 70%">

			<h1>Create new notes here.</h1>


			<!-- New Note Form -->
			<form action="SaveNoteServlet" method="post">
			
				<div class="form-group">
					<label for="title">Note Title</label> 
					<input type="text"
						class="form-control rang" 
						id="title" 
						aria-describedby="emailHelp"
						placeholder="Enter here" 
						required
						name="title">
				</div>

				<div class="form-group">
					<label for="content">Type Content</label>
					<textarea class="form-control rang" 
					id="content" required
					placeholder="Enter here" 
					style="height: 100px;"
					name="content"></textarea>
				</div>
				
				<div class="container text-center ">
					<button type="submit" class="btn btn-primary" style="margin-right: 5rem">Add</button>
					<button type="reset" class="btn btn-primary">Clear</button>
				</div>

			</form>
		
		</div>

	</div>



</body>
</html>