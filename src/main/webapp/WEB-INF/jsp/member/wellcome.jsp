<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="mvc" uri="http://www.springframework.org/tags/form"%>
<%@include file="include/header.jsp" %>
    <h2>Welcome ${user.homestayOwners.hoTen} the Homestay admin page</h2>
    <h3>Please login to use the system</h3>
    <a href="login">Login</a>
<%@include file="include/footer.jsp" %>