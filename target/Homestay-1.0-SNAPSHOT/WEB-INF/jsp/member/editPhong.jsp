<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="mvc" uri="http://www.springframework.org/tags/form"%>
<%@include file="include/header.jsp" %>
<div style="margin-left: 80px">
<h2>Chi tiết phòng </h2>
<br>
<h4 style="color: blue">${message}</h4>
<h4 style="color: red">${error}</h4>
</div>    
<hr>
<c:url value="/excuteEdit" var="excuteEdit" />
<mvc:form modelAttribute="phong" class="form-horizontal" action="${excuteEdit}">
    <div class="form-group">
         <mvc:hidden path="homestayOwners.id" value= "${homestayOwnerById.id}" />
         <mvc:hidden path="id" />
         <mvc:hidden path="thongTinPhong.id" />
        <label class="control-label col-sm-2" >Mã phòng</label>
        <div class="col-sm-3">
            <mvc:input path="maPhong" required="true" class="form-control" />
        </div>      
        <label class="control-label col-sm-2" >Loại phòng</label>
        <div class="col-sm-3">
            <mvc:input path="lPhong" required="true"  class="form-control" />
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2" >Diện tích</label>
        <div class="col-sm-3">
            <mvc:input path="dTich" required="true"  class="form-control" />
        </div>      
        <label class="control-label col-sm-2" >Đia chỉ</label>
        <div class="col-sm-3">
            <mvc:input path="diaChi" required="true"  class="form-control" />
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2" >Địa điểm</label>
        <div class="col-sm-3">
            <mvc:input path="diaDiem" required="true"  class="form-control" />
        </div>    
        <label class="control-label col-sm-2" >Chất lượng</label>
        <div class="col-sm-3">
            <mvc:select path="thongTinPhong.cLuong" class="form-control" >
                 <mvc:option value="Bình thường" label="Bình thường" />
                <mvc:option value="VIP" label="VIP" />
            </mvc:select>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2" >Số lượng người ở</label>
        <div class="col-sm-3">
            <mvc:input path="thongTinPhong.slNguoiO" required="true" class="form-control" />
        </div>       
        <label class="control-label col-sm-2" >Người ở</label>
        <div class="col-sm-3">
            <mvc:select path="thongTinPhong.nguoiO" class="form-control" >
                <mvc:option value="Không có yêu cầu" label="Không có yêu cầu" />
                <mvc:option value="Nam" label="Nam" />
                <mvc:option value="Nữ" label="Nữ" />
            </mvc:select>
        </div>
    </div>
   <div class="form-group">        
        <label class="control-label col-sm-2" >Giường</label>
        <div class="col-sm-3">
            <mvc:select path="thongTinPhong.giuong" class="form-control" >
                 <mvc:option value="Đơn" label="Đơn" />
                <mvc:option value="Đôi" label="Đôi" />
            </mvc:select>
        </div>
        <label class="control-label col-sm-2" >Giá phòng</label>
        <div class="col-sm-3">
            <mvc:input path="thongTinPhong.giaPhong" required="true" class="form-control" />
        </div>
    </div>
    <div class="form-group">        
        <label class="control-label col-sm-2" >Thuê từ</label>
        <div class="col-sm-3">
            <mvc:input type="date" path="thongTinPhong.thueTu" required="true"  class="form-control" />
        </div>
        <label class="control-label col-sm-2" >Thuê đến</label>
        <div class="col-sm-3">
            <mvc:input type="date" path="thongTinPhong.thueDen" required="true"  class="form-control" />
        </div>
    </div>        
            <mvc:hidden path="thongTinPhong.tTrang" value="Con trong" class="form-control" />   
        <div class="col-sm-9" style="margin-left: 10%;margin-bottom: 1% ">
            <label>Mô tả</label>  
            <mvc:textarea path="thongTinPhong.moTa" rows="8" class="form-control" />
        </div>    
    <center> 
    <div class="form-group"> 
        <div class="col-sm-offset-2 col-sm-7">
            <button type="submit" class="btn btn-primary">Cập nhật</button>
        </div>
    </div>
    </center>            
</mvc:form>
<%@include file="include/footer.jsp" %>