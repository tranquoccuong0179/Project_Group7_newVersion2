<%-- 
    Document   : register
    Created on : 28-02-2023, 11:21:44
    Author     : visao
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
     <link href="<c:url value="/css/styleRegister.css" />" rel="stylesheet" type="text/css"/>
<!DOCTYPE html>
        <link href="<c:url value="/css/styleRegister.css" />" rel="stylesheet" type="text/css"/>
<div class="container">
  <div class="form-container">
    <form class="register-form" action="<c:url value="/user/register_handler.do"/>">
      <input name="fullname" type="text" placeholder="Full Name" class="form-input"/>
      <input name="phone" type="tel" placeholder="Phone Number" class="form-input"/>
      <input name="email" type="email" placeholder="Email Address" class="form-input"/>
      <input name="address" type="text" placeholder="Address" class="form-input"/>
      <input name="password" type="password" placeholder="Password" class="form-input"/>
      <input name="confirmPassword" type="password" placeholder="Confirm Password" class="form-input"/>
      <button class="form-button" type="submit" name="op" value="register">Register</button>
      <p class="message">Already registered? <a href="login.do" class="form-link">Login</a></p>
    </form>
  </div>
</div>