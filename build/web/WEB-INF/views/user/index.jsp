<%-- 
    Document   : index
    Created on : 28-02-2023, 13:36:01
    Author     : visao
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<h2>index user</h2>
<form>
    <label for="firstname">first name:</label>
    <input type="text" name="firstname" id="firstname">
    <label for="lastname">last name:</label>
    <input type="text" placeholder="name?" name="lastname" id="lastname">
    <label for="firstname">Phone:</label>
    <input type="text" name="phone" id="phone">
    <label for="email">Email</label>
    <input type="email" name="email" id="email" placeholder="Enter email">
    <label for="lastname">address</label>
    <input type="text" placeholder="address?" name="address" id="address">
    <label for="psw">passwork</label>
    <input type="password" name="psw" id="psw">
        <label for="psw">passwork</label>
    <input type="password" name="psw" id="psw">

    <label for="ngaysinh">birthday</label>
    <input type="date" name="ngaysinh" id="ngaysinh" value="2000-11-20">

    <input type="submit" value="update">

</form>
