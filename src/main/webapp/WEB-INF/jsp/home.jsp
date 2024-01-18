<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.eidia.exam.entity.Demande" %>
    <%@ page import="com.eidia.exam.entity.Resource" %>
    <%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<!-- Google Fonts -->
  <link href="https://fonts.gstatic.com" rel="preconnect">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="${pageContext.request.contextPath}/resources/admin/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/resources/admin/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/resources/admin/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/resources/admin/vendor/quill/quill.snow.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/resources/admin/vendor/quill/quill.bubble.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/resources/admin/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/resources/admin/vendor/simple-datatables/style.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="${pageContext.request.contextPath}/resources/admin/css/style.css" rel="stylesheet">

<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css"  rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>

<title>Home Page - UEMF Resources</title>
</head>
<body>
<!-- ======= Header ======= -->
  <header id="header" class="header fixed-top d-flex align-items-center">

    <div class="d-flex align-items-center justify-content-between">
      <a href="/admin" class="logo d-flex align-items-center">
        <span class="d-none d-lg-block">UEMF Resources</span>
      </a>
      <i class="bi bi-list toggle-sidebar-btn"></i>
    </div>

    <div class="search-bar">
      <form class="search-form d-flex align-items-center" method="POST" action="demandeList">
        <input type="text" name="key" placeholder="Search" title="Enter search keyword">
        <button type="submit" title="Search"><i class="bi bi-search"></i></button>
      </form>
    </div><!-- End Search Bar -->

    <nav class="header-nav ms-auto">
      <ul class="d-flex align-items-center">

        <li class="nav-item d-block d-lg-none">
          <a class="nav-link nav-icon search-bar-toggle " href="#">
            <i class="bi bi-search"></i>
          </a>
        </li><!-- End Search Icon-->

        <li class="nav-item dropdown pe-3">
          <a class="nav-link nav-profile d-flex align-items-center pe-0" href="#" data-bs-toggle="dropdown">
            <img src="https://e7.pngegg.com/pngimages/980/304/png-clipart-computer-icons-user-profile-avatar-heroes-silhouette.png" alt="Profile" class="rounded-circle">
            <span class="d-none d-md-block dropdown-toggle ps-2">${user.username}</span>
          </a><!-- End Profile Iamge Icon -->          
        </li><!-- End Profile Nav -->

      </ul>
    </nav><!-- End Icons Navigation -->

  </header><!-- End Header -->
<!-- ======= Sidebar ======= -->
  <aside id="sidebar" class="sidebar">

    <ul class="sidebar-nav" id="sidebar-nav">

      <li class="nav-item">
        <a class="nav-link " href="index.html">
          <i class="bi bi-grid"></i>
          <span>Dashboard</span>
        </a>
      </li><!-- End Dashboard Nav -->

      <li class="nav-heading">Pages</li>

      <li class="nav-item">
        <a class="nav-link collapsed" href="/profile">
          <i class="bi bi-person"></i>
          <span>Profile</span>
        </a>
      </li><!-- End Profile Page Nav -->

      <li class="nav-item">
        <a class="nav-link collapsed" href="/demandeList">
          <i class="bi bi-list"></i>
          <span>Reservations</span>
        </a>
      </li><!-- End F.A.Q Page Nav -->

      <li class="nav-item">
        <a class="nav-link collapsed" href="/resourceList">
          <i class="bi bi-card-list"></i>
          <span>Resources</span>
        </a>
      </li><!-- End Contact Page Nav -->

      <li class="nav-item">
        <a class="nav-link collapsed" href="userList">
          <i class="bi bi-people"></i>
          <span>Users</span>
        </a>
      </li><!-- End Register Page Nav -->

      <li class="nav-item">
        <a class="nav-link collapsed" href="/logout">
          <i class="bi bi-box-arrow-in-right"></i>
          <span>Logout</span>
        </a>
      </li><!-- End Login Page Nav -->

      <li class="nav-item">
        <a class="nav-link collapsed" href="/about">
          <i class="bi bi-file-earmark"></i>
          <span>about</span>
        </a>
      </li><!-- End Blank Page Nav -->

    </ul>

  </aside><!-- End Sidebar-->
<main id="main" class="main">

    <div class="pagetitle">
      <h1>Dashboard</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="/admin">Home</a></li>
          <li class="breadcrumb-item active">Dashboard</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <section class="section dashboard">
      <div class="row">
        <!-- Left side columns -->
        <div class="col-lg-12">
        <div class="row">
        <!-- Sales Card -->
            <div class="col-xxl-4 col-md-4">
              <div class="card info-card revenue-card">
                <div class="card-body">
                  <h5 class="card-title">Bookings </h5>
                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-list"></i>
                    </div>
                    <div class="ps-3">
                      <h6>${demandeSize}</h6>
                    </div>
                  </div>
                </div>
              </div>
            </div><!-- End Sales Card -->

		    <!-- Revenue Card -->
            <div class="col-xxl-4 col-md-4">
              <div class="card info-card revenue-card">
                <div class="card-body">
                  <h5 class="card-title">Users </span></h5>
                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-people"></i>
                    </div>
                    <div class="ps-3">
                      <h6>${resourceSize}</h6>
                     </div>
                  </div>
                </div>

              </div>
            </div><!-- End Revenue Card -->

			<!-- Customers Card -->
            <div class="col-xxl-4 col-md-4">
              <div class="card info-card revenue-card">
                <div class="card-body">
                  <h5 class="card-title">Resources</span></h5>
                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bx bx-building-house"></i>
                    </div>
                    <div class="ps-3">
                      <h6>${userSize}</h6>
                     </div>
                  </div>
                </div>
              </div>
            </div><!-- End Customers Card -->
        </div>
        <div class="col-12">
              <div class="card top-selling overflow-auto">
                <div class="card-body pb-0">
                  <h5 class="card-title">Waiting List </h5>
                  <table class="table table-info">
                  <thead>
                  	<tr>
                    	<th>Id</th>
			    		<th>User</th>
			    		<th>Resource</th>
			    		<th>Date</th>
			   			<th>Start Time</th>
			    		<th>End Time</th>
			    		<th>Motif</th>
			    		<th>Status</th>
			    		<th>Actions</th>
            		</tr>
        		</thead>
       		<tbody>
            <% for (Demande demande : (List<Demande>) request.getAttribute("demandes")) { %>
                <tr class="table-light">
                    <td class="table-light"><%= demande.getId() %></td>
                    <td class="table-light"><%= demande.getUserId() %></td>
                    <td class="table-light"><%= demande.getResourceId() %></td>
                    <td class="table-light"><%= demande.getDate() %></td>
                    <td class="table-light"><%= demande.getTaketime() %></td>
                    <td class="table-light"><%= demande.getBacktime() %></td>
                    <td class="table-light"><%= demande.getMotif() %></td>
                    <td class="table-light"><%= demande.getStatus() %></td> 
                    <td class="table-light">
                        <a href="validateDemande?id=<%= demande.getId() %>"class="btn"><i class="bi bi-check2-circle"></i></a>
                        <a href="refuseDemande?id=<%= demande.getId() %>" class="btn"><i class="bi bi-x-circle"></i></a>
                        <a onclick=" return confirm('Are you sure?')" href="deleteDemande?id=<%= demande.getId() %>" class="btn" ><i class="bi bi-trash-fill"></i></a>
                    </td>
                </tr>
            <% } %>
        </tbody>
    </table>
    </div>
    </div><!-- End Left side columns -->
    </div>
    </div>
    <!-- Top Selling -->
            <div class="col-12">
              <div class="card top-selling overflow-auto">
                <div class="card-body pb-0">
                  <h5 class="card-title">Top Resources</h5>
                  <table class="table table-info">
                    <thead>
                      <tr>
                        <th scope="col">Preview</th>
                        <th scope="col">Resource</th>
                        <th scope="col">Category</th>
                        <th scope="col">Location</th>
                        <th scope="col">Status</th>
                      </tr>
                    </thead>
                    <tbody>
                <% for (Resource resource : (List<Resource>) request.getAttribute("resources")) { %>
                <tr class="table-light">
                    <td class="table-light"> <a href=""><img src="<%= resource.getImage() %>" alt=""></a></td>
                    <td class="table-light"><%= resource.getName() %></td>
                    <td class="table-light"><%= resource.getType()%></td>
                    <td class="table-light"><%= resource.getLocation() %></td>
                    <td class="table-light"><%= resource.getStatus() %></td>
                </tr>
            <% } %>
        </tbody>
         </table>

         </div>

         </div>
            </div><!-- End Top Selling -->
            
            <!-- Reports -->
            <div class="col-12">
              <div class="card">

                <div class="filter">
                  <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                  <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                    <li class="dropdown-header text-start">
                      <h6>Filter</h6>
                    </li>

                    <li><a class="dropdown-item" href="#">Today</a></li>
                    <li><a class="dropdown-item" href="#">This Month</a></li>
                    <li><a class="dropdown-item" href="#">This Year</a></li>
                  </ul>
                </div>

                <div class="card-body">
                  <h5 class="card-title">Reports <span>/This Week</span></h5>

                  <!-- Line Chart -->
                  <div id="reportsChart"></div>

                  <script>
                    document.addEventListener("DOMContentLoaded", () => {
                      new ApexCharts(document.querySelector("#reportsChart"), {
                        series: [{
                          name: 'Salle Sport',
                          data: [31, 40, 70, 51, 42, 82, 56],
                        }, {
                          name: 'Salle informatique',
                          data: [11, 32, 55, 32, 34, 52, 41]
                        }, {
                          name: 'Terrain Foot',
                          data: [15, 11, 60, 18, 9, 24, 11]
                        }],
                        chart: {
                          height: 350,
                          type: 'area',
                          toolbar: {
                            show: false
                          },
                        },
                        markers: {
                          size: 4
                        },
                        colors: ['#4154f1', '#2eca6a', '#ff771d'],
                        fill: {
                          type: "gradient",
                          gradient: {
                            shadeIntensity: 1,
                            opacityFrom: 0.3,
                            opacityTo: 0.4,
                            stops: [0, 90, 100]
                          }
                        },
                        dataLabels: {
                          enabled: false
                        },
                        stroke: {
                          curve: 'smooth',
                          width: 2
                        },
                        
                      }).render();
                    });
                  </script>
                  <!-- End Line Chart -->

                </div>

              </div>
            </div><!-- End Reports -->
    </div>
    </section>
    

  </main><!-- End #main -->


<!-- Vendor JS Files -->
  <script src="${pageContext.request.contextPath}/resources/admin/vendor/apexcharts/apexcharts.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/admin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/admin/vendor/chart.js/chart.umd.js"></script>
  <script src="${pageContext.request.contextPath}/resources/admin/vendor/echarts/echarts.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/admin/vendor/quill/quill.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/admin/vendor/simple-datatables/simple-datatables.js"></script>
  <script src="${pageContext.request.contextPath}/resources/admin/vendor/tinymce/tinymce.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/admin/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="${pageContext.request.contextPath}/resources/admin/js/main.js"></script>
</body>
</html>