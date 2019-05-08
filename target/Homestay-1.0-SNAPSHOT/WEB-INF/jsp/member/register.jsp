<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="mvc" uri="http://www.springframework.org/tags/form"%>
<%@include file="include/header.jsp" %>
<div style="margin-left: 80px">
<h2>Đăng ký tài khoản</h2>
    <p>Vui lòng điền vào mẫu này để tạo một tài khoản.</p>
</div>
<h4 style="color: blue">${message}</h4>
<h4 style="color: red">${error}</h4>
<hr>
<c:url value="/memberRegister" var="register" />
<mvc:form modelAttribute="user" class="form-horizontal" action="${register}">
    <div class="form-group">
        <label class="control-label col-sm-2" >Tên đăng nhập:</label>
            <div class="col-sm-3">
                <mvc:input path="userName" required="true" placeholder="Tên đăng nhập" class="form-control" />
            </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2" >Họ tên:</label>
            <div class="col-sm-3">
                <mvc:input path="homestayOwners.hoTen" required="true" placeholder="Họ và tên" class="form-control" />
            </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2" >Số điện thoại:</label>
            <div class="col-sm-3">
                <mvc:input path="homestayOwners.sdt" required="true" placeholder="Số điện thoại" class="form-control" />
            </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2" >CMND:</label>
            <div class="col-sm-3">
                <mvc:input path="homestayOwners.cmnd" required="true" placeholder="CMND" class="form-control" />
            </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2" >Email:</label>
            <div class="col-sm-3">
                <mvc:input path="homestayOwners.email" required="true" placeholder="Email" class="form-control" />
            </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2" >Địa chỉ:</label>
            <div class="col-sm-3">
                <mvc:input path="homestayOwners.diaChi" required="true" placeholder="Địa chỉ" class="form-control" />
            </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2" >Tên HomeStay:</label>
            <div class="col-sm-3">
                <mvc:input path="homestayOwners.tenHomestay" required="true" placeholder="Tên HomeStay" class="form-control" />
            </div>
    </div>        
    <div class="form-group">
        <label class="control-label col-sm-2" >Mật khẩu:</label>
            <div class="col-sm-3">
                <mvc:password path="password" required="true" placeholder="Mật khẩu" class="form-control" />
            </div>
    </div>
    <div class="form-group">    
            <div class="col-sm-3">
                <mvc:hidden path="roleName" value="Member"/>
            </div>
    </div>
    <div class="form-group"> 
        <div class="col-sm-offset-2 col-sm-3">
            <button type="submit" class="btn btn-primary">Đăng ký</button>
        </div>
    </div>
</mvc:form>
<%@include file="include/footer.jsp" %>