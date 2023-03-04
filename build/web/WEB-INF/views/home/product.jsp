<%-- 
    Document   : about
    Created on : 28-02-2023, 12:54:45
    Author     : visao
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<!-- product section -->
<section class="shop-section">
  <div class="container">
    <div class="detail-box">
      <h2>Shop</h2>
      <p>There are many variations of passages of Lorem Ipsum available</p>
    </div>
    <div class="row product-row">
      <div class="col-md-4">
        <div class="product-box">
          <img src="<c:url value="/images/g-07.jpg" />"> 
          <h5>Product 1</h5>
          <p class="price">$19.99</p>
          <a href="productInf.do" class="btn">Buy Now</a>
        </div>
      </div>
      <div class="col-md-4">
        <div class="product-box">
          <img src="<c:url value="/images/g-07.jpg" />"> 
          <h5>Product 2</h5>
          <p class="price">$24.99</p>
          <a href="#" class="btn">Buy Now</a>
        </div>
      </div>
      <div class="col-md-4">
        <div class="product-box">
          <img src="<c:url value="/images/g-07.jpg" />"> 
          <h5>Product 3</h5>
          <p class="price">$14.99</p>
          <a href="#" class="btn">Buy Now</a>
        </div>
      </div>
    </div>
    <div class="row product-row">
      <div class="col-md-4">
        <div class="product-box">
          <img src="<c:url value="/images/g-07.jpg" />"> 
          <h5>Product 4</h5>
          <p class="price">$29.99</p>
          <a href="#" class="btn">Buy Now</a>
        </div>
      </div>
      <div class="col-md-4">
        <div class="product-box">
          <img src="<c:url value="/images/g-07.jpg" />"> 
          <h5>Product 5</h5>
          <p class="price">$9.99</p>
          <a href="#" class="btn">Buy Now</a>
        </div>
      </div>
      <div class="col-md-4">
        <div class="product-box">
          <img src="<c:url value="/images/g-07.jpg" />"> 
          <h5>Product 6</h5>
          <p class="price">$39.99</p>
          <a href="#" class="btn">Buy Now</a>
        </div>
      </div>
    </div>
  </div>
</section>
