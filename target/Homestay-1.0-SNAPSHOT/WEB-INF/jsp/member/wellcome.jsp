<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="mvc" uri="http://www.springframework.org/tags/form"%>
<%@include file="include/header.jsp" %>
    <h2>Chào mừng ${user.homestayOwners.hoTen} đến với trang quản lý HomeStay</h2>
    <h3>Please login to use the system</h3>
    <a href="login">Login</a>
<%@include file="include/footer.jsp" %>