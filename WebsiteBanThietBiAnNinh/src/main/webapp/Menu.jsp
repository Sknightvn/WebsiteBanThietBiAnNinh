<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--begin of menu-->
<nav class="navbar navbar-expand-md navbar-light bg-white" style="position: fixed; top: 0; width:100%; z-index: 100000; box-shadow: 0px 4px 2px -2px gray;">
    <div class="container">
        <a class="navbar-brand" href="home" style="color: black;">KHANH SECURITY</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse justify-content-end" id="navbarsExampleDefault">
            <ul class="navbar-nav m-auto">
                <li class="nav-item">
                    <a class="nav-link" href="home" style="color: black !important;">Trang Chủ</a>
                </li> 
                <li class="nav-item">   
                    <a class="nav-link" href="shop" style="color: black !important;">Cửa Hàng</a>
                </li> 
                <c:if test="${sessionScope.acc != null}">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="color: black !important;">
                            Xin chào ${sessionScope.acc.user}
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="EditProfile.jsp" style="color: black !important;">Chỉnh Sửa Hồ Sơ</a>
                            <a class="dropdown-item" href="logout" style="color: black !important;">Đăng Xuất</a>
                        </div>
                    </li>
                </c:if>
                <c:if test="${sessionScope.acc == null}">
                    <li class="nav-item">
                        <a class="nav-link" href="login" style="color: black !important;">Đăng Nhập</a>
                    </li>
                </c:if>
            </ul>

            <form action="search" method="post" class="form-inline my-2 my-lg-0">
                <a class="btn btn-success btn-sm ml-3" href="managerCart">
                    <i class="fa fa-shopping-cart"></i> <span style="font-size: 14px; color: black;">Giỏ Hàng</span>
                    <b><span id="amountCart" class="badge badge-light" style="color:black; font-size: 12px;"></span></b>
                </a>
            </form>
        </div>
    </div>
</nav>
<!--end of menu-->

<!-- Add these scripts to ensure dropdown works properly -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.bundle.min.js"></script>
