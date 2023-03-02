<%-- 
    Document   : main
    Created on : 28-02-2023, 11:08:01
    Author     : visao
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Main layout</title>
        <link href="/css/style.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    </head>
    <body>
        <!-- header section strats -->
        <div class="header">


            <a href="<c:url value="/home/index.do"/>">Home</a> | 
            <a href="<c:url value="/home/aboutus.do"/>">About Us</a> |
            <a href="<c:url value="/home/product.do"/>">Product</a> |
            <a href="<c:url value="/user/login.do"/>">User-Login</a> | 
            <a href="<c:url value="/user/register.do"/>">User-Register</a> |
            <a href="<c:url value="/user/index.do"/>">seting</a> | 
            <a href="<c:url value="/user/cart.do"/>">cart</a> | 


        </div>
        <!-- end header section -->
        <jsp:include page="/WEB-INF/views/${controller}/${action}.jsp" />
        <!-- footer section -->
        <div class="footer">
            <p>
                ------------------------------------------------------------------------------------------------------
            </p>
        </div>
        <!-- footer section -->



    </body>
</html>
