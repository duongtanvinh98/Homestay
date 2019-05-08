<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="mvc" uri="http://www.springframework.org/tags/form"%>
<%@include file="include/header.jsp" %>
<div style="margin-left: 80px">
<h2>Cập nhật thông tin tài khoản</h2>
<h4 style="color: blue">${message}</h4>
<h4 style="color: red">${error}</h4>
</div>
<hr>
<c:url value="/editHomestayOwners" var="editHomestayOwners" />
<mvc:form modelAttribute="homestayOwners" class="form-horizontal" action="${editHomestayOwners}">
    <mvc:hidden path="id" />
    <div class="form-group">
        <label class="control-label col-sm-2" >Họ tên:</label>
            <div class="col-sm-3">
                <mvc:input path="hoTen" required="true" placeholder="Họ và tên" class="form-control" />
            </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2" >Số điện thoại:</label>
            <div class="col-sm-3">
                <mvc:input path="sdt" required="true" placeholder="Số điện thoại" class="form-control" />
            </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2" >CMND:</label>
            <div class="col-sm-3">
                <mvc:input path="cmnd" required="true" placeholder="CMND" class="form-control" />
            </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2" >Email:</label>
            <div class="col-sm-3">
                <mvc:input path="email" required="true" placeholder="Email" class="form-control" />
            </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2" >Địa chỉ:</label>
            <div class="col-sm-3">
                <mvc:input path="diaChi" required="true" placeholder="Địa chỉ" class="form-control" />
            </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2" >Tên HomeStay:</label>
            <div class="col-sm-3">
                <mvc:input path="tenHomestay" required="true" placeholder="Tên HomeStay" class="form-control" />
            </div>
    </div>        
    <div class="form-group"> 
        <div class="col-sm-offset-2 col-sm-3">
            <button type="submit" class="btn btn-primary">Cập nhật</button>
        </div>
    </div>
</mvc:form>
<%@include file="include/footer.jsp" %>