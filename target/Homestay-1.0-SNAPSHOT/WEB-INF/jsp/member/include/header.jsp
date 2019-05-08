<%-- 
    Document   : header
    Created on : Apr 2, 2019, 12:30:05 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Quản lý HomeStay</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>   
  <style>
       .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
    
    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    .row.content {height: 540px}
    
    /* Set gray background color and 100% height */
    .sidenav {
      padding-top: 20px;
      background-color: #f1f1f1;
      height: 100%;
    }
    
    /* Set black background color, white text and some padding */
    footer {
      background-color: #555;
      color: white;
      padding: 15px;
    }
    
    /* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 767px) {
      .sidenav {
        height: auto;
        padding: 10px;
      }
      .row.content {height:auto;} 
    }
     .example{
                margin-left: 20px;
            }
            .maincontent{
                margin-top: 20px;
            }       
  </style>
</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
      <div class="navbar-header">
          <a class="navbar-brand" href="#">Quản lý phòng HomeStay</a>
      </div>
    <c:url value="/login" var="login" />
    <c:url value="/registerPage" var="registerPage" />  
    <ul class="nav navbar-nav navbar-right">
        <li><a href="${login}"><span class="glyphicon glyphicon-log-in"></span> Đăng nhập</a></li>
        <li><a href="${registerPage}"><span class="glyphicon glyphicon-user"></span> Đăng ký</a></li>
        <li><a href="#"><span class="glyphicon glyphicon-log-out"></span> Đăng xuất</a></li>
    </ul>
  </div>
</nav>
<%@include file="sidebarleft.jsp" %> 