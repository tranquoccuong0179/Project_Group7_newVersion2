<%-- 
    Document   : indexProduct
    Created on : Mar 3, 2023, 2:23:09 PM
    Author     : visao
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<link href="<c:url value="/css/productInf.css" />" rel="stylesheet" type="text/css"/>
<!DOCTYPE html>

<div class="product-container">
  <div class="product-image-container">
      <img src="<c:url value="/images/g-07.jpg" />"> 
  </div>
  <div class="product-info-container">
    <div class="product-name-container">
      giày của lực
    </div>
    <div class="product-price-container">
      89.000$
    </div>
    <div class="product-buy-button-container">
      <button class="product-buy-button">Mua Ngay</button>
    </div>
  </div>
</div>

