<%-- 
    Document   : signup
    Created on : 30-Oct-2023, 14:16:54
    Author     : ADMIN
--%>

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
            /* Thiết lập font và màu chung cho trang */
            body {
                font-family: Arial, sans-serif;
                background-color: #f4f4f4;
                margin: 0;
                padding: 0;
            }

            /* Định dạng phần container chính */
            #logreg-forms {
                text-align: center;
                margin: 50px auto;
                max-width: 400px;
                background: #fff;
                padding: 20px;
                border-radius: 5px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            }

            /* Định dạng tiêu đề Sign up */
            .form-signup h2 {
                color: #333;
            }

            /* Định dạng nút xã hội (Facebook và Google) */
            .social-login button {
                width:210px !important;
                margin: 0 auto;
                padding: 10px;
                margin: 5px 0;
                color: #fff;
                border: none;
                cursor: pointer;
            }

            /* Định dạng nút Facebook (màu xanh đậm) */
            .facebook-btn {
                background-color: #3C589C;
            }

            /* Định dạng nút Google (màu đỏ) */
            .google-btn {
                background-color: #DF4B3B;
            }

            /* Định dạng ký tự OR */
            .social-login p {
                font-weight: bold;
                margin: 10px 0;
            }

            /* Định dạng trường nhập và nút Sign Up */
            .form-signup input {
                width: 100%;
                padding: 10px;
                margin: 5px 0;
                border: 1px solid #ccc;
                border-radius: 3px;
            }

            /* Định dạng nút Sign Up */
            .signup{
                background-color: #218838;
                color: #fff;
                border: none;
                cursor: pointer;
            }

            /* Định dạng thông báo lỗi (được hiển thị bằng ${fail}) */
            .mess {
                background-color: papayawhip;
                color: red;
                margin-bottom: 3%;
                text-align: center;
                border-radius: 3px;
            }

            /* Định dạng nút Back */
            #cancel_signup {
                display: block;
                margin-top: 10px;
                color: #007bff;
                text-decoration: none;
            }

        </style>
    </head>
    <body>
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
                <div class="mess">${fail}</div>
                <div class="mess">${success}</div>
                <a href="login.jsp" id="cancel_signup"><i class="fas fa-angle-left"></i> Back</a>
            </form>
        </div>
    </body>
</html>
