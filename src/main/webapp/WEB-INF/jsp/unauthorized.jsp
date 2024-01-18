<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css"  rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>

<title>Insert title here</title>
</head>
<body>
<% String userRole = (String)request.getAttribute("userRole");%>
<nav class="navbar navbar-expand-lg" style="background-color: #48cae4;">
  <div class="container-fluid">
    <a class="navbar-brand" href="#"><img src="https://counselorcorporation.com/wp-content/uploads/2022/09/Universite%CC%81-Euro-Me%CC%81diterrane%CC%81enne-de-Fe%CC%80s.png" alt="logo" width="60" height="25"></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
     <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        
        <% if (userRole.equals("admin")) { %>
        <li class="nav-item">
          <a class="nav-link active text-light" aria-current="page" href="/admin">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-light" href="/demandeList">Reservations</a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-light" href="/userList">Users</a>
        </li>
        <% } else { %>
        <li class="nav-item">
          <a class="nav-link active text-light" aria-current="page" href="/user">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-light" href="/myReservation">MyReservation</a>
        </li>
        <% } %>
        <li class="nav-item">
          <a class="nav-link text-light" href="/resourceList">Resources</a>
        </li>
      </ul>
      <form class="d-flex" role="search" action="demandeList" method="GET">
        <input class="form-control me-2" type="search" name="key" placeholder="Search..." aria-label="Search">
        <button class="btn btn-outline-success text-light" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>
<h1>action unauthorized! You don't have enough permissions</h1>
</body>
</html>