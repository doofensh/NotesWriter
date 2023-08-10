<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>NotesWriter</title>

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

		<div class="card mx-auto px-5 pb-3"
			style="max-width: 700px; background-color: #FFFEC4">
			<img alt="Notes" src="img/note2.png" class="image-fluid mx-auto py-3"
				style="max-width: 350px">
			<h1 style="text-shadow: aqua 3px 2px 5px;"
				class="text-uppercase text-primary text-center mt-3">Start
				taking your notes.</h1>

			<div class="container text-center">
				<button class="btn btn-primary text-center" type="button"
					onclick="window.location.href='add-notes.jsp';">Start here</button>
			</div>

		</div>

	</div>


</body>
</html>