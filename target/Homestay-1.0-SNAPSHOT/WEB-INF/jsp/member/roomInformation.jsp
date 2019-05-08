<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="mvc" uri="http://www.springframework.org/tags/form"%>
<%@include file="include/header.jsp" %>
<div style="margin-left: 80px">
<h2>Thông tin phòng</h2>
</div>    
<hr>
<div style="margin-left: 10%;font-size: 15px;font-weight: bold">
    <table>
    <tr>
        <td>Chất lượng : </td>
        <td style="padding: 5px">${thongtin.cLuong}</td>
    </tr>
     <tr>
        <td>Số lượng người ở : </td>
        <td style="padding: 5px">${thongtin.slNguoiO}</td>
    </tr>
     <tr>
        <td>Người ở : </td>
        <td style="padding: 5px">${thongtin.nguoiO}</td>
    </tr>
     <tr>
        <td>Giường : </td>
        <td style="padding: 5px">${thongtin.giuong}</td>
    </tr>
     <tr>
        <td>Giá phòng : </td>
        <td style="padding: 5px">${thongtin.giaPhong} VNĐ</td>
    </tr>
    <tr>
        <td>Tình trạng : </td>
        <td style="padding: 5px">${thongtin.tTrang}</td>
    </tr>
</table>
</div>        
<%@include file="include/footer.jsp" %>