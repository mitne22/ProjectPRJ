<%-- 
    Document   : home
    Created on : 12-Oct-2023, 14:06:36
    Author     : ADMIN
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="author" content="Untree.co">
        <link rel="shortcut icon" href="favicon.png">

        <meta name="description" content="" />
        <meta name="keywords" content="bootstrap, bootstrap4" />

        <!-- Bootstrap CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
        <link href="css/tiny-slider.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">
        <title>Furni Shop </title>
    </head>
    <style>
        .product-item {
            text-align: center;
        }

        .product-thumbnail {
            width: 100%;
            max-height: 315px;
            display: block;
            margin: 0 auto;
        }
        .intro{
            margin-top: 50px;
        }
        .intro ul{
            margin-top: 50px;
        }
        .intro li{
            margin-top: 20px;
            font-style: italic;
        }
        .product-section{
            padding-bottom: 0px;
        }
        
    </style>
    <body>
        <!-- Start Header/Navigation -->
        <nav class="custom-navbar navbar navbar navbar-expand-md navbar-dark bg-dark" arial-label="Furni navigation bar">

            <div class="container">
                <a class="navbar-brand" href="home.jsp">Furni<span>.</span></a>

                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarsFurni" aria-controls="navbarsFurni" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarsFurni">
                    <ul class="custom-navbar-nav navbar-nav ms-auto mb-2 mb-md-0">
                        <li class="nav-item active">
                            <a class="nav-link" href="home.jsp">Home</a>
                        </li>
                        <li><a class="nav-link" href="shop">Shop</a></li>

                        <li><a class="nav-link" href="services.jsp">Services</a></li>
                        <li><a class="nav-link" href="contact.jsp">Contact us</a></li>
                    </ul>

                    <ul class="custom-navbar-cta navbar-nav mb-2 mb-md-0 ms-5">
                        <c:if test="${sessionScope.acc.isAdmin == 1}">
                            <li class="nav-item">
                                <a class="nav-link" href="manager">Manager Product</a>
                            </li>
                        </c:if>
                        <c:if test="${sessionScope.acc != null}">
                            <li><a class="nav-link" href="logout">Logout </a></li>
                            </c:if>
                            <c:if test="${sessionScope.acc == null}">
                            <li><a class="nav-link" href="login.jsp">Login </a></li>
                            </c:if>
                        <li><a class="nav-link" href="cart"><img src="images/cart.svg"></a></li>
                        <li><a class="nav-link" href="updateProfile?id=${sessionScope.acc.uID}"><img src="images/user.svg"></a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- End Header/Navigation -->

        <!-- Start Hero Section -->
        <div class="hero">
            <div class="container">
                <div class="row justify-content-between">
                    <div class="col-lg-5">
                        <div class="intro-excerpt">
                            <h1>Just Be Your Style<span clsas="d-block"></span></h1>
                            <p class="mb-4">Được xây dựng từ tình yêu và sự tử tế với trang sức, sản phẩm của Furni là sự kết tinh của hàng giờ tỉ mỉ chế tác thủ công của người thợ bạc Việt Nam. Furni mong rằng sẽ mang đến cho bạn những món quà ý nghĩa nhất không chỉ để làm đẹp cho bản thân mà còn làm đẹp cho tâm hồn.</p>
                            <p><a href="shop" class="btn btn-secondary me-2">Shop Now</a></p>
                        </div>
                    </div>
                    <div class="col-lg-7">
                        <div class="hero-img-wrap">
                            <img src="images/bia.jpg" class="img-fluid" width="600" height="800" style="margin-top: 40px;">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Hero Section -->
        
        <!-- Start Introduction Section -->
        <div class="container">
                <ul class="intro">
                    <li>Sản Phẩm:
                Với đội ngũ nghệ nhân và thiết kế tài năng, Furni mang đến cho bạn bộ sưu tập đa dạng từ những chiếc vòng cổ lộng lẫy, những chiếc nhẫn đẳng cấp đến những chiếc bảng điều khiển tinh tế. Tất cả đều được chế tác từ những nguyên liệu chất lượng nhất và thiết kế với sự tận tâm cao nhất.</li>
                    <li>Chất Lượng và Uy Tín:
                Chúng tôi cam kết về chất lượng và uy tín trong từng sản phẩm. Mỗi chiếc trang sức tại Furni là sự kết hợp hoàn hảo giữa nghệ thuật và chất lượng vật liệu, đảm bảo mang lại cho khách hàng không gian mua sắm an tâm và hài lòng.</li>
                    <li>Dịch Vụ Chăm sóc Khách Hàng:
                Chúng tôi luôn lắng nghe và đáp ứng mọi nhu cầu của khách hàng. Dịch vụ chăm sóc khách hàng của chúng tôi không chỉ là một dịch vụ, mà là sự chia sẻ đam mê và sự hiểu biết sâu rộng về trang sức.</li>
                    <li>Giao Hàng và Đổi Trả:
                Furni cam kết đưa sản phẩm đến tận tay bạn một cách an toàn và nhanh chóng. Chính sách đổi trả linh hoạt giúp bạn yên tâm khi chọn lựa trang sức phù hợp với phong cách của mình.</li>
                </ul>
                
                <h6> Hãy đến với Furni, nơi mà từng mảnh trang sức không chỉ là vật dụng trang trí, mà còn là biểu tượng của phong cách và cái đẹp đích thực.</h6>
        </div>
        <!-- End Introduction Section -->

        <!-- Start Product Section -->
        <div class="product-section">
            <div class="container">
                <div class="row">
                    <!-- Start Column 1 -->
                    <div class="col-md-12 col-lg-3 mb-5 mb-lg-0">
                        <h2 class="mb-4 section-title">New Products</h2>
                        <p class="mb-4">Luôn cập nhật những sản phẩm mới nhất đưa đến cho khách hàng một trải nghiệm tốt nhất.</p>
                        <p><a href="shop" class="btn">Explore</a></p>
                    </div> 
                    <!-- End Column 1 -->

                    <c:forEach items="${requestScope.top3}" var="p">
                        <div class="col-12 col-md-4 col-lg-3 mb-5">
                            <a class="product-item">
                                <img src="${p.image}" class="img-fluid product-thumbnail product-item" >
                                <h3 class="product-title">${p.pName}</h3>
                                <strong class="product-price">${p.price*1.5}$</strong>
                                <span class="icon-cross">
                                    <img src="images/cross.svg" class="img-fluid">
                                </span>
                            </a>
                        </div> 
                    </c:forEach>
                </div>

                <div class="row">
                    <!-- Start Column 1 -->
                    <div class="col-md-12 col-lg-3 mb-5 mb-lg-0">
                        <h2 class="mb-4 section-title">Other Product</h2>
                        <p class="mb-4"></p>
                        <p><a href="shop" class="btn">Explore</a></p>
                    </div> 
                    <!-- End Column 1 -->

                    <c:forEach items="${requestScope.next3}" var="p">
                        <div class="col-12 col-md-4 col-lg-3 mb-5">
                            <a class="product-item">
                                <img src="${p.image}" class="img-fluid product-thumbnail product-item" >
                                <h3 class="product-title">${p.pName}</h3>
                                <strong class="product-price">${p.price*1.5}$</strong>
                                <span class="icon-cross">
                                    <img src="images/cross.svg" class="img-fluid">
                                </span>
                            </a>
                        </div> 
                    </c:forEach>
                </div>
            </div>
        </div>

        <!-- End Product Section -->

        <!-- Start Footer Section -->
        <footer class="footer-section">
            <div class="container relative">

                <div class="row">
                    <div class="col-lg-8">
                        <div class="subscription-form">
                            <h3 class="d-flex align-items-center"><span class="me-1"><img src="images/envelope-outline.svg" alt="Image" class="img-fluid"></span><span>Subscribe to Newsletter</span></h3>

                            <form action="#" class="row g-3">
                                <div class="col-auto">
                                    <input type="text" class="form-control" placeholder="Enter your name">
                                </div>
                                <div class="col-auto">
                                    <input type="email" class="form-control" placeholder="Enter your email">
                                </div>
                                <div class="col-auto">
                                    <button class="btn btn-primary">
                                        <span class="fa fa-paper-plane"></span>
                                    </button>
                                </div>
                            </form>

                        </div>
                    </div>
                </div>

                <div class="row g-5 mb-5">
                    <div class="col-lg-4">
                        <div class="mb-4 footer-logo-wrap"><a href="#" class="footer-logo">Furni<span>.</span></a></div>
                        <p class="mb-4">Furni không chỉ đơn giản là một cửa hàng trang sức, mà là một trải nghiệm mua sắm đẳng cấp. Chúng tôi tự hào mang đến cho khách hàng không gian sang trọng và phòng trưng bày trang sức tinh tế, nơi mà từng sản phẩm đều là một tác phẩm nghệ thuật riêng biệt.</p>

                        <ul class="list-unstyled custom-social">
                            <li><a href="#"><span class="fa fa-brands fa-facebook-f"></span></a></li>
                            <li><a href="#"><span class="fa fa-brands fa-twitter"></span></a></li>
                            <li><a href="#"><span class="fa fa-brands fa-instagram"></span></a></li>
                            <li><a href="#"><span class="fa fa-brands fa-linkedin"></span></a></li>
                        </ul>
                    </div>

                    <div class="col-lg-8">
                        <div class="row links-wrap">
                            <div class="col-6 col-sm-6 col-md-3">
                                <ul class="list-unstyled">
                                    <li><a href="#">About us</a></li>
                                    <li><a href="#">Services</a></li>
                                    <li><a href="#">Blog</a></li>
                                    <li><a href="#">Contact us</a></li>
                                </ul>
                            </div>

                            <div class="col-6 col-sm-6 col-md-3">
                                <ul class="list-unstyled">
                                    <li><a href="#">Support</a></li>
                                    <li><a href="#">Knowledge base</a></li>
                                    <li><a href="#">Live chat</a></li>
                                </ul>
                            </div>

                            <div class="col-6 col-sm-6 col-md-3">
                                <ul class="list-unstyled">
                                    <li><a href="#">Jobs</a></li>
                                    <li><a href="#">Our team</a></li>
                                    <li><a href="#">Leadership</a></li>
                                    <li><a href="#">Privacy Policy</a></li>
                                </ul>
                            </div>

                            <div class="col-6 col-sm-6 col-md-3">
                                <ul class="list-unstyled">
                                    <li><a href="#">Nordic Chair</a></li>
                                    <li><a href="#">Kruzo Aero</a></li>
                                    <li><a href="#">Ergonomic Chair</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>

                </div>

                <div class="border-top copyright">
                    <div class="row pt-4">
                        <div class="col-lg-6">
                            <p class="mb-2 text-center text-lg-start">Copyright &copy;<script>document.write(new Date().getFullYear());</script>. All Rights Reserved. &mdash; Designed with love by <a href="https://untree.co">Untree.co</a> Distributed By <a hreff="https://themewagon.com">ThemeWagon</a>  <!-- License information: https://untree.co/license/ -->
                            </p>
                        </div>

                        <div class="col-lg-6 text-center text-lg-end">
                            <ul class="list-unstyled d-inline-flex ms-auto">
                                <li class="me-4"><a href="#">Terms &amp; Conditions</a></li>
                                <li><a href="#">Privacy Policy</a></li>
                            </ul>
                        </div>

                    </div>
                </div>

            </div>
        </footer>
        <!-- End Footer Section -->	


        <script src="js/bootstrap.bundle.min.js"></script>
        <script src="js/tiny-slider.js"></script>
        <script src="js/custom.js"></script>
    </body>
</html>
