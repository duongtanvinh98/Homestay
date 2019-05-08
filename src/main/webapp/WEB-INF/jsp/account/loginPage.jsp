<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="mvc" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Sign in</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
<style type="text/css">
    body{
        background-image: url("images/backgroud.jpg");
    }
	.login-form {
		width: 340px;
		margin: 30px auto;
	}
    .login-form form {        
    	margin-bottom: 15px;
        background: #f7f7f7;
        box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
        padding: 30px;
    }
    .login-form h2 {
        margin: 0 0 20px;
    }
    .form-control, .btn {
        min-height: 38px;
        border-radius: 2px;
    }
	.input-group-addon .fa {
        font-size: 18px;
    }
    .btn {        
        font-size: 15px;
        font-weight: bold;
    }
</style>
</head>
<body>
<c:url value="/memberLogin" var="login" />
<div class="login-form">
    <mvc:form  class="form-horizontal" action="${login}" method="post">
        <IMG SRC="images/logoHomeStay.png" WIDTH="230" HEIGHT="150" BORDER=0 ALT="" style="margin-left: 30px">
        <h2 class="text-center">Đăng nhập</h2> 
        <div class="form-group">
        	<div class="input-group">
                <span class="input-group-addon"><i class="fa fa-user"></i></span>
                <input type="text" id="username" name="username" placeholder="Username" class="form-control" required="required" >
            </div>
        </div>
		<div class="form-group">
            <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                <input type="password" id="password" name="password" placeholder="Password" class="form-control" />
            </div>
        </div>        
        <div class="form-group">
            <button type="submit" class="btn btn-primary btn-block">Đăng nhập</button>
        </div>
        <div class="clearfix">
            <label class="pull-left checkbox-inline"><input type="checkbox"> Remember me</label>
            <a href="#" class="pull-right">Đăng ký tài khoản</a>
        </div>        
    </mvc:form>
</div>
</body>
</html>                            