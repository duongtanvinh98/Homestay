<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="mvc" uri="http://www.springframework.org/tags/form"%>
<%@include file="include/header.jsp" %>
<div style="margin-left: 5%">
<h2>Thêm hình ảnh mô tả phòng ${phong.maPhong}</h2>
<br>
<h4 style="color: blue">${success}</h4>
</div>    
<hr>
<c:url value="/numberImg" var="numberImg" />
<c:url value="/doUpload" var="doUpload" />
<c:url value="/showImg" var ="showImg" />
<div class="form-group" style="margin-left: 5%">
        <div class="col-sm-9">
            <form action="${numberImg}" method="POST">
                <input type="hidden" name="idPhong" id="idPhong" value="${phong.id}" >
                <table class="col-sm-8" style="text-align: center">
                    <tr>
                        <td><label class="control-label col-sm-10" >Chọn số hình cần đăng</label></td>
                        <td><select name="number" id="number" class="form-control">
                                <option value="0"> -- Chọn -- </option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                                <option value="6">6</option>
                                <option value="7">7</option>
                                <option value="8">8</option>
                            </select>
                        </td>
                        <td style="padding-left: 15px"><input type="submit" value="Xác nhận" class="btn btn-info btn-xs" /></td>
                    </tr>
                </table>
            </form>    
        </div>
        <div class="col-sm-8">
            <form method="post" action="${doUpload}" enctype="multipart/form-data">
                <input name ="idPhong" type="hidden" value="${phong.id}"/>
                <table border="0" style="margin-left: 20px">
                        <c:forEach begin="1" end="${number}" var="i" >
                            <tr>
                                <td><label>Hình ${i}</label></td>
                                <td style = "padding : 10px">
                                    <input name ="fileUpload" type="file"  size="50" class="form-control-file"/>
                                </td>
                            </tr>
                        </c:forEach>
                            <tr>
                                <td colspan="2" align ="center" style = "padding : 10px">
                                    <input type="submit" value = "Upload" class='btn btn-primary' />
                                </td>
                                <td colspan="2" align ="center" style = "padding : 10px">
                                </td>
                            </tr>
                </table>
            </form>
        </div>
        <div style="width: 70%">
            <c:forEach items="${list}" var="img" >
                <c:url value="images/${img.name}" var="url" />
                <IMG SRC="${url}" WIDTH="160" HEIGHT="150" BORDER=0 ALT="" style="margin: 4px 2px">
            </c:forEach>       
        </div>        
    </div>
<%@include file="include/footer.jsp" %>