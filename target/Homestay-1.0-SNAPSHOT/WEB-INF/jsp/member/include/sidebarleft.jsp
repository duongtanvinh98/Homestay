<%-- 
    Document   : sidebarleft
    Created on : Apr 2, 2019, 12:34:26 PM
    Author     : PC
--%>

<%@page import="entity.Users"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:url value="/updatePersonalInformation" var="updatePersonalInformation" />
<c:url value="/addPhongPage" var="addPhong" />
<c:url value="/listPhong" var="listPhong" />
<% Users user=(Users) session.getAttribute("user"); %>
<div class="container-fluid text-center">    
  <div class="row content">
    <div class="col-sm-2 sidenav">
       <div class="example">
            <div class="container">
                <div class="row">
                    <div class="col-md-2">
                        <ul class="nav navbar-nav">
                            <li class="active"><a href="#"><span class="glyphicon glyphicon-cog"></span> Dashboard</a></li>
                            <li><a href="#"><span class="glyphicon glyphicon-home"></span> Trang chủ</a></li>
                            <li><a href="${updatePersonalInformation}/${user.id}"><span class="glyphicon glyphicon-tasks"></span> Cập nhật thông tin</a></li>
                            <li><a href="${listPhong}/${user.id}"><span class="glyphicon glyphicon-list"></span> Danh sách phòng</a></li>
                            <li><a href="${addPhong}/${user.id}"><span class="glyphicon glyphicon-file"></span> Đăng phòng</a></li> 
                            <li><a href="#"><span class="glyphicon glyphicon-th-list"></span> Phòng đặt</a></li>
                        </ul>
                    </div>    
                </div>
            </div>
        </div>
    </div>
    <div class="col-sm-10 text-left maincontent"> 
