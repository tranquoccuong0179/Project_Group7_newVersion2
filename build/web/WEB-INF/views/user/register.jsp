<%-- 
    Document   : register
    Created on : 28-02-2023, 11:21:44
    Author     : visao
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<h2>register</h2>

<form action="<c:url value="/user/register_handler.do"/>">
    <table>
        <tr>
        <label for="email">Email</label>
        <input type="email" name="email" id="email">
        </tr>
        </br>
        <tr>
        <label for="fullname">Full Name</label>
        <input type="text" name="fullname" id="firstname">
        </tr>
        </br>

        <tr>
        <label for="phone">Phone:</label>
        <input type="text" name="phone" id="phone">
        </tr>
        </br>

        <tr>
        <label for="address">Address</label>
        <input type="text" name="address" id="address">
        </tr>
        </br>

        <tr>
        <label for="psw">Password</label>
        <input type="password" name="password" id="psw">
        <label for="psw">Confirm Password</label>
        <input type="password" name="confirmPassword" id="psw">
        </tr>
        </br>


        <input type="submit" value="register" name="op"> 
        <input type="submit" value="cancel" name="op"> 
    </table>


</form>