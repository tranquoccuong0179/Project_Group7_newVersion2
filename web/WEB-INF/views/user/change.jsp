<%-- 
    Document   : change
    Created on : 05-03-2023, 12:50:05
    Author     : Cuong
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<h2>Change</h2>
<form action="<c:url value="/user/change_handler.do" />">
    <div class="container rounded bg-white mt-5 mb-5">
        <div class="row">
            <div class="col-md-3 border-right">
                <div class="d-flex flex-column align-items-center text-center p-3 py-5"><img class="rounded-circle mt-5" width="150px" src="https://st3.depositphotos.com/15648834/17930/v/600/depositphotos_179308454-stock-illustration-unknown-person-silhouette-glasses-profile.jpg"><span class="font-weight-bold"></span><span class="text-black-50">${user.fullName}</span><span> </span></div>
            </div>
            <div class="col-md-5 border-right">
                <div class="p-3 py-5">
                    <div class="d-flex justify-content-between align-items-center mb-3">
                        <h4 class="text-right">Change Password</h4>
                        <input type="hidden" name="id" value="${sessionScope.user.id}">
                        <input type="hidden" name="pass" value="${sessionScope.user.password}">
                    </div>
                    <div class="row mt-3">
                        <div class="col-md-12"><label class="labels">Enter Old Password</label><input type="password" class="form-control" name="oldPass"></div>
                        <div class="col-md-12"><label class="labels">Enter New Password</label><input type="password" class="form-control" name="newPass"></div>
                        <div class="col-md-12"><label class="labels">Confirm New Password</label><input type="password" class="form-control" name="confirmNewPass"></div>
                    </div>

                    <button type="subtmit" class="btn btn-outline-success" name="op" value="change"><i class="bi bi-check-circle"></i>Change Password</button>
                    <button type="subtmit" class="btn btn-outline-danger" name="op" value="cancel"><i class="bi bi-x-circle"></i>Cancel</button>


                </div>
            </div>
        </div>
    </div>
    <i style="color:red;">${message}</i>
</form>
