<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vn">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Trang Web</title>
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <style>
        .footer {
            background-color: #212529; /* Màu nền tối cho footer */
            color: #e9ecef; /* Màu chữ sáng để tương phản với nền tối */
            padding: 4rem 0; /* Thêm padding trên và dưới cho footer */
        }

        .footer .row {
            margin-bottom: 1rem;
        }

        .footer h5 {
            font-size: 20px;
            font-weight: bold;
            margin-bottom: 1rem;
        }

        .footer a {
            color: #e9ecef; /* Màu liên kết sáng */
            text-decoration: none; /* Loại bỏ gạch chân khỏi liên kết */
        }

        .footer a:hover {
            text-decoration: underline; /* Thêm gạch chân khi di chuột qua liên kết */
        }

        .footer .card {
            border: none; /* Loại bỏ viền của card */
            background-color: transparent; /* Nền trong suốt cho card */
        }

        .footer .card-img {
            height: 100px; /* Đặt chiều cao của hình ảnh trong card */
            width: auto; /* Để chiều rộng tự động theo chiều cao */
        }

        .footer .card-body {
            text-align: center; /* Căn giữa nội dung trong card */
        }

        .footer .social-media {
            text-align: center;
        }

        .footer .social-media a {
            font-size: 24px;
            color: #e9ecef;
            margin: 0 10px;
            transition: color 0.3s;
        }

        .footer .social-media a:hover {
            color: #007bff; /* Màu khi di chuột qua các biểu tượng mạng xã hội */
        }

        .footer .copy-right {
            border-top: 1px solid #343a40;
            padding-top: 1rem;
            text-align: center;
            margin-top: 1rem;
        }
    </style>
</head>
<body>
    <!-- Footer -->
    <footer class="footer">
        <div class="container">
            <div class="row">
                <div class="col-md-3 mb-4">
                    <h5>THIẾT BỊ AN NINH</h5>
                    <ul class="list-unstyled">
                        <li><a href="#linhkien">Hàng nhập khẩu</a></li>
                        <li><a href="#camera">Camera</a></li>
                        <li><a href="#moiNhat">Mới Nhất</a></li>
                        <li><a href="#tatCa">Tất Cả</a></li>
                    </ul>
                </div>

                <div class="col-md-3 mb-4">
                    <h5>LIÊN HỆ VỚI CHÚNG TÔI</h5>
                    <ul class="list-unstyled">
                        <li><a href="#">Hướng Dẫn Đặt Hàng</a></li>
                        <li><a href="#">Thông Tin Thanh Toán</a></li>
                        <li><a href="#">Chính Sách</li>
                        <li><a href="#">Liên Hệ</a></li>
                    </ul>
                </div>

               

                <div class="col-md-3 mb-4">
                    <h5>THÔNG TIN SHOP</h5>
                    <ul class="list-unstyled">
                        <li><i class="fa fa-home mr-2"></i>Nguyễn Văn Bảo, Q. Gò Vấp</li>
                        <li><i class="fa fa-envelope mr-2"></i>baokhanh@gmail.com</li>
                  
                    </ul>
                </div>
            </div>
            <div class="row">
                <div class="col-12 text-center mb-4">
                    <h5>THEO DÕI CHÚNG TÔI</h5>
                    <div class="social-media">
                        <a href="#" class="fab fa-facebook-f"></a>
                        <a href="#" class="fab fa-twitter"></a>
                        <a href="#" class="fab fa-instagram"></a>
                        <a href="#" class="fab fa-youtube"></a>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-12 copy-right">
                    <p class="text-light mb-0">
                        <a href="#" class="text-light">Back to top</a>
                    </p>
                    <p class="text-light mt-3">
                        <strong>20120781_LuuTranBaoKhanh &copy; 2024. All rights reserved.</strong>
                    </p>
                </div>
            </div>
        </div>
    </footer>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <!-- Font Awesome Icons -->
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
</body>
</html>
