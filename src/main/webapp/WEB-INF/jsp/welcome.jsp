<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css"  rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>

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
  <header id="header" class="fixed-top d-flex align-items-center header-transparent">
    <div class="container d-flex justify-content-between align-items-center">

      <div class="logo">
        <h1 class="text-light"><a href="index.html"><span>UEMF Resources</span></a></h1>
        <!-- <a href="index.html"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->
      </div>

      <nav id="navbar" class="navbar">
        <ul>
          <li><a class="active " href="/user">Home</a></li>
          <li><a href="/myReservation">My Reservations</a></li>
          <li><a href="/resources">Resources</a></li>
          <li><a href="/rules">Rules of use</a></li>
          <li><a href="/contact">Contact Us</a></li>
          <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            ${user.username}
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="/logout">Logout</a></li>
          </ul>
        </li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->

  <!-- ======= Hero Section ======= -->
  <section id="hero" class="d-flex justify-cntent-center align-items-center">
    <div id="heroCarousel" class="container carousel carousel-fade" data-bs-ride="carousel" data-bs-interval="5000">

      <!-- Slide 1 -->
      <div class="carousel-item active">
        <div class="carousel-container">
          <h2 class="animate__animated animate__fadeInDown">Welcome to <span>UEMF Resources</span></h2>
          <p class="animate__animated animate__fadeInUp">Studying is not just about attending classes! It’s an opportunity to have new experiences and explore your interests.</p>
          <a href="/newDemande" class="btn-get-started animate__animated animate__fadeInUp">Reserve</a>
        </div>
      </div>

      <!-- Slide 2 -->
      <div class="carousel-item">
        <div class="carousel-container">
          <h2 class="animate__animated animate__fadeInDown">Digital infrastructure</h2>
          <p class="animate__animated animate__fadeInUp">The UEMF is equipped with digital infrastructures (hardware and software) allowing it to have a very modern digital campus</p>
          <a href="/newDemande" class="btn-get-started animate__animated animate__fadeInUp">Reserve</a>
        </div>
      </div>

      <!-- Slide 3 -->
      <div class="carousel-item">
        <div class="carousel-container">
          <h2 class="animate__animated animate__fadeInDown">Sports Infrastructure</h2>
          <p class="animate__animated animate__fadeInUp">The UEMF provides its students and staff with a sports infrastructure on campus which allows them to develop their physical abilities. Whether they are beginners, experienced athletes or athletes of national or international level, participants in the University's sporting activities see their sporting achievements rewarded with scholarships and other benefits.</p>
          <a href="/newDemande" class="btn-get-started animate__animated animate__fadeInUp">Reserve</a>
        </div>
      </div>

      <a class="carousel-control-prev" href="#heroCarousel" role="button" data-bs-slide="prev">
        <span class="carousel-control-prev-icon bx bx-chevron-left" aria-hidden="true"></span>
      </a>

      <a class="carousel-control-next" href="#heroCarousel" role="button" data-bs-slide="next">
        <span class="carousel-control-next-icon bx bx-chevron-right" aria-hidden="true"></span>
      </a>

    </div>
  </section><!-- End Hero -->

  <main id="main">

    <!-- ======= Services Section ======= -->
    <section class="services">
      <div class="container">

        <div class="row">
          <div class="col-md-6 col-lg-3 d-flex align-items-stretch" data-aos="fade-up">
            <div class="icon-box icon-box-pink">
              <div class="icon"><i class="bx bi-pc-display-horizontal"></i></div>
              <h4 class="title"><a href="">Computers</a></h4>
              <p class="description">The UEMF possesses digital infrastructures, encompassing both hardware and software, enabling the establishment of an exceptionally contemporary digital campus.</p>
            </div>
          </div>

          <div class="col-md-6 col-lg-3 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="100">
            <div class="icon-box icon-box-cyan">
              <div class="icon"><i class="bx bi-scooter"></i></div>
              <h4 class="title"><a href="">Sport hall</a></h4>
              <p class="description">A large sports hall accommodating multiple activities and a dedicated space allocated specifically for strength and cardiovascular workouts.</p>
            </div>
          </div>

          <div class="col-md-6 col-lg-3 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="200">
            <div class="icon-box icon-box-green">
              <div class="icon"><i class="bx bi-cookie"></i></div>
              <h4 class="title"><a href="">Sports Fields</a></h4>
              <p class="description">Officially certified professional courts for basketball, handball, volleyball, an approved football pitch, mini-football pitches a tennis court and a mini-golf course.</p>
            </div>
          </div>

          <div class="col-md-6 col-lg-3 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="200">
            <div class="icon-box icon-box-blue">
              <div class="icon"><i class="bx bi-person-workspace"></i></div>
              <h4 class="title"><a href="">Workspace</a></h4>
              <p class="description">Areas where students, faculty, or staff can work. These spaces can vary from libraries, study rooms, collaborative areas, or dedicated rooms for group projects or individual      work. </p>
            </div>
          </div>

        </div>

      </div>
    </section><!-- End Services Section -->

    <!-- ======= Features Section ======= -->
    <section class="features">
      <div class="container">

        <div class="section-title">
          <h2>Rules of use</h2>
          <p>At UEMF, certain guidelines ensure the fair, safe, and efficient utilization of various facilities and resources available to all students. These rules encompass diverse areas, from the utilization of sports facilities, computer and server resources, to shared workspaces. Adherence to these guidelines guarantees a conducive and harmonious environment for all, fostering respect, safety, and fairness in our community. We encourage each of you to familiarize yourselves with these regulations, respecting the shared spaces and resources that contribute to the vibrant academic and social life at UEMF.</p>
        </div>

        <div class="row" data-aos="fade-up">
          <div class="col-md-5">
            <img src="https://ueuromed.org/sites/default/files/upload/images/004_0.jpg" class="img-fluid" alt="">
          </div>
          <div class="col-md-7 pt-4">
            <h3>In Workspaces</h3>
            <p class="fst-italic">Users must ensure respect for others and promote a situation of calm, tranquility and work in the library. Readers are required to comply with the Library's internal regulations and the instructions provided by staff with good will. Any breach of these rules will be punished. Students who are too noisy will be excluded from the library.</p>
            <ul>
              <li><i class="bi bi-check"></i> The maximum number of documents authorized for borrowing is 3 per week. Borrowed documents must be returned on time, without damage.</li>
              <li><i class="bi bi-check"></i> In the event of late return of a borrowed item, a fine of 20 DHS per day of delay will be requested, under penalty of being deprived of any further borrowing.</li>
            </ul>
          </div>
        </div>

        <div class="row" data-aos="fade-up">
          <div class="col-md-5 order-1 order-md-2">
            <img src="https://ueuromed.org/sites/default/files/upload/images/20210609_183938_1.jpg" class="img-fluid" alt="">
          </div>
          <div class="col-md-7 pt-5 order-2 order-md-1">
            <h3>Sport hall</h3>
            <p class="fst-italic">
              To ensure fair and efficient use of our sport hall facilities at UEMF, certain guidelines are in place. With a maximum capacity of 40 individuals, each person is entitled to attend three sessions per week. 
            </p>
            <p>
              It's imperative to respect the specified opening and closing times of the hall, allowing for three allocated sessions while promptly vacating the area at closing to facilitate maintenance. Adherence to the booking system, if applicable, is crucial to secure a spot for a specific session. eur sint occaecat cupidatat non proident, sunt in
              culpa qui officia deserunt mollit anim id est laborum
            </p>
          </div>
        </div>

        <div class="row" data-aos="fade-up">
          <div class="col-md-5">
            <img src="https://ueuromed.org/sites/default/files/upload/images/p_terrain-omni_01.jpg" class="img-fluid" alt="">
          </div>
          <div class="col-md-7 pt-5">
            <h3>Football, Handball, Volyball and Basketball Fields</h3>
            <p>For the optimal and fair utilization of UEMF's diverse sports facilities, certain guidelines are established. Prior booking may be necessary for specific venues, ensuring equitable access through designated time slots. Adherence to capacity limits guarantees safety and a conducive environment for all users. </p>
            <p>
              Respect for equipment, timely arrivals, and prompt exits post-session are essential for efficient utilization and accommodating subsequent users. Adhering to safety protocols, appropriate attire, and shared space etiquette fosters a secure and harmonious environment. Each individual is responsible for cleaning up after themselves to maintain the facilities' cleanliness. Collaborative activities should respect designated areas, upholding fair play and sportsmanship throughout. 
            </p>
          </div>
        </div>

        <div class="row" data-aos="fade-up">
          <div class="col-md-5 order-1 order-md-2">
            <img src="https://ueuromed.org/sites/default/files/2020-04/roboti1.jpg" class="img-fluid" alt="">
          </div>
          <div class="col-md-7 pt-5 order-2 order-md-1">
            <h3>Computers and Servers</h3>
            <p class="fst-italic">
              To ensure the effective and secure utilization of UEMF's computer and server resources, several guidelines have been established. Users must access these systems using authorized credentials and refrain from sharing login information to maintain system integrity. 
            </p>
            <ul>
              <li><i class="bi bi-check"></i> Respect data privacy regulations and university policies.</li>
              <li><i class="bi bi-check"></i> Utilize computing resources for academic or authorized purposes only.</li>
              <li><i class="bi bi-check"></i>  Respect network usage guidelines.</li>
            </ul>
          </div>
        </div>

      </div>
    </section><!-- End Features Section -->

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