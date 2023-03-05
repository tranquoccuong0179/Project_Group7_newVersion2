<%-- 
    Document   : index
    Created on : 28-02-2023, 13:36:01
    Author     : visao
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<h2>Profile</h2>
<div class="container rounded bg-white mt-5 mb-5">
    <div class="row">
        <div class="col-md-3 border-right">
            <div class="d-flex flex-column align-items-center text-center p-3 py-5"><img class="rounded-circle mt-5" width="150px" src="https://st3.depositphotos.com/15648834/17930/v/600/depositphotos_179308454-stock-illustration-unknown-person-silhouette-glasses-profile.jpg"><span class="font-weight-bold"></span><span class="text-black-50">${user.fullName}</span><span> </span></div>
        </div>
        <div class="col-md-5 border-right">
            <div class="p-3 py-5">
                <div class="d-flex justify-content-between align-items-center mb-3">
                    <h4 class="text-right">Profile Settings</h4>
                </div>
                <div class="row mt-2">
                    <div class="col-md-12"><label class="labels">Full Name</label><input type="text" class="form-control" placeholder="" value="${sessionScope.user.fullName}" readonly=""></div>
                </div>
                <div class="row mt-3">
                    <div class="col-md-12"><label class="labels">Mobile Number</label><input type="text" class="form-control" placeholder="enter phone number" value="${sessionScope.user.phone}"readonly=""></div>
                    <div class="col-md-12"><label class="labels">Address</label><input type="text" class="form-control" placeholder="enter address line 1" value="${sessionScope.user.address}"readonly=""></div>
                    <div class="col-md-12"><label class="labels">Email ID</label><input type="text" class="form-control" placeholder="enter email id" value="${sessionScope.user.email}"readonly=""></div>
                </div>


                <div class="mt-5 text-center"><button class="btn btn-primary profile-button" ><a style="text-decoration: none;" href="<c:url value="/user/edit.do" />">Edit Profile</a></button></div>
                <div class="mt-5 text-center"><button class="btn btn-primary profile-button" ><a style="text-decoration: none;" href="<c:url value="/user/change.do" />">Change Password</a></button></div>


            </div>
        </div>
    </div>
</div>

