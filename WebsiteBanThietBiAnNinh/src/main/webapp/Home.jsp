<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home Page</title>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ------>
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet"
	integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN"
	crossorigin="anonymous">
<link href="css/style.css" rel="stylesheet" type="text/css" />

<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.11.2/css/all.css" />
<!-- Google Fonts Roboto -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" />
<!-- MDB -->
<link rel="stylesheet" href="css/mdb.min.css" />
<!-- Custom styles -->
<link rel="stylesheet" href="css/style.css" />

<!-- Roboto Font -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700&display=swap">
Font Awesome
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.11.2/css/all.css">
Bootstrap core CSS
<link rel="stylesheet"
	href="https://mdbootstrap.com/previews/ecommerce-demo/css/bootstrap.min.css">
Material Design Bootstrap
<link rel="stylesheet"
	href="https://mdbootstrap.com/previews/ecommerce-demo/css/mdb-pro.min.css">
Material Design Bootstrap Ecommerce
<link rel="stylesheet"
	href="https://mdbootstrap.com/previews/ecommerce-demo/css/mdb.ecommerce.min.css">
<!-- Your custom styles (optional) -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<style>
/* Carousel styling */
#introCarousel, .carousel-inner, .carousel-item, .carousel-item.active {
	height: 100vh;
}

.carousel-item:nth-child(1) {
	background-image:
		url('https://nhaantoan.com/wp-content/uploads/2024/07/EASYLINK-WIFI-KIT-09.jpg');
	background-repeat: no-repeat;
	background-size: 100% 100%;
	background-position: center center;
}

.carousel-item:nth-child(2) {
	background-image:
		url('https://nhaantoan.com/wp-content/uploads/2024/05/z5449094581125_083c9623e3c228b87071761048934964.jpg');
	background-repeat: no-repeat;
	background-size: 100% 100%;
	background-position: center center;
}

.carousel-item:nth-child(3) {
	background-image:
		url('https://nhaantoan.com/wp-content/uploads/2024/05/z5449094581128_8c9ed048b2c1020ba062c427891e504a.jpg');
	background-repeat: no-repeat;
	background-size: 100% 100%;
	background-position: center center;
}

/* Height for devices larger than 576px */
@media ( min-width : 992px) {
	#introCarousel {
		margin-top: -58.59px;
	}
}

.navbar .nav-link {
	color: #fff !important;
}

.card-img-top {
    width: 100%; /* Chiếm toàn bộ chiều rộng của thẻ card */
    height: 200px; /* Đặt chiều cao của hình ảnh */
    object-fit: cover; /* Đảm bảo hình ảnh không bị biến dạng và lấp đầy khu vực */
    border-radius: 8px; /* Thêm bo góc cho hình ảnh */
    margin: auto; /* Căn giữa hình ảnh */
}

/* Thay đổi kích thước hình ảnh và kiểu dáng cho thẻ card */
.card {
    border: none; /* Loại bỏ viền */
    border-radius: 8px; /* Thêm bo góc cho thẻ card */
    overflow: hidden; /* Đảm bảo hình ảnh không tràn ra ngoài thẻ card */
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); /* Thêm bóng cho thẻ card để tạo hiệu ứng nổi bật */
}

</style>

</head>
<body class="skin-light" onload="loadAmountCart()">
	<jsp:include page="Menu.jsp"></jsp:include>



	<!-- Carousel wrapper -->
	<div id="introCarousel"
		class="carousel slide carousel-fade shadow-2-strong"
		data-mdb-ride="carousel" style="margin-top: 35px;">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-mdb-target="#introCarousel" data-mdb-slide-to="0"
				class="active"></li>
			<li data-mdb-target="#introCarousel" data-mdb-slide-to="1"></li>
			<li data-mdb-target="#introCarousel" data-mdb-slide-to="2"></li>
		</ol>

		<!-- Inner -->
		<div class="carousel-inner">
			<!-- Single item -->
			<div class="carousel-item active"></div>

			<!-- Single item -->
			<div class="carousel-item"></div>

			<!-- Single item -->
			<div class="carousel-item"></div>
		</div>
		<!-- Inner -->

		<!-- Controls -->
		<a class="carousel-control-prev" href="#introCarousel" role="button"
			data-mdb-slide="prev"> <span class="carousel-control-prev-icon"
			aria-hidden="true"></span> <span class="sr-only">Previous</span>
		</a> <a class="carousel-control-next" href="#introCarousel" role="button"
			data-mdb-slide="next"> <span class="carousel-control-next-icon"
			aria-hidden="true"></span> <span class="sr-only">Next</span>
		</a>
	</div>

	<!-- Carousel wrapper -->
<div class="card-group background-image" style="margin-top: 50px;">
    <div class="card" style="border-style: none;">
        <img class="card-img-top" src="https://nhaantoan.com/wp-content/uploads/2023/05/Giao-hang-nhanh-gon-uy-tin.jpg">
        <div class="card-body">
            <h5 class="card-title" style="text-align: center">GIAO HÀNG TOÀN QUỐC</h5>
            <p class="card-text" style="text-align: center">Với kho hàng hóa luôn sẵn có, sắp xếp khoa học, đội ngũ nhân viên phục vụ tận tình, chuyên nghiệp, chúng tôi đảm bảo hàng hóa tới tay khách hàng sớm nhất có thể với lộ trình và chi phí thấp nhất</p>
        </div>
    </div>
    <div class="card" style="border-style: none;">
        <img class="card-img-top" src="https://nhaantoan.com/wp-content/uploads/2023/05/Tu-van-ho-tro.jpg">
        <div class="card-body">
            <h5 class="card-title" style="text-align: center">TƯ VẤN HỖ TRỢ</h5>
            <p class="card-text" style="text-align: center">Đội ngũ nhân viên hỗ trợ tư vấn kỹ thuật & bán hàng kinh nghiệm nhiều năm, nắm bắt và hiểu rõ sản phẩm, chúng tôi tự hào đem đến quý khách hàng những giải pháp tốt nhất – phù hợp nhất.</p>
        </div>
    </div>
    <div class="card" style="border-style: none;">
        <img class="card-img-top" src="https://nhaantoan.com/wp-content/uploads/2023/05/Che-do-bao-hanh-tot.jpg">
        <div class="card-body">
            <h5 class="card-title" style="text-align: center">BẢO HÀNH DÀI HẠN</h5>
            <p class="card-text" style="text-align: center">Với việc thành lập các Trung tâm bảo hành tại Hà Nội, Hồ Chí Minh và nhiều tỉnh thành trên khắp cả nước, chúng tôi mong muốn đem đến chất lượng phục vụ nhanh và tốt nhất tới Quý khách hàng.</p>
        </div>
    </div>
    <div class="card" style="border-style: none;">
        <img class="card-img-top" src="https://nhaantoan.com/wp-content/uploads/2023/05/Ho-tro-chinh-sach.jpg">
        <div class="card-body">
            <h5 class="card-title" style="text-align: center">CHÍNH SÁCH</h5>
            <p class="card-text" style="text-align: center">KHANH SECURITY  làm việc trên tinh thần tôn trọng hai bên cùng có lợi vì vậy chúng tôi hỗ trợ đại lý tối đa về chính sách và dịch vụ. Chúng tôi mong muốn hợp tác lâu dài và cùng đồng hành phát triển với đối tác</p>
        </div>
    </div>
</div>




	<div class="container">
		<div class="row" style="margin-top: 25px">
			<h1 style="text-align: center; width: 100%" id="moiNhat">Sản phẩm nhập khẩu và phân phối</h1>
			<div class="col-sm-12">
				<div id="contentMoiNhat" class="row">
					<c:forEach items="${list8Last}" var="o">
						<div class=" col-12 col-md-6 col-lg-3">
							<div class="card">
								<div class="view zoom z-depth-2 rounded">
									<img class="img-fluid w-100" src="${o.image}"
										alt="Card image cap">
								</div>
								<div class="card-body">
									<h4 class="card-title show_txt">
										<a href="detail?pid=${o.id}" title="View Product">${o.name}</a>
									</h4>
									<p class="card-text show_txt">${o.title}</p>
									
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>




		<div class="row" style="margin-top: 50px">
			<div class="col-sm-12">
				<div id="content" class="row">
					<div class=" col-12 col-md-12 col-lg-6">
						<div class="card-body">
							<h4 class="card-title show_txt"
								style="text-align: center; font-size: 18pt; color: #b57b00;">Về
								chúng tôi</h4>
							<h2 class="card-title show_txt"
								style="text-align: center; font-size: 24pt;">KHANH SECURITY</h2>
							<p style="text-align: center;">Uy tín lâu năm chuyên cung cấp
								các thiết bị an ninh chất lượng cao và giá tốt nhất tại Hà Nội,
								TP.HCM.</p>
							<p>Bạn đang cần tìm các thiết bị an ninh như camera, hệ thống
								báo động, khóa cửa thông minh từ các thương hiệu lớn với chất
								lượng đảm bảo và giá cả hợp lý? Hãy đến với KHANH SECURITY – nơi
								bạn có thể yên tâm chọn lựa sản phẩm an ninh cao cấp mà chỉ cần
								chi ra một phần nhỏ so với các sản phẩm chính hãng ngoài thị
								trường nhưng vẫn đảm bảo chất lượng vượt trội.</p>

						</div>

					</div>
					<div class=" col-12 col-md-12 col-lg-6">
						<img class="card-img-top"
							src="https://th.bing.com/th/id/OIP.paBCrHdb6Q9KDSFvUsoMZwHaE8?w=1024&h=683&rs=1&pid=ImgDetMain"
							alt="Card image cap">
					</div>
				</div>
			</div>
		</div>





	</div>

	<jsp:include page="Footer.jsp"></jsp:include>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script>
		function loadMore() {
			var amount = document.getElementsByClassName("product").length;
			$.ajax({
				url : "/WebsiteBanThietBiAnNinh/load",
				type : "get", //send it through get method
				data : {
					exits : amount
				},
				success : function(data) {
					var row = document.getElementById("content");
					row.innerHTML += data;
				},
				error : function(xhr) {
					//Do Something to handle error
				}
			});
		}
		function loadMoreLinhKien() {
			var amountLinkKien = document
					.getElementsByClassName("productLinhKien").length;
			$
					.ajax({
						url : "/WebsiteBanThietBiAnNinh/loadLinhKien",
						type : "get", //send it through get method
						data : {
							exitsLinhKien : amountLinkKien
						},
						success : function(dataLinhKien) {
							document.getElementById("contentLinhKien").innerHTML += dataLinhKien;

						},
						error : function(xhr) {
							//Do Something to handle error
						}
					});
		}
		function loadMorePhuKien() {
			var amountPhuKien = document
					.getElementsByClassName("productPhuKien").length;
			$
					.ajax({
						url : "/WebsiteBanThietBiAnNinh/loadPhuKien",
						type : "get", //send it through get method
						data : {
							exitsPhuKien : amountPhuKien
						},
						success : function(dataPhuKien) {
							document.getElementById("contentPhuKien").innerHTML += dataPhuKien;

						},
						error : function(xhr) {
							//Do Something to handle error
						}
					});
		}
		function searchByName(param) {
			var txtSearch = param.value;
			$.ajax({
				url : "/WebsiteBanThietBiAnNinh/searchAjax",
				type : "get", //send it through get method
				data : {
					txt : txtSearch
				},
				success : function(data) {
					var row = document.getElementById("content");
					row.innerHTML = data;
				},
				error : function(xhr) {
					//Do Something to handle error
				}
			});
		}
		function load(cateid) {
			$
					.ajax({
						url : "/WebsiteBanThietBiAnNinh/category",
						type : "get", //send it through get method
						data : {
							cid : cateid
						},
						success : function(responseData) {
							document.getElementById("content").innerHTML = responseData;
						}
					});
		}
		function loadAmountCart() {
			$
					.ajax({
						url : "/WebsiteBanThietBiAnNinh/loadAllAmountCart",
						type : "get", //send it through get method
						data : {

						},
						success : function(responseData) {
							document.getElementById("amountCart").innerHTML = responseData;
						}
					});
		}
	</script>


	<!-- MDB -->
	<script type="text/javascript" src="js/mdb.min.js"></script>
	<!-- Custom scripts -->
	<script type="text/javascript" src="js/script.js"></script>

	<!-- SCRIPTS -->
	<!-- JQuery -->
	<script
		src="https://mdbootstrap.com/previews/ecommerce-demo/js/jquery-3.4.1.min.js"></script>
	<!-- Bootstrap tooltips -->
	<script type="text/javascript"
		src="https://mdbootstrap.com/previews/ecommerce-demo/js/popper.min.js"></script>
	<!-- Bootstrap core JavaScript -->
	<script type="text/javascript"
		src="https://mdbootstrap.com/previews/ecommerce-demo/js/bootstrap.js"></script>
	<!-- MDB core JavaScript -->
	<script type="text/javascript"
		src="https://mdbootstrap.com/previews/ecommerce-demo/js/mdb.min.js"></script>
	<!-- MDB Ecommerce JavaScript -->
	<script type="text/javascript"
		src="https://mdbootstrap.com/previews/ecommerce-demo/js/mdb.ecommerce.min.js"></script>
</body>
</html>

