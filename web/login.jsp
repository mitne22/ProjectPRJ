<%-- 
    Document   : login
    Created on : 12-Oct-2023, 00:45:06
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
        <link rel="stylesheet" href="/style.css">
        <title>Login/Register Form</title>
        <style>

            #logreg-forms{
                width:412px;
                margin:10vh auto;
                background-color:#f3f3f3;
                box-shadow: 0 1px 3px rgba(0,0,0,0.12), 0 1px 2px rgba(0,0,0,0.24);
                transition: all 0.3s cubic-bezier(.25,.8,.25,1);
            }
            #logreg-forms form {
                width: 100%;
                max-width: 410px;
                padding: 15px;
                margin: auto;
            }
            #logreg-forms .form-control {
                position: relative;
                box-sizing: border-box;
                height: auto;
                padding: 10px;
                font-size: 16px;
            }
            #logreg-forms .form-control:focus {
                z-index: 2;
            }
            #logreg-forms .form-signin input[type="email"] {
                margin-bottom: -1px;
                border-bottom-right-radius: 0;
                border-bottom-left-radius: 0;
            }
            #logreg-forms .form-signin input[type="password"] {
                border-top-left-radius: 0;
                border-top-right-radius: 0;
            }

            #logreg-forms .social-login{
                width:390px;
                margin:0 auto;
                margin-bottom: 14px;
            }
            #logreg-forms .social-btn{
                font-weight: 100;
                color:white;
                width:190px;
                font-size: 0.9rem;
            }

            #logreg-forms a{
                display: block;
                padding-top:10px;
                color:lightseagreen;
            }

            #logreg-form .lines{
                width:200px;
                border:1px solid red;
            }


            #logreg-forms button[type="submit"]{
                margin-top:10px;
            }

            #logreg-forms .facebook-btn{
                background-color:#3C589C;
            }

            #logreg-forms .google-btn{
                background-color: #DF4B3B;
            }
            #logreg-forms .form-reset, #logreg-forms .form-signup{
                display: none;
            }

            #logreg-forms .form-signup .social-btn{
                width:210px;
            }

            #logreg-forms .form-signup input {
                margin-bottom: 2px;
            }

            .form-signup .social-login{
                width:210px !important;
                margin: 0 auto;
            }

            .mess{
                background-color: papayawhip;
                color: red;
                margin-bottom: 3%;
                text-align: center;
                border-radius: 3px;

            }

            /* Mobile */

            @media screen and (max-width:500px){
                #logreg-forms{
                    width:300px;
                }

                #logreg-forms  .social-login{
                    width:200px;
                    margin:0 auto;
                    margin-bottom: 10px;
                }
                #logreg-forms  .social-btn{
                    font-size: 1.3rem;
                    font-weight: 100;
                    color:white;
                    width:200px;
                    height: 56px;

                }
                #logreg-forms .social-btn:nth-child(1){
                    margin-bottom: 5px;
                }
                #logreg-forms .social-btn span{
                    display: none;
                }
                #logreg-forms  .facebook-btn:after{
                    content:'Facebook';
                }

                #logreg-forms  .google-btn:after{
                    content:'Google+';
                }

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
                                    <img src="https://www.junie.vn/cdn/shop/products/day-chuyen-amari-9.jpg?v=1663165946&width=700" alt="Image" class="img-fluid">
                                </div>
                                <div class="col-lg-6">
                                    <div id="logreg-forms">
                                        <form class="form-signin" action="login" method="post">
                                            <h1 class="h3 mb-3 font-weight-normal" style="text-align: center"> Sign in</h1>
                                            <div class="social-login">
                                                <button class="btn facebook-btn social-btn" type="button"><span><i class="fab fa-facebook-f"></i> Sign in with Facebook</span> </button>
                                                <button class="btn google-btn social-btn" type="button"><span><i class="fab fa-google-plus-g"></i> Sign in with Google+</span> </button>
                                            </div>
                                            <div class="mess">
                                                ${mess}
                                            </div>
                                            <input name="user" type="text" id="inputEmail" class="form-control" placeholder="Username" required="" autofocus="">
                                            <input name="pass" type="password" id="inputPassword" class="form-control" placeholder="Password" required="">
                                            <button class="btn btn-success btn-block" type="submit"><i class="fas fa-sign-in-alt"></i> Sign in</button>
                                            <a href="forgotPass.jsp" id="forgot_pswd">Forgot password?</a>
                                            <hr>
                                            <a href="signup.jsp" class="btn btn-primary btn-block text-white"><i class="fas fa-user-plus"></i> Sign up New Account</a>
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