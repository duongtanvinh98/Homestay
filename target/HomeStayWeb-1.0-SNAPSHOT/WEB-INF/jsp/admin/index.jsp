<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
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
    .row.content {height: 555px}
    
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
      height: 80px;
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
  </style>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
      <div class="navbar-header">
            <a class="navbar-brand" href="index.php">Quản lý phòng HomeStay</a>
      </div>
    <ul class="nav navbar-nav navbar-right">
    </ul>
  </div>
</nav>
  
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
                            <li><a href="#"><span class="glyphicon glyphicon-user"></span> Đăng ký</a></li>
                            <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Đăng nhập</a></li>
                            <li><a href="#"><span class="glyphicon glyphicon-tasks"></span> Cập nhật thông tin</a></li>
                            <li><a href="#"><span class="glyphicon glyphicon-list"></span> Danh sách phòng</a></li>
                            <li><a href="#"><span class="glyphicon glyphicon-file"></span> Đăng phòng</a></li> 
                            <li><a href="#"><span class="glyphicon glyphicon-th-list"></span> Phòng đặt</a></li>
                        </ul>
                    </div>    
                </div>
            </div>
        </div>
    </div>
    <div class="col-sm-10 text-left"> 
    </div>
  </div>
</div>

<footer class="container-fluid text-center">
  <p>Desgin By Dương Tấn Vinh</p>
  <p>Email: duongtanvinh98@gmail.com </p>
</footer>

</body>
</html>