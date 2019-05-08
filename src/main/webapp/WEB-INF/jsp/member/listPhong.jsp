<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="mvc" uri="http://www.springframework.org/tags/form"%>
<%@include file="include/header.jsp" %>
<div style="margin-left: 80px">
<h2>Danh sách phòng</h2>
</div>
<br>
<c:url value="/editPhong" var="editPhong" />
<c:url value="/addImgPage" var="addImgPage" />
<div class="table-responsive" style="width: 100%"> 
            <table class="table" >
                <tr>
                    <th>Mã phòng</th>
                    <th>Loại phòng</th>
                    <th>Diện tích</th>
                    <th>Địa chỉ</th>
                    <th>Địa điểm</th>
                    <th>Giá phòng</th>
                    <th>Mô tả</th>
                    <th>Hình ảnh</th>
                    <th>Edit</th>
                    <th>Delete</th>
                </tr>
                <c:forEach var="p" items="${list}">
                        <tr>
                            <td>${p.maPhong}</td>
                            <td>${p.lPhong}</td>
                            <td>${p.dTich} m2</td>
                            <td>${p.diaChi}</td>
                            <td>${p.diaDiem}</td>
                            <td>${p.thongTinPhong.fomartGiaPhong()} VNĐ / day</td>
                            <td><a href=""><button type="button" class="btn btn-info btn-xs">Xem chi tiết</button></a></td>
                            <td>
                                <form action="${addImgPage}" method="POST">
                                    <input type="hidden" name="idPhong" id="idPhong" value="${p.id}" >
                                    <input type="submit" value="Hình ảnh" class="btn btn-warning btn-xs" >
                                </form>
                            </td>
                            <td><a href="${editPhong}/${p.id}"><button type="button" class="btn btn-success btn-xs">Edit</button></a></td>
                            <td><a href="#"><button type="button" class="btn btn-danger btn-xs">Xóa</button></a></td>
                        </tr>
                </c:forEach>
            </table>
       </div> 
<%@include file="include/footer.jsp" %>