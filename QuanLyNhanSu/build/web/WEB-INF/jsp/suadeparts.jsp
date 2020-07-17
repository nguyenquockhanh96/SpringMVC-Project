<!DOCTYPE html>
<html lang="en">
    <%@page contentType="text/html" pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        <script src="//code.jquery.com/jquery-3.3.1.js"></script>
        <script src="//cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
        <script src="//cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js"></script>
        <link href="//cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css" rel="stylesheet" >
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

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
                        <a href="suadeparts.htm?lang=en">English</a> | <a href="suadeparts.htm?lang=vi">Việt nam</a>
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
                        <h1 class="text-uppercase text-white font-weight-bold"><spring:message code="lable.home.li2" text="Cáº­p nháº­t phÃ²ng ban"/></h1>
                        <br>
                        <br>
                        <br>
                        <br>
                        
                        <form action="suadeparts.htm" method="post" modelAttribute="depart" role="form" class="contactForm">
                            <c:set var="depart" value="${depart}"></c:set>
                                <div class="form-row" style="color: red">

                                    <div class="form-group col-md-6">
                                        <input type="text" class="form-control" name="id" value="${depart.id}" id="email" placeholder="mã phòng ban" data-rule="minlen:2" data-msg="Vui lòng nhập mã phòng ban" />
                                    <div class="validation"></div>
                                    
                                </div>
                                    
                                <div class="form-group col-md-6">
                                    <input type="text" name="name" value="${depart.name}" class="form-control" id="name" placeholder="Tên phòng ban" data-rule="minlen:1" data-msg="Vui lòng nhập tên phòng ban" />
                                    <div class="validation"></div>
                                </div>
                            </div>

                            <div class="form-row" style="color: red">
                                <div class="text-center" style="padding-left: 406px; padding-top: 24px; padding-bottom: 24px;"><button class="btn btn-outline-success my-2 my-sm-0" name="btnUpdateDP" type="submit"><spring:message code="btn.add3" text="Sửa"/></button>&nbsp;&nbsp;&nbsp;<button class="btn btn-outline-success my-2 my-sm-0" name="btnReset" type="submit"><spring:message code="btn.add6" text="Làm mới"/></button></div>
                            </div> 
                        </form>
                        <hr class="divider my-4">
                    </div>
                </div>
            </div>
        </header>


        <table class="bordered" id="dataTable" width="100%" cellspacing="0" style="margin-left: 0   px; font-family: Times New Roman">
            <div >
                <thead >
                    <tr>
                        <th><spring:message code="fi.c1" text="Mã phòng ban"/> </th>
                        <th><spring:message code="fi.c2" text="Tên phòng ban"/></th>
                        <th><spring:message code="fi.d3" text="Thao tác"/></th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="c" items="${departs}">
                        <tr>
                            <td><label>${c.id}</label></td>
                            <td><label>${c.name}</label></td>
                            <td><a href="suadeparts.htm?lnkEditDP&id=${c.id}">Sửa</a></td>
                        </tr>
                    </c:forEach>
                </tbody>

        </table>
                    

        <br><br>
        <hr><br>

        <br>


    </div><!--



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

    <!-- Custom scripts for this template -->
    <script src="js/creative.min.js"></script>
    <!--       copy-->
        <script src="vendor/datatables/jquery.dataTables.js"></script>
        <script src="vendor/datatables/dataTables.bootstrap4.js"></script>
        <!-- Custom scripts for all pages-->
        <script src="js/sb-admin.min.js"></script>
        <!-- Custom scripts for this page-->
        <script src="js/sb-admin-datatables.min.js"></script> 
<!--copy-->
</body>

</html>
