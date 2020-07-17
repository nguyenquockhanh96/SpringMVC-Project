<!DOCTYPE html>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
<!--           <meta content="width=device-width, initial-scale=1.0" name="viewport">-->
<!--        <meta content="" name="keywords">
        <meta content="" name="description">-->
        

        <title>Creative - Start Bootstrap Theme</title>

        <!-- Font Awesome Icons -->
        <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

        <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700" rel="stylesheet">
        <link href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic' rel='stylesheet' type='text/css'>

        <!-- Plugin CSS -->
        <link href="vendor/magnific-popup/magnific-popup.css" rel="stylesheet">

        <!-- Theme CSS - Includes Bootstrap -->
        <link href="css/creative.min.css" rel="stylesheet">
         <link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
        <link href="lib/animate/animate.min.css" rel="stylesheet">
        <link href="lib/ionicons/css/ionicons.min.css" rel="stylesheet">
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
        <link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet">
        
              <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Montserrat:300,400,500,700" rel="stylesheet">

        <!-- Bootstrap CSS File -->
        <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<!--         <link href="css/styles.css" rel="stylesheet">-->

    </head>

    <body id="page-top">

        <!-- Navigation -->
        <nav class="navbar navbar-expand-lg navbar-light fixed-top py-3" id="mainNav">
            <div class="container">
                <a class="navbar-brand js-scroll-trigger" href="#page-top">Start Bootstrap</a>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto my-2 my-lg-0">
                        <li class="nav-item">
                                <a class="nav-link js-scroll-trigger" href="dangnhap.htm" ><spring:message code="lable.home.menu1" text="Trang chá»§"/></a>
                        </li>
                        <li class="nav-item">
                                <a class="nav-link js-scroll-trigger" href="#about" ><spring:message code="lable.home.menu2" text="PhÃ²ng ban"/></a>
                            
                        </li>
                        <li class="nav-item">
                            <a class="nav-link js-scroll-trigger" href="#services"><spring:message code="lable.home.menu3" text="ThÃ nh tÃ­ch"/></a>
                          
                        </li>
                        <li class="nav-item">
                            <a class="nav-link js-scroll-trigger" href="#portfolio"><spring:message code="lable.home.menu4" text="Quáº£n lÃ½"/></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link js-scroll-trigger" href="#contact"><spring:message code="lable.home.menu8" text="LiÃªn há»"/></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link js-scroll-trigger" href="showaccount.htm"><spring:message code="lable.home.menu7" text="TÃ i khoáº£n"/></a>
                        </li>
                        <li class="nav-item">
                        <a href="dangnhap.htm?lang=en">English</a> | <a href="dangnhap.htm?lang=vi">Việt Nam</a>
                        </li>
                        <div class="dropdown">
                            <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <spring:message code="lable.home.menu5" text="Chá»©c nÄng"/>
                            </button>
                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                <a class="dropdown-item" href="suadeparts.htm"><spring:message code="lable.home.li2" text="Cáº­p nháº­t phÃ²ng ban"/></a>
                                <a class="dropdown-item" href="departs.htm"><spring:message code="lable.home.li4" text="ThÃªm phÃ²ng ban"/></a>
                                <a class="dropdown-item" href="addstaffs.htm"><spring:message code="lable.home.li3" text="Thêm nhân viên"/></a>
                                <a class="dropdown-item" href="updatestaffs.htm"><spring:message code="lable.home.li1" text="cập nhật nhân viên"/></a>
                                <a class="dropdown-item" href="records.htm"><spring:message code="lable.home.li5" text="Thêm thành tích"/></a>
                                <a class="dropdown-item" href="tableRecord.htm"><spring:message code="lable.home.li6" text="Thêm thành tích"/></a>
                               
                            </div>
                        </div>
                    </ul>
                </div>
            </div>
        </nav>

        <!-- Masthead -->
        <header class="masthead">
            <div class="container h-100">
                <div class="row h-100 align-items-center justify-content-center text-center">
                    <div class="col-lg-10 align-self-end">
                            <h1 class="text-uppercase text-white font-weight-bold"><spring:message code="title.home.h1" text="Báº®T Äáº¦U"/></h1>
                        <hr class="divider my-4">
                    </div>
                    <div class="col-lg-8 align-self-baseline">
                        <p class="text-white-75 font-weight-light mb-5"><spring:message code="title.home.h2" text="QUáº¢N LÃ NHÃN Sá»°"/></p>
                        <a class="btn btn-primary btn-xl js-scroll-trigger" href="#about">Find Out More</a>
                    </div>
                </div>
            </div>
        </header>

        <!-- About Section -->
        

        <!-- Services Section -->
        <section id="about">
                <div class="container">

                    <header class="section-header" style="text-align: center; padding-left: 133px">
                        <div class="col-lg-10 align-self-end">
                            <h1 class="text-center mt-0"><spring:message code="lable.home.menu2" text="Phòng ban"/></h1>
                        <hr class="divider my-4">
                    </div>
                    <div class="col-lg-8 align-self-baseline">
                        <p class="text-center mt-0" style="text-align: center; padding-left: 120px"><spring:message code="tile.home.h10" text="Các bộ phận phòng ban của công ty."/></p>
                      
                    
                    </header>

                    <div class="row about-cols">
                        <c:forEach var="departs" items="${departs}">
                            <div class="col-md-4 wow fadeInUp">
                                <div class="about-col">
                                    <div class="img">
                                        <img src="img/phongban.jpg" alt="" class="img-fluid">
                                        <div class="icon"><i class="ion-ios-speedometer-outline"></i></div>
                                    </div>
                                    <h2 class="title" style="font-family: Times New Roman"><a href="#">${departs.name}</a></h2>

                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </section>

        <!-- Portfolio Section -->
        <section id="portfolio">
            <div class="container-fluid p-0">
                <div class="row no-gutters">
                    <div class="col-lg-4 col-sm-6">
                        <a class="portfolio-box" href="img/portfolio/fullsize/kinhdoanh.jpg">
                            <img class="img-fluid" src="img/portfolio/thumbnails/kinhdoanh.jpg" alt="">
                            <div class="portfolio-box-caption">
                                <div class="project-category text-white-50">

                                </div>
                                <div class="project-name">
                                    IT
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <a class="portfolio-box" href="img/portfolio/fullsize/kinhdoanh.jpg">
                            <img class="img-fluid" src="img/portfolio/thumbnails/kinhdoanh.jpg" alt="">
                            <div class="portfolio-box-caption">
                                <div class="project-category text-white-50">

                                </div>
                                <div class="project-name">
                                    CÔNG NGHỆ THÔNG TIN
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <a class="portfolio-box" href="img/portfolio/fullsize/kinhdoanh.jpg">
                            <img class="img-fluid" src="img/portfolio/thumbnails/kinhdoanh.jpg" alt="">
                            <div class="portfolio-box-caption">
                                <div class="project-category text-white-50">

                                </div>
                                <div class="project-name">
                                    PHÒNG BAN
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <a class="portfolio-box" href="img/portfolio/fullsize/kinhdoanh.jpg">
                            <img class="img-fluid" src="img/portfolio/thumbnails/kinhdoanh.jpg" alt="">
                            <div class="portfolio-box-caption">
                                <div class="project-category text-white-50">
                                   PHÒNG
                                </div>
                                <div class="project-name">
                                    KẾ TOÁN
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <a class="portfolio-box" href="img/portfolio/fullsize/kinhdoanh.jpg">
                            <img class="img-fluid" src="img/portfolio/thumbnails/kinhdoanh.jpg" alt="">
                            <div class="portfolio-box-caption">
                                <div class="project-category text-white-50">
                                    PHÒNG
                                </div>
                                <div class="project-name">
                                    KINH DOANH
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <a class="portfolio-box" href="img/portfolio/fullsize/6.jpg">
                            <img class="img-fluid" src="img/portfolio/thumbnails/6.jpg" alt="">
                            <div class="portfolio-box-caption p-3">
                                <div class="project-category text-white-50">
                                    Category
                                </div>
                                <div class="project-name">
                                    Project Name
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </section>
        <%-- --%>
        <section class="page-section" id="services">
            <div class="container">
                <h2 class="text-center mt-0">At Your Service</h2>
                <hr class="divider my-4">
                <div class="row">
                    <div class="col-lg-3 col-md-6 text-center">
                        <div class="mt-5">
                            <i class="fas fa-4x fa-gem text-primary mb-4"></i>
                            <h3 class="h4 mb-2">Sturdy Themes</h3>
                            <p class="text-muted mb-0">Our themes are updated regularly to keep them bug free!</p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 text-center">
                        <div class="mt-5">
                            <i class="fas fa-4x fa-laptop-code text-primary mb-4"></i>
                            <h3 class="h4 mb-2">Up to Date</h3>
                            <p class="text-muted mb-0">All dependencies are kept current to keep things fresh.</p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 text-center">
                        <div class="mt-5">
                            <i class="fas fa-4x fa-globe text-primary mb-4"></i>
                            <h3 class="h4 mb-2">Ready to Publish</h3>
                            <p class="text-muted mb-0">You can use this design as is, or you can make changes!</p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 text-center">
                        <div class="mt-5">
                            <i class="fas fa-4x fa-heart text-primary mb-4"></i>
                            <h3 class="h4 mb-2">Made with Love</h3>
                            <p class="text-muted mb-0">Is it really open source if it's not made with love?</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Call to Action Section -->
        <section class="page-section bg-dark text-white">
            <div class="container text-center">
                <h2 class="mb-4">Free Download at Start Bootstrap!</h2>
                <a class="btn btn-light btn-xl" href="https://startbootstrap.com/themes/creative/">Download Now!</a>
            </div>
        </section>

        <!-- Contact Section -->
        <section class="page-section" id="contact">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-8 text-center">
                        <h2 class="mt-0">Let's Get In Touch!</h2>
                        <hr class="divider my-4">
                        <p class="text-muted mb-5">Ready to start your next project with us? Give us a call or send us an email and we will get back to you as soon as possible!</p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-4 ml-auto text-center mb-5 mb-lg-0">
                        <i class="fas fa-phone fa-3x mb-3 text-muted"></i>
                        <div>+1 (202) 555-0149</div>
                    </div>
                    <div class="col-lg-4 mr-auto text-center">
                        <i class="fas fa-envelope fa-3x mb-3 text-muted"></i>
                        <!-- Make sure to change the email address in anchor text AND the link below! -->
                        <a class="d-block" href="mailto:contact@yourwebsite.com">contact@yourwebsite.com</a>
                    </div>
                </div>
                <div class="form">
                       
                        <div id="errormessage"></div>
                        <form action="dangnhap.htm" method="post" role="form" class="contactForm">
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <input type="text" name="name" class="form-control" id="name" placeholder="<spring:message code="tile.home.h29" text="H? tên"/>" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                                    <div class="validation"></div>
                                </div>
                                <div class="form-group col-md-6">
                                    <input type="email" class="form-control" name="email" id="email" placeholder="<spring:message code="tile.home.h30" text="Email c?a b?n"/>" data-rule="email" data-msg="Please enter a valid email" />
                                    <div class="validation"></div>
                                </div>
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control" name="subject" id="subject" placeholder="<spring:message code="tile.home.h31" text="Ch? ??"/>" data-rule="minlen:4" data-msg="Please enter at least 8 chars of subject" />
                                <div class="validation"></div>
                            </div>
                            <div class="form-group">
                                <textarea class="form-control" name="message" rows="5" data-rule="required" data-msg="Please write something for us" placeholder="<spring:message code="tile.home.h32" text="N?i dung"/>"></textarea>
                                <div class="validation"></div>
                            </div>
                            <div class="navbar-toggler navbar-toggler-right"><button name="btnInsertRC" type="submit"><spring:message code="tile.home.h33" text="G?i tin nh?n"/></button></div>
                        </form>
                    </div>
            </div>
        </section>

        <!-- Footer -->
        <footer class="bg-light py-5">
            <div class="container">
                <div class="small text-center text-muted">Copyright &copy; 2019 - Start Bootstrap</div>
            </div>
        </footer>

        <!-- Bootstrap core JavaScript -->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

        <!-- Plugin JavaScript -->
        <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
        <script src="vendor/magnific-popup/jquery.magnific-popup.min.js"></script>


        <script src="js/creative.min.js"></script>
<!--        <script src="lib/jquery/jquery.min.js"></script>
        <script src="lib/jquery/jquery-migrate.min.js"></script>
        <script src="lib/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="lib/easing/easing.min.js"></script>
        <script src="lib/superfish/hoverIntent.js"></script>
        <script src="lib/superfish/superfish.min.js"></script>
        <script src="lib/wow/wow.min.js"></script>
        <script src="lib/waypoints/waypoints.min.js"></script>
        <script src="lib/counterup/counterup.min.js"></script>
        <script src="lib/owlcarousel/owl.carousel.min.js"></script>
        <script src="lib/isotope/isotope.pkgd.min.js"></script>
        <script src="lib/lightbox/js/lightbox.min.js"></script>
        <script src="lib/touchSwipe/jquery.touchSwipe.min.js"></script>-->

<!--        <script src="contactform/contactform.js"></script>

         Template Main Javascript File 
        <script src="js/main.js"></script>-->

    </body>

</html>
