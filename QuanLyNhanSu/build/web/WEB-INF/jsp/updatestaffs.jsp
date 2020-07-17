<!DOCTYPE html>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <base href="${pageContext.servletContext.contextPath}/" />
    
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <script src="//code.jquery.com/jquery-3.3.1.js"></script>
    <script src="//cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
    <link href="//cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css" rel="stylesheet" >

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
    <script type="text/javascript" charset="utf-8">
        $(document).ready(function () {
            $('#examplee').DataTable();
        });
    </script>
    

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
                        <a href="updatestaffs.htm?lang=en">English</a> | <a href="updatestaffs.htm?lang=vi">Việt nam</a>
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
                <div class="col-lg-10 align-self-end" style="height: 150%">
                    <h1 class="text-uppercase text-white font-weight-bold" style="padding-left: 60px; padding-top: 100px; padding-bottom: 24px"><spring:message code="lable.home.li1" text="CẬP NHẬT NHÂN VIÊN"/></h1>
                    <p style="padding-bottom:0px; margin-top: -35px; color:red">Trạng thái: ${message}</p>
                    <form:form action="updatestaffs.htm" method="post" modelAttribute="staff" role="form" class="contactForm">
                        <c:set var="staffins" value="${staff}"></c:set>
                            <div class="form-row" style="color: red;" >
                                <div class="form-group col-md-6">
                                    <input readonly=""  type="text" name="id" value="${staff.id}" class="form-control" id="name" placeholder="<spring:message code="fi.a1" text="Mã số"/>" data-rule="minlen:1" data-msg="Vui lòng nhập mã số" />
                                <div class="validation"></div>
                            </div>
                            <div class="form-group col-md-6">
                                <input type="text" class="form-control" name="name" value="${staff.name}" id="email" placeholder="<spring:message code="fi.a2" text="Họ tên"/>" data-rule="minlen:1" data-msg="Vui lòng nhập họ tên" />
                                <div class="validation"></div>
                            </div>
                        </div>
                        <div class="form-row" style="color: red">
                            <div class="form-group col-md-6">
                                <div></div>
                                <form:radiobutton path="gender" value="Nam"/> <spring:message code="fi.b1" text="Nam"/>
                                <form:radiobutton path="gender" value="Nữ"/> <spring:message code="fi.b2" text="Nữ"/>
                                <div class="validation"></div>                                  
                            </div>
                            <div class="form-group col-md-6">
                                <input type="text" class="form-control" name="birthday" value="${staff.birthday}" id="email" placeholder="<spring:message code="fi.a4" text="Ngày sinh"/>" data-rule="minlen:10" data-msg="Vui lòng nhập ngày sinh" />
                                <div class="validation"></div>
                            </div>
                        </div> 
                        <img src="img/${staff.photo}" width="150" height="150" style=" border-radius: 100%; float: left; margin-left: -155px; margin-top: -30px"/>
                        <img class="text-center" width="150" height="150" alt="Hình ảnh" style="border:1px solid black; border-radius: 100%; float: left; margin-left: -155px; margin-top: -30px" hidden id="showAvatar" >
                        <div class="form-row" style="color: red">
                            <div class="form-group col-md-6">
                                <input onchange="readURL(this)" type="file" name="photo" value="${staff.photo}" class="form-control" data-rule="minlen:1" id="name" data-msg="<spring:message code="fi.a5" text="Hình ảnh"/>" />
                                <div class="validation"></div>
                            </div>
                            <div class="form-group col-md-6">
                                <input type="email" class="form-control" name="email" value="${staff.email}" id="email" placeholder="Email" data-rule="email" data-msg="<spring:message code="fi.a6" text="Email"/>" />
                                <div class="validation"></div>
                            </div>
                        </div> 
                        <div class="form-row" style="color: red">
                            <div class="form-group col-md-6">
                                <input type="text" name="phone" value="${staff.phone}"class="form-control" id="name" placeholder="<spring:message code="fi.a7" text="Số điện thoại"/>" data-rule="minlen:10" data-msg="Vui lòng nhập số điện thoại" />
                                <div class="validation"></div>
                            </div>
                            <div class="form-group col-md-6">
                                <input type="text" class="form-control" name="salary" value="${staff.salary}" id="email" placeholder="<spring:message code="fi.a8" text="Lương"/>" data-rule="minlen:6" data-msg="Vui lòng nhập lương" />
                                <div class="validation"></div>
                            </div>
                        </div> 
                        <div class="form-row" style="color: red">
                            <div class="form-group col-md-6">
                                <input type="text" name="notes" value="${staff.notes}" class="form-control" id="name" placeholder="Ghi chú" data-msg="<spring:message code="fi.a9" text="Ghi chú"/>" />
                                <div class="validation"></div>
                            </div>
                            <div class="form-group col-md-6">
                                <spring:message code="fi.a10" text="Mã phòng ban"/>  

                                <select name="departId" style="height: 40px">
                                    <option  value="${staff.departId}" selected="" hidden="">${staff.departId}</option>
                                    <c:forEach var="b" items="${departsins}">
                                        <option  value="${b.id}" >${b.name}</option>        
                                    </c:forEach>
                                </select>                                    <div class="validation"></div>
                            </div>
                        </div> 
                        <div class="form-row" style="color: red">
                            <div class="form-group col-md-6">
                                <spring:message code="fi.a11" text="Cấp bậc"/>   
                                <select name="capdo" style="height: 40px;">
                                    <option  value="${staffins.capdo}" selected="selected" hidden>${staffins.capdo}</option>        
                                    <option  value="Nhân viên">Nhân viên</option>
                                    <option  value="Thư ký">Thư ký</option>
                                    <option  value="Quản lý">Quản lý</option>
                                    <option  value="Phó phòng">Phó phòng</option>
                                    <option  value="Trưởng phòng">Trưởng phòng</option>
                                    <option  value="Phó giám đốc">Phó giám đốc</option>
                                    <option  value="Giám đốc">Giám đốc</option>
                                    <option  value="Phó tổng giám đốc">Phó tổng giám đốc</option>
                                    <option  value="Tổng giám đốc">Tổng giám đốc</option>
                                    <option  value="Chủ tịch">Chủ tịch</option>
                                </select>
                                <div class="validation"></div>
                            </div>


                        </div>
                        <div class="form-row" style="color: red">

                            <div class="text-center" style="padding-left: 389px; padding-top: 24px; padding-bottom: 24px;"><button class="btn btn-outline-success my-2 my-sm-0" name="btnUpdate" type="submit"><spring:message code="btn.add" text="Thêm"/> </button> &nbsp;&nbsp;&nbsp;<button class="btn btn-outline-success my-2 my-sm-0" name="btnReset" type="submit"><spring:message code="btn.add6" text="hihi"/></button></div>
                        </div> 
                    </form:form>
                    <hr class="divider my-4">
                </div>

            </div>
        </div>
    </div>
</header>
<br>
<br>
<table class="bordered" id="dataTable" width="100%" cellspacing="0" style="margin-left: -1px">
    <thead>
        <tr style="text-align: center">
            <th><spring:message code="fi.a1" text="Mã số"/></th>
            <th><spring:message code="fi.a2" text="Họ tên"/></th>
            <th><spring:message code="fi.a3" text="Giới tính"/></th>
            <th><spring:message code="fi.a4" text="Ngày sinh"/></th>
            <th><spring:message code="fi.a5" text="Hình ảnh"/></th>
            <th><spring:message code="fi.a6" text="Email"/></th>
            <th><spring:message code="fi.a7" text="Số điện thoại"/></th>
            <th><spring:message code="fi.a8" text="Lương"/></th>
            <th><spring:message code="fi.a9" text="Ghi chú"/></th>
            <th><spring:message code="fi.a10" text="Mã phòng ban"/></th>
            <th><spring:message code="fi.a11" text="Cấp bậc"/></th>
            <th><spring:message code="fi.d3" text="Thao tác"/></th>
        </tr>
    </thead>
    <tfoot>
        <tr style="text-align: center">
            <th><spring:message code="fi.a1" text="Mã số"/></th>
            <th><spring:message code="fi.a2" text="Họ tên"/></th>
            <th><spring:message code="fi.a3" text="Giới tính"/></th>
            <th><spring:message code="fi.a4" text="Ngày sinh"/></th>
            <th><spring:message code="fi.a5" text="Hình ảnh"/></th>
            <th><spring:message code="fi.a6" text="Email"/></th>
            <th><spring:message code="fi.a7" text="Số điện thoại"/></th>
            <th><spring:message code="fi.a8" text="Lương"/></th>
            <th><spring:message code="fi.a9" text="Ghi chú"/></th>
            <th><spring:message code="fi.a10" text="Mã phòng ban"/></th>
            <th><spring:message code="fi.a11" text="Cấp bậc"/></th>
            <th><spring:message code="fi.d3" text="Thao tác"/></th>
        </tr>
    </tfoot>

    <tbody>
        <c:forEach var="b" items="${staffs}">
            <tr>
                <td>${b.id}</td>
                <td>${b.name}</td>
                <td>${b.gender}</td>
                <td>${b.birthday}</td>
                <td><img src="img/${b.photo}" style="height: 100px; width: 100px;border-radius: 50%; border: solid 2px black"/></td>  
                <td>${b.email}</td>
                <td>${b.phone}</td>
                <td>${b.salary}</td>
                <td>${b.notes}</td>
                <td>${b.departId}</td>
                <td>${b.capdo}</td>
                <td><a href="updatestaffs.htm?lnkEdit&id=${b.id}">Sửa</a> | <a href="updatestaffs.htm?lnkDelete&id=${b.id}">Xóa</a></td>
            </tr>
        </c:forEach>
    </tbody>  

</table>


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
<script language="javascript">
            function readURL(input) {

                if (input.files && input.files[0]) {
                    var reader = new FileReader();
                    reader.onload = function (e) {
                        $('#showAvatar').prop('hidden', false);
                        $('#showAvatar').attr('src', e.target.result);
                    };
                    reader.readAsDataURL(input.files[0]);
                }
            }
        </script>
</body>

</html>
