<%-- 
    Document   : managerproduct
    Created on : 18-Oct-2023, 23:47:26
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
        <title>Product Management</title>
        <style>
            /* Reset some default browser styles */
            body, h1, h2, p {
                margin: 0;
                padding: 0;
            }

            /* Set a background color and text color for the page */
            body {
                background-color: #f7f7f7;
                color: #333;
                font-family: Arial, sans-serif;
            }

            /* Style the header section */
            h1 {
                background-color: #3B5D50;
                color: #fff;
                text-align: center;
                padding: 20px;
            }

            /* Style the navigation bar */
            .navbar {
                background-color: #333;
                color: #fff;
                padding: 15px 0;
            }

            .navbar-brand {
                font-size: 24px;
            }

            .navbar-nav {
                margin-right: 15px;
            }

            .nav-link {
                color: #fff;
                font-weight: 600;
            }

            /* Style the product management form */
            form {
                text-align: center;
                margin: 20px auto;
                max-width: 400px;
                background-color: #fff;
                padding: 20px;
                border: 1px solid #ddd;
                box-shadow: 0 0 5px #ddd;
            }

            input[type="text"], input[type="number"] {
                width: 95%;
                padding: 10px;
                margin: 10px 0;
                border: 1px solid #ddd;
                border-radius: 5px;
            }

            .add {
                background-color: #3B5D50;
                color: #fff;
                padding: 10px 20px;
                border: none;
                border-radius: 5px;
                cursor: pointer;
            }

            /* Style the product table */
            table {
                width: 100%;
                border-collapse: collapse;
                margin-top: 20px;
                background-color: #fff;
                border: 1px solid #ddd;
            }

            table, th, td {
                border: 1px solid #ddd;
            }

            th, td {
                padding: 10px;
                text-align: center;
            }

            /* Style the actions column in the product table */
            table td:last-child {
                text-align: center;
            }

            /* Style the sales chart */
            canvas#salesChart {
                max-width: 600px;
                margin: 20px auto;
                display: block;
                border: 1px solid #ddd;
                box-shadow: 0 0 5px #ddd;

            }

            .product-item {
                text-align: center;
            }

            .product-thumbnail {
                width: 100%;
                max-height: 100px;
                display: block;
                margin: 0 auto;
            }

            .mess{
                background-color: papayawhip;
                color: red;
                margin-bottom: 3%;
                text-align: center;
                border-radius: 3px;

            }
        </style>
    </head>
    <body>
        <h1>Update Profile</h1>
        <form action="updateProfile" method="post">
            <input type="text" name="id" value="${pro.customerID}" placeholder="CustomerID" readonly required>
            <input type="text" name="name" value="${pro.fullName}" placeholder="Your Name" required>
            <input type="text" name="email" value="${pro.email}" placeholder="Email" required>
            <input type="number" name="phoneNumber" value="${pro.phoneNumber}" placeholder="Phone Number" required>
            <input type="text" name="address" value="${pro.address}" placeholder="Address" required>
            <input class="add" type="submit" value="Update Profile">
            
        </form>

    </body>
</html>


