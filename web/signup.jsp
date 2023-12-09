<%-- 
    Document   : signup
    Created on : 30-Oct-2023, 14:16:54
    Author     : ADMIN
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
        <link rel="stylesheet" href="/style.css">
        <title>Register Form</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f4f4f4;
                margin: 0;
                padding: 0;
            }

            #logreg-forms {
                text-align: center;
                margin: 50px auto;
                max-width: 400px;
                background: #fff;
                padding: 20px;
                border-radius: 5px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            }

            .form-signup h2 {
                color: #333;
            }

            .social-login button {
                width:210px !important;
                margin: 0 auto;
                padding: 10px;
                margin: 5px 0;
                color: #fff;
                border: none;
                cursor: pointer;
            }

            .facebook-btn {
                background-color: #3C589C;
            }

            .google-btn {
                background-color: #DF4B3B;
            }

            .social-login p {
                font-weight: bold;
                margin: 10px 0;
            }

            .form-signup input {
                width: 100%;
                padding: 10px;
                margin: 5px 0;
                border: 1px solid #ccc;
                border-radius: 3px;
            }

            .signup{
                background-color: #218838;
                color: #fff;
                border: none;
                cursor: pointer;
            }

            .alert {
                background-color: #D7F6BD;
                color: green;
                margin-bottom: 3%;
                text-align: center;
                border-radius: 3px;
            }

            #cancel_signup {
                display: block;
                margin-top: 10px;
                color: #007bff;
                text-decoration: none;
            }

        </style>
    </head>

    <body style="background-color: #3B5D50">

        <div class="container">

            <!-- Outer Row -->
            <div class="row justify-content-center">

                <div class="col-xl-10 col-lg-12 col-md-9">

                    <div class="card o-hidden border-0 shadow-lg my-5">
                        <div class="card-body p-0">
                            <!-- Nested Row within Card Body -->
                            <div class="row">
                                <div class="col-lg-6">
                                    <img src="https://www.junie.vn/cdn/shop/products/Nhan-Leaf-thuong-hieu-junie-4.jpg?v=1671749593&width=700" alt="Image" class="img-fluid">
                                </div>
                                <div class="col-lg-6">
                                    <div id="logreg-forms">
                                        <form action="signup" method="post" class="form-signup">
                                            <h1 class="h3 mb-3 font-weight-normal" style="text-align: center"> Sign up</h1>
                                            <div class="social-login">
                                                <button class="btn facebook-btn social-btn" type="button"><span><i class="fab fa-facebook-f"></i> Sign up with Facebook</span> </button>
                                                <button class="btn google-btn social-btn" type="button"><span><i class="fab fa-google-plus-g"></i> Sign up with Google+</span> </button>
                                            </div>
                                            <p style="text-align:center">OR</p>
                                            <input name="user" type="text" id="user-name" class="form-control" placeholder="Username" required="" autofocus="">
                                            <input name="pass" type="password" id="user-pass" class="form-control" placeholder="Password" required autofocus="">
                                            <input name="repass" type="password" id="user-repeatpass" class="form-control" placeholder="Repeat Password" required autofocus="">
                                            <button class="btn btn-primary btn-block signup" type="submit"><i class="fas fa-user-plus"></i> Sign Up</button>

                                            <c:if test="${not empty fail}">
                                                <div class="alert alert-danger" role="alert">${fail}</div>
                                            </c:if>

                                            <c:if test="${not empty success}">
                                                <div class="alert alert-success" role="alert">${success}</div>
                                            </c:if>
                                            <a href="login.jsp" id="cancel_signup"><i class="fas fa-angle-left"></i> Back</a>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>

            </div>

        </div>
    </body>
</html>
