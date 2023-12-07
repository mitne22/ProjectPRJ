<%-- 
    Document   : shop
    Created on : 15-Oct-2023, 00:04:21
    Author     : ADMIN
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <title>Furni Shop</title>
        <style>
            .product-item {
                text-align: center;
            }

            .product-thumbnail {
                width: 100%;
                max-height: 306px;
                display: block;
                margin: 0 auto;
            }
            .bg-custom{
                background-color: #3B5D50;
            }
            .card-header {
                max-width: 200px;
            }
            .list-group {
                width: 200px;
            }
            /* CSS để tùy chỉnh giao diện thanh tìm kiếm */
            .search-bar-container {
                background-color: #f8f9fa;
                padding: 20px 0;
            }

            .search-bar {
                display: flex;
                justify-content: center;
                align-items: center;
            }

            #search-input {
                border: 2px solid #ccc;
                border-radius: 5px;
                padding: 10px;
                width: 250px;
                font-size: 16px;
            }

            #search-button {
                background-color: #3B5D50;
                color: #fff;
                border: none;
                border-radius: 5px;
                padding: 10px 15px;
                cursor: pointer;
                font-size: 16px;
            }

            #search-button:hover {
                background-color: #0056b3;
            }

            .sort{
                margin-left: 120px;
            }

            .pagination {
                display: flex;
                justify-content: center;
                list-style: none;
            }

            .page-item {
                margin: 0 5px;
            }

            .page-link {
                padding: 5px 10px;
                border: 1px solid #ccc;
                border-radius: 5px;
                text-decoration: none;
                color: #333;
                background-color: #fff;
                transition: background-color 0.3s;
            }

            .page-link:hover {
                background-color: #3B5D50;
                color: #fff;
            }

            .page-item.active .page-link {
                background-color: #3B5D50; /* Màu nền xanh cho số trang hiện tại */
                color: #fff;
            }

        </style>

    </head>
    <body>

        <!-- Start Header/Navigation -->
        <nav class="custom-navbar navbar navbar navbar-expand-md navbar-dark bg-dark" arial-label="Furni navigation bar">

            <div class="container">
                <a class="navbar-brand" href="home">Furni<span>.</span></a>

                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarsFurni" aria-controls="navbarsFurni" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarsFurni">
                    <ul class="custom-navbar-nav navbar-nav ms-auto mb-2 mb-md-0">
                        <li class="nav-item ">
                            <a class="nav-link" href="home">Home</a>
                        </li>
                        <li class="active"><a class="nav-link" href="shop">Shop</a></li>
                      
                        <li><a class="nav-link" href="services.jsp">Services</a></li>
                        <li><a class="nav-link" href="blog.jsp">Blog</a></li>
                        <li><a class="nav-link" href="contact.jsp">Contact us</a></li>
                    </ul>

                    <ul class="custom-navbar-cta navbar-nav mb-2 mb-md-0 ms-5">
                        <c:if test="${sessionScope.acc != null}">
                            <li><a class="nav-link" href="logout">Logout </a></li>
                            </c:if>
                            <c:if test="${sessionScope.acc == null}">
                            <li><a class="nav-link" href="login.jsp">Login </a></li>
                            </c:if>
                        <li><a class="nav-link" href="cart"><img src="images/cart.svg"></a></li>
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
                            <h1>Shop</h1>

                        </div>
                    </div>

                    <div class="col-lg-7">
                        <p>Với sự kết hợp tài năng và đam mê trong nghệ thuật trang sức, chúng tôi tự hào mang đến 
                            cho bạn những tác phẩm độc đáo và tinh xảo, phản ánh sự tinh tế và cá tính của bạn.</p>
                        <p>Hãy đến và tham quan cửa hàng của chúng tôi để cảm nhận sự hoàn hảo và sự tinh tế trong từng chi tiết của trang sức. Chúng tôi sẽ rất hân hạnh được phục vụ bạn và chia sẻ với bạn niềm đam mê trong nghệ thuật trang sức.</p>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Hero Section -->

        <!-- Start Search Bar -->
        <form action="search" method="post">
            <div class="search-bar-container">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12 text-center">
                            <div class="search-bar">
                                <input value="${searchh}" type="text" id="search-input" class="form-control" placeholder="Search..." name="searchName">
                                <button id="search-button" class="btn btn-primary">Search</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>

        <!-- End Search Bar -->
        <div class="sort">
            <div class="card-header bg-custom text-white text-uppercase" id="sortByHeader">
                <i class="fa fa-sort-amount-down-alt"></i> Sort By
            </div>
            <ul class="list-group category_block sub-menu" id="sortByList" style="display: none;">
                <li class="list-group-item text-black"><a href="sortHtoL">Price - High to Low</a></li>
                <li class="list-group-item text-black"><a href="sortLtoH">Price - Low to High</a></li>
            </ul>
        </div>

        <div class="untree_co-section product-section before-footer-section">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3">
                        <div class="intro-excerpt">         
                            <div class="card-header bg-custom text-white text-uppercase" id="categoryHeader">
                                <i class="fa fa-list"></i> CATEGORIES
                            </div>
                            <ul class="list-group category_block sub-menu" id="categoryList" style="display: none;">
                                <c:forEach items="${categories}" var="c">
                                    <li class="list-group-item text-black"}><a href="category?cID=${c.cID}">${c.cName}</a></li>
                                    </c:forEach>
                            </ul>
                        </div>
                    </div>

                    <c:forEach items="${requestScope.products}" var="p">
                        <div class="col-12 col-md-4 col-lg-3 mb-5" id="successMessage" class="success-message">
                            <a class="product-item"  href="detail?pID=${p.pID}">
                                <img src="${p.image}" class="img-fluid product-thumbnail product-item">
                                <h3 class="product-title">${p.pName}</h3>
                                <strong class="product-price">${p.price * 1.5}$</strong>
                                <p>Quantity: ${p.quantity}</p>
                                
                                <form method="post" action="addtocart">
                                    <input type="hidden" name="pID" value="${p.pID}">
                                    <button type="submit" class="btn btn-primary"><img src="images/cart.svg"></button>
                                </form>
                                <span class="icon-cross">
                                    <img src="images/cross.svg" class="img-fluid">
                                </span>
                            </a>
                        </div>
                    </c:forEach>


                </div>

                <!-- paging -->
                <div class="text-center">
                    <c:set var="currentPage" value="${requestScope.page}"/>
                    <ul class="pagination">
                        <c:forEach begin="1" end="${num}" var="i">
                            <li class="page-item ${i == currentPage ? 'active' : ''}">
                                <a class="page-link" href="shop?page=${i}">${i}</a>
                            </li>
                        </c:forEach>
                    </ul>
                </div>
            </div>

        </div>
    </div>


    <!-- Start Footer Section -->
    <footer class="footer-section">
        <div class="container relative">

            <div class="sofa-img">
                <img src="images/anhshop.jpg" alt="Image" class="img-fluid">
            </div>

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
                    <p class="mb-4">Donec facilisis quam ut purus rutrum lobortis. Donec vitae odio quis nisl dapibus malesuada. Nullam ac aliquet velit. Aliquam vulputate velit imperdiet dolor tempor tristique. Pellentesque habitant</p>

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
                        <p class="mb-2 text-center text-lg-start">Copyright &copy;<script>document.write(new Date().getFullYear());</script>. All Rights Reserved. &mdash; Designed with love by <a href="https://untree.co">Untree.co</a>  Distributed By <a href="https://themewagon.com">ThemeWagon</a> <!-- License information: https://untree.co/license/ -->
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

    <script>
        var categoryHeader = document.getElementById("categoryHeader");
        var categoryList = document.getElementById("categoryList");
        categoryHeader.addEventListener("click", function () {
            if (categoryList.style.display === "block") {
                categoryList.style.display = "none";
            } else {
                categoryList.style.display = "block";
            }
        });
    </script>
    <script>
        var sortByHeader = document.getElementById("sortByHeader");
        var sortByList = document.getElementById("sortByList");
        sortByHeader.addEventListener("click", function () {
            if (sortByList.style.display === "none" || sortByList.style.display === "") {
                sortByList.style.display = "block";
            } else {
                sortByList.style.display = "none";
            }
        });
    </script>

    <script src="js/bootstrap.bundle.min.js"></script>
    <script src="js/tiny-slider.js"></script>
    <script src="js/custom.js"></script>
</body>
</html>
