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
                max-height: 600px;
                display: block;
                margin-top: 50px;
                margin-left: 100px;
                margin-bottom: 50px;
                margin-right: 50px;
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
            .fa-star{
                color: yellow;
            }
            .product-content{
                margin-left: 200px;
                margin-top: 100px;
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
                            <h1>Detail</h1>
                            <p>Cung cấp đầy đủ thông tin sản phẩm gửi tới bạn</p>
                        </div>
                    </div>

                    <div class="col-lg-7">

                    </div>
                </div>
            </div>
        </div>
        <!-- End Hero Section -->

        <section class="product-page">
            <div class="container">
                <div class="product-control">
                    <a href="#"></a>
                    <a href="#"></a>
                </div>
                <div class="row">
                    <div class="col-lg-4">
                        <div class="product-slider owl-carousel">
                            <div class="product-img">
                                <figure>
                                    <img src="${product.image}" alt="" class="img-fluid product-thumbnail product-item">
                                </figure>
                            </div>
                        </div>

                    </div>
                    <div class="col-lg-6">

                        <div class="product-content">

                            <h2>${product.title}</h2>
                            <div class="pc-meta">
                                <h5>$${product.price * 1.5}</h5>
                                <div class="rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                            </div>
                            <p>${product.description}</p>

                            <ul class="tags">
                                <c:forEach items="${cate}" var="c">
                                    <c:if test="${c.cID eq product.cID}">
                                        <li><span>Category :</span>${c.getcName()}</li>
                                        </c:if>
                                    </c:forEach>

                            </ul>
                            
                            <form method="post" action="addtocart">
                                <input type="hidden" name="pID" value="${product.pID}">
                                <button type="submit" class="btn btn-primary"><img src="images/cart.svg"></button>
                            </form>

                        </div>


                    </div>
                </div>
            </div>
        </section>