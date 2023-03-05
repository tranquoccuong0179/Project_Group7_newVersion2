<%-- 
    Document   : edit
    Created on : 05-03-2023, 10:57:13
    Author     : Cuong
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<form action="<c:url value="/user/edit_handler.do" />">
    <div class="container rounded bg-white mt-5 mb-5">
        <div class="row">
            <div class="col-md-3 border-right">
                <div class="d-flex flex-column align-items-center text-center p-3 py-5"><img class="rounded-circle mt-5" width="150px" src="https://st3.depositphotos.com/15648834/17930/v/600/depositphotos_179308454-stock-illustration-unknown-person-silhouette-glasses-profile.jpg"><span class="font-weight-bold"></span><span class="text-black-50">${user.fullName}</span><span> </span></div>
            </div>
            <div class="col-md-5 border-right">
                <div class="p-3 py-5">
                    <div class="d-flex justify-content-between align-items-center mb-3">
                        <h4 class="text-right">Profile Settings</h4>
                        <input type="hidden" name="id" value="${sessionScope.user.id}">
                        <input type="hidden" name="pass" value="${sessionScope.user.password}">
                    </div>
                    <div class="row mt-2">
                        <div class="col-md-12"><label class="labels">Full Name</label><input type="text" class="form-control" placeholder="" value="${sessionScope.user.fullName}" name="fullName"></div>
                    </div>
                    <div class="row mt-3">
                        <div class="col-md-12"><label class="labels">Mobile Number</label><input type="text" class="form-control" placeholder="enter phone number" value="${sessionScope.user.phone}" name="phone"></div>
                        <div class="col-md-12"><label class="labels">Address</label><input type="text" class="form-control" placeholder="enter address line 1" value="${sessionScope.user.address}" name="address"></div>
                        <div class="col-md-12"><label class="labels">Email ID</label><input type="text" class="form-control" placeholder="enter email id" value="${sessionScope.user.email}" name="email"></div>
                    </div>

                    <button type="subtmit" class="btn btn-outline-success" name="op" value="edit"><i class="bi bi-check-circle"></i>Edit</button>
                    <button type="subtmit" class="btn btn-outline-danger" name="op" value="cancel"><i class="bi bi-x-circle"></i>Cancel</button>


                </div>
            </div>
        </div>
    </div>
</form>
