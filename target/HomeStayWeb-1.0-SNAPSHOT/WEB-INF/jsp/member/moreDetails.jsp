<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="mvc" uri="http://www.springframework.org/tags/form"%>
<%@include file="include/header.jsp" %>
<div style="margin-left: 80px">
<h2>Cập nhật thông tin phòng ${phongById.maPhong}</h2>
<br>
<h4>${message}</h4>
</div>    
<hr>
<c:url value="/excuteMoreDetails" var="excute" />
<mvc:form modelAttribute="ttp" class="form-horizontal" action="${excute}">
    <mvc:hidden path="phong.id" value="${phongById.id}"/>
    <div class="form-group">        
        <label class="control-label col-sm-2" >Chất lượng</label>
            <div class="col-sm-3">
                <mvc:select path="cLuong" class="form-control" >
                    <mvc:option value="Binh thuong" label="Binh thuong" />
                    <mvc:option value="VIP" label="VIP" />
                </mvc:select>
            </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2" >Số lượng người ở</label>
            <div class="col-sm-3">
                <mvc:input path="slNguoiO" required="true" placeholder="Số lượng người ở" class="form-control" />
            </div>
    </div>
    <div class="form-group">        
        <label class="control-label col-sm-2" >Người ở</label>
            <div class="col-sm-3">
                <mvc:select path="nguoiO" class="form-control" >
                    <mvc:option value="Khong co yeu cau" label="Khong co yeu cau" />
                    <mvc:option value="Nam" label="Nam" />
                    <mvc:option value="Nu" label="Nu" />
                </mvc:select>
            </div>
    </div>
   <div class="form-group">        
        <label class="control-label col-sm-2" >Giuong</label>
            <div class="col-sm-3">
                <mvc:select path="giuong" class="form-control" >
                    <mvc:option value="Don" label="Don" />
                    <mvc:option value="Doi  " label="Doi" />
                </mvc:select>
            </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2" >Giá phòng</label>
            <div class="col-sm-3">
                <mvc:input path="giaPhong" required="true" class="form-control" />
            </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2" >Tình trạng</label>
        <div class="col-sm-3">        
            <mvc:input path="tTrang" value="Con trong" class="form-control" />
        </div>    
     </div> 
    <div class="form-group"> 
        <div class="col-sm-offset-2 col-sm-3">
            <button type="submit" class="btn btn-primary">Đăng phòng</button>
        </div>
    </div>
</mvc:form>
<%@include file="include/footer.jsp" %>