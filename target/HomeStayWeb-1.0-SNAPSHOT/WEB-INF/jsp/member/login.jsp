<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="mvc" uri="http://www.springframework.org/tags/form"%>
<%@include file="include/header.jsp" %>
<c:url value="/memberLogin" var="login" />
<div style="margin-left: 80px">
<h2>Đăng nhập hệ thống</h2>
<br>
<h4 style="color: red;">${error}</h4>
</div>
<hr>
<mvc:form  class="form-horizontal" action="${login}" method="post">
    <div class="form-group">
        <label class="control-label col-sm-2" >Username:</label>
            <div class="col-sm-3">
                <input type="text" id="username" name="username" placeholder="Enter username" class="form-control" >
            </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2" >Password:</label>
            <div class="col-sm-3">
                <input type="password" id="password" name="password" placeholder="Enter password" class="form-control" />
            </div>
    </div>
    <div class="form-group"> 
        <div class="col-sm-offset-2 col-sm-3">
            <button type="submit" class="btn btn-default">Đăng nhập</button>
        </div>
    </div>
</mvc:form>
<%@include file="include/footer.jsp" %>