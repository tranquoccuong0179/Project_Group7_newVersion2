<%-- 
    Document   : login
    Created on : 28-02-2023, 11:21:21
    Author     : visao
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<link href="<c:url value="/css/styleLogin.css" />" rel="stylesheet" type="text/css"/>
<link href="<c:url value="/css/styleLogin.css" />" rel="stylesheet" type="text/css"/>
<div class="container">
    <div class="form-container">
        <form class="login-form" action="<c:url value="/user/login_handler.do" />" method="get">
            <div>
                <input name="email" type="text" placeholder="Email" class="form-input"/>
            </div>
            <div>
                <input name="password" type="password" placeholder="Password" class="form-input"/>
            </div>            
            <button type="submit" value="login" name="op" class="form-button">Login</button>
            <p class="message">Not registered? <a href="register.do" class="form-link">Create an account</a></p>
        </form>
        <i style="color:red;">${message}</i>
    </div>
</div>
