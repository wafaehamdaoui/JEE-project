<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.eidia.exam.entity.Resource" %>
    <%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Roboto:300,300i,400,400i,500,500i,700,700i&display=swap" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="${pageContext.request.contextPath}/resources/user/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/resources/user/vendor/aos/aos.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/resources/user/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/resources/user/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/resources/user/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/resources/user/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/resources/user/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="${pageContext.request.contextPath}/resources/user/css/style.css" rel="stylesheet">
<title>UEMF Resources - Welcome</title>
</head>
<body>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top d-flex align-items-center ">
    <div class="container d-flex justify-content-between align-items-center">

      <div class="logo">
        <h1 class="text-light"><a href="index.html"><span>UEMF Resources</span></a></h1>
        <!-- Uncomment below if you prefer to use an image logo -->
        <!-- <a href="index.html"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->
      </div>

      <nav id="navbar" class="navbar">
        <ul>
          <li><a class="active " href="/user">Home</a></li>
          <li><a href="/myReservation">My Reservations</a></li>
          <li><a href="/resources">Resources</a></li>
          <li><a href="/rules">Rules of use</a></li>
          <li><a href="team.html"></a></li>
          <li><a href="/contact">Contact Us</a></li>
          <li><a href="/logout">Logout</a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->
  
  <main id="main">
    <!-- ======= Portfolio Section ======= -->
    <section class="portfolio">
      <div class="container">

        <div class="row">
          <div class="col-lg-12">
            <ul id="portfolio-flters">
              <li data-filter="*" class="filter-active">All Resources</li>
              <li data-filter=".filter-app">Computer</li>
              <li data-filter=".filter-card">Workspace</li>
              <li data-filter=".filter-web">Sport</li>
            </ul>
          </div>
        </div>

        <div class="row portfolio-container" data-aos="fade-up" data-aos-easing="ease-in-out" data-aos-duration="500">

          <% for (Resource resource : (List<Resource>) request.getAttribute("resources")) { 
          if(resource.getType().equalsIgnoreCase("Computer")){
          %>
          <div class="col-lg-4 col-md-6 portfolio-wrap filter-app">
            <div class="portfolio-item">
              <img src="<%= resource.getImage() %>" class="img-fluid" alt="">
              <div class="portfolio-info">
                <h3><%= resource.getName() %></h3>
                <h3><%= resource.getLocation() %></h3>
              </div>
            </div>
          </div>

          <% }else if(resource.getType().equalsIgnoreCase("Sport")){ %>
          <div class="col-lg-4 col-md-6 portfolio-wrap filter-web">
            <div class="portfolio-item">
              <img src="<%= resource.getImage() %>" class="img-fluid" alt="">
              <div class="portfolio-info">
                <h3><%= resource.getName() %></h3>
                <h3><%= resource.getLocation() %></h3>
              </div>
            </div>
          </div>

          <% }else if(resource.getType().equalsIgnoreCase("Workspace")){ %>
          <div class="col-lg-4 col-md-6 portfolio-wrap filter-card">
            <div class="portfolio-item">
              <img src="<%= resource.getImage() %>" class="img-fluid" alt="">
              <div class="portfolio-info">
                <h3><%= resource.getName() %></h3>
                <h3><%= resource.getLocation() %></h3>
              </div>
            </div>
          </div>
          <% } %>
          
        <% } %>

        </div>

      </div>
    </section><!-- End Portfolio Section -->

  </main><!-- End #main -->

<!-- ======= Footer ======= -->
  <footer id="footer" data-aos="fade-up" data-aos-easing="ease-in-out" data-aos-duration="500">
    <div class="footer-top">
      <div class="container">
        <div class="row">

          <div class="col-lg-3 col-md-6 footer-links">
            <h4>Useful Links</h4>
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a href="/user">Home</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="/about">About us</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="/resourceList">Resources</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="/myReservation">My Reservation</a></li>
            </ul>
          </div>

          <div class="col-lg-3 col-md-6 footer-links">
            <h4>Our Services</h4>
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Workspace</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Sport hall</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Sport fields</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Computers</a></li>
            </ul>
          </div>

          <div class="col-lg-3 col-md-6 footer-contact">
            <h4>Contact Us</h4>
            <p>
              Université Euromed de Fès <br>
              BP 51, Fès principale<br>
              Maroc  <br><br>
              <strong>Phone:</strong> +212 538 90 90 00<br>
              <strong>Email:</strong> contact@ueuromed.org<br>
            </p>

          </div>

          <div class="col-lg-3 col-md-6 footer-info">
            <h3>About UEMF Resources</h3>
            <p>The UEMF Resources app simplifies access to university facilities with quick, real-time reservations for computer labs, sports fields, and study spaces, enhancing students' resource utilization and convenience</p>
            <div class="social-links mt-3">
              <a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
              <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
              <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
              <a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
            </div>
          </div>

        </div>
      </div>
    </div>

    <div class="container">
      <div class="copyright">
        &copy; Copyright <strong><span>UEMF Resources</span></strong>. All Rights Reserved
      </div>
    </div>
  </footer><!-- End Footer -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="${pageContext.request.contextPath}/resources/user/vendor/purecounter/purecounter_vanilla.js"></script>
  <script src="${pageContext.request.contextPath}/resources/user/vendor/aos/aos.js"></script>
  <script src="${pageContext.request.contextPath}/resources/user/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/user/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/user/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/user/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/user/vendor/waypoints/noframework.waypoints.js"></script>
  <script src="${pageContext.request.contextPath}/resources/user/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="${pageContext.request.contextPath}/resources/user/js/main.js"></script>
</body>
</html>