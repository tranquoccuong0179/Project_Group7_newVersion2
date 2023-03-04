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
        <link href="<c:url value="/css/menu.css" />" rel="stylesheet" type="text/css"/>
        <link href="<c:url value="/css/style.css" />" rel="stylesheet" type="text/css"/>
<!--        <link href="<c:url value="/css/styleLogin.css" />" rel="stylesheet" type="text/css"/>-->
<!--        <link href="<c:url value="/css/styleRegister.css" />" rel="stylesheet" type="text/css"/>-->
        <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.15.3/css/all.css" integrity="..."></link> 
        <link href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.1.3/assets/owl.carousel.min.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css?family=Baloo+Chettan|Dosis:400,600,700|Poppins:400,600,700&display=swap" >

    </head>
    <body>
        <!-- header section strats -->
        <div class="header">
            <div class="header-left">
                <a href="<c:url value='/home/index.do'/>">Home</a> 
                <a href="<c:url value='/home/aboutus.do'/>">About Us</a> 
                <a href="<c:url value='/home/product.do'/>">Product</a> 

            </div>
            <div class="header-right">
                <div class="search-box">
                    <button><i class="fa fa-search"></i></button>
                </div>
                <span style="float:right">
                        <c:if test="${sessionScope.user == null}">
                            <!--Nếu chưa login-->
                            <a href="<c:url value='/user/login.do'/>"><i class="fa fa-user"></i> Login</a> 
                            <a href="<c:url value="/user/register.do"/>">  User-Register</a> 
                        </c:if>
                            <c:if test="${sessionScope.user != null}">
                                <!--Nếu đã login-->
                                Welcome ${sessionScope.user.fullName} |
                                <a href="<c:url value="/user/logout.do" />">Log out</a>
                            </c:if>
                    </span>
                
                <a href="<c:url value='/user/cart.do'/>"><i class="fa fa-shopping-cart"></i></a>
            </div>
        </div>






        <!-- end header section -->
        <jsp:include page="/WEB-INF/views/${controller}/${action}.jsp" />
        <!-- footer section -->
<footer>
  <div class="container">
    <div class="row">
      <div class="col-md-3 col-sm-6">
        <h3>About Us</h3>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla interdum lacus vel tincidunt facilisis. Donec non eros ut nisi pretium feugiat at ut magna. </p>
      </div>
      <div class="col-md-3 col-sm-6">
        <h3>Quick Links</h3>
        <ul class="list-unstyled">
          <li><a href="#">Home</a></li>
          <li><a href="#">Products</a></li>
          <li><a href="#">Services</a></li>
          <li><a href="#">Blog</a></li>
          <li><a href="#">Contact Us</a></li>
        </ul>
      </div>
      <div class="col-md-3 col-sm-6">
        <h3>Contact Us</h3>
        <ul class="list-unstyled">
          <li><i class="fa fa-home"></i> đường số 23 hiệp bình chánh</li>
          <li><i class="fa fa-phone"></i><a href="tel:1234567890">123-456-7890</a></li>
          <li><i class="fa fa-envelope"></i><a href="mailto:info@example.com">lucdq410@gmail.com</a></li>
        </ul>
      </div>
      <div class="col-md-3 col-sm-6">
        <h3>Follow Us</h3>
        <ul class="list-unstyled list-inline">
          <li><a href="#"><i class="fa fa-facebook"></i></a></li>
          <li><a href="#"><i class="fa fa-twitter"></i></a></li>
          <li><a href="#"><i class="fa fa-instagram"></i></a></li>
          <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
          <li><a href="#"><i class="fa fa-youtube"></i></a></li>
        </ul>
      </div>
    </div>
    <hr>
    <div class="row">
      <div class="col-md-12">
        <p class="text-center">Copyright &copy; 
        <script>document.write(new Date().getFullYear())</script> All rights reserved | This website is made with <i class="fa fa-heart"></i> by <a href="#">Quang Luc</a></p>
      </div>
    </div>
  </div>
</footer>


        <!-- footer section -->



    </body>
</html>
