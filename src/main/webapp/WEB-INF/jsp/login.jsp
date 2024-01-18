<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<!-- Template Main CSS File -->
<link href="${pageContext.request.contextPath}/resources/user/css/style.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css"  rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>

<title>Login - UEMF Resource</title>
</head>
<body>
<div class="login-container">
		<h1>Login</h1>
		<font color="red">${errorMessage}</font>
		<form action="login" method="post">
			<div>
				<label for="name">User Name :</label>
				<input type="text" name="name" id="name" />
			</div>
			<div>
					<label for="password">Password :</label>
					<input type="password" name="password" id="password" />
			</div>
			<input type="submit" />
		</form>	
</div>

</body>
</html>