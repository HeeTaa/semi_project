<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
<link
	href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css"
	rel="stylesheet">
<title>::Select Signup::</title>
<style>
* {
	box-sizing: border-box;
	margin: 0;
	padding: 0;
	text-decoration: none;
	color: rgb(109, 109, 109);
}

@import
	url('https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700;800&display=swap')
	;

.container {
	padding: 0px;
}

.center {
	text-align: center;
}

.font_nanum {
	font-family: 'Nanum Gothic', sans-serif,;
}

.nomal_font {
	font-family: 'Nanum Gothic', sans-serif,;
	text-decoration: none;
	color: rgb(109, 109, 109);
	font-size: 13px;
}

.nomal_font2 {
	font-family: 'Nanum Gothic', sans-serif,;
	text-decoration: none;
	color: rgb(109, 109, 109);
	font-size: 15px;
	font-weight: 600;
	line-height: 3.3;
}

.navi_logo img {
	padding-top: 12px;
	padding-left: 30px;
	width: 40%;
}

.round {
	border-radius: 30px;
}

.navi_size {
	height: 50px;
	margin-top: 20px;
}

.naviBox {
	position: fixed;
	top: 10px;
	left: 0;
	right: 0;
	z-index: 1;
}

.navi_back {
	background-color: rgb(255, 255, 255, 0.8);
}

th, td {
	text-align: center;
}

a {
	text-decoration: none;
	color: black;
}

.title {
	margin-top: 8%;
	text-align: center;
	font-weight: bolder;
	font-size: 50px;
}

.main_copy {
	text-align: center;
	font-family: 'Nanum Gothic', sans-serif,;
	font-weight: bold;
	color: white
}

.main_copy2 {
	font-family: 'Nanum Gothic', sans-serif,;
	font-weight: bold;
	color: white;
	text-align: center;
}

.main_copy3 {
	text-align: center;
	font-family: 'Nanum Gothic', sans-serif,;
	font-weight: bold;
	color: white;
}

.main_gray {
	font-family: 'Nanum Gothic', sans-serif,;
	font-weight: bold;
	color: gray;
}

.text_gradation {
	font-family: 'Nanum Gothic', sans-serif,;
	font-weight: bold;
	outline: 3px white;
	background: linear-gradient(to right, rgb(234, 7, 140),
		rgb(141, 33, 190));
	color: transparent;
	-webkit-background-clip: text;
	-webkit-text-stroke-width: 0.5px;
	-webkit-text-stroke-color: white;
}

.btn-warning {
	width: 200px;
	height: 200px;
	border-radius: 40px;
	font-size: 20px;
}

.imgaling {
	text-align: right;
}

.logo_title {
	margin-top: 150px;
}

.logo_title img {
	width: 40%;
	text-align: center;
	justify-items: center;
}

.logo {
	padding-left: 240px;
}

footer {
	background-color: lightgray;
	height: 180px;
	margin-top: 200px;
}

.footer_margin {
	margin-top: 50px;
	margin-bottom: 5px;
}

.footer_logo img {
	width: 100%;
}
</style>
</head>
<body>
	<!-- ???????????? -->
    <div class="naviBox">
        <div class="container">
            <div class="row shadow round navi_size navi_back">
                <div class="col-3 navi_logo">
                    <a href="${pageContext.request.contextPath}/home"> <img src="../images/train_logo_typo.png">    </a>   
                </div>
                <div class="col-1">
                    <span></span>
                </div>
                <div class="col-1">
                  <a href="${pageContext.request.contextPath}/toCenterSearch.cen" class="nomal_font2">????????????</a>
                </div>
                <div class="col-1">
                  <a href="${pageContext.request.contextPath}/toWorryBoard.worrybo?currentPage=1" class="nomal_font2">???????????????</a>
                </div>
                <div class="col-1">
                  <a href="${pageContext.request.contextPath}/toBoard.freebo?currentPage=1" class="nomal_font2">???????????????</a>
                </div>
                <div class="col-1">
                  <a href="${pageContext.request.contextPath}/toExerciseBoard.exercisebo?currentPage=1" class="nomal_font2">???????????????</a>
                </div>
                <div class="col-1">
                  <a href="${pageContext.request.contextPath}/toFoodBoard.foodbo?currentPage=1" class="nomal_font2">???????????????</a>
                </div>
                <!-- ????????? ??? ???????????? ???????????? ????????? ????????? ????????? ?????? ?????????-->
             <c:choose>
               	<c:when test="${!empty loginSession}">
               		<div class="col-1">
                    	<a href="${pageContext.request.contextPath}/logoutProc.mem" class="nomal_font2">????????????</a>
                	</div>
               	</c:when>
               	<c:otherwise>
               	<div class="col-1">
                    <a href="${pageContext.request.contextPath}/toLogin.mem" class="nomal_font2">?????????</a>
                </div>
               	</c:otherwise>
            </c:choose>
                <div class="col-1">
                    <a href="${pageContext.request.contextPath}/toSignup.mem" class="nomal_font2">????????????</a>
                </div>
                <c:if test="${!empty loginSession}">
                	<div class="col-1">
                    <a href="${pageContext.request.contextPath}/toMyPage.mem?currentPage=1" class="nomal_font2">???????????????</a>
                </div>
                </c:if>
            </div>
        </div>
    </div>

	<div class="container-fluid point">
		<div id="carouselExampleIndicators" class="carousel slide"
			data-bs-ride="carousel">
			<div class="carousel-indicators">
				<button type="button" data-bs-target="#carouselExampleIndicators"
					data-bs-slide-to="0" class="active" aria-current="true"
					aria-label="Slide 1"></button>
				<button type="button" data-bs-target="#carouselExampleIndicators"
					data-bs-slide-to="1" aria-label="Slide 2"></button>
				<button type="button" data-bs-target="#carouselExampleIndicators"
					data-bs-slide-to="2" aria-label="Slide 3"></button>
			</div>
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img src="../images/sub_navi.png" class="d-block w-100" alt="...">
					<div class="carousel-caption d-none d-md-block">
						<h1 class="display-4 main_copy text_gradation">???????????? ???????????? ?????????
							??????</h1>
						<h1 class="display-3 main_copy"></h1>
					</div>
				</div>
				<div class="carousel-item">
					<img src="../images/sub_navi05.png" class="d-block w-100"
						alt="...">

					<div class="carousel-caption d-none d-md-block">
						<h1 class="display-3 main_copy2 text_gradation">????????? ????????? ????????????
							??????</h1>
					</div>
				</div>
				<div class="carousel-item">
					<img src="../images/sub_navi06.png" class="d-block w-100"
						alt="...">
					<div class="carousel-caption d-none d-md-block">
						<h1 class="display-4 main_copy3 text_gradation ">??????????????? ?????????,
							?????????!</h1>
					</div>
				</div>
			</div>
			<button class="carousel-control-prev" type="button"
				data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next" type="button"
				data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>
		</div>
	</div>


	<div class="container">
		<div class="row logo_title">
			<div class="col-3"></div>
			<div class="col logo">
				<img class="center" src="../images/train_logo.png">
			</div>
			<div class="col-3"></div>
		</div>
		<div class="row">
			<div class="col">
				<h1 class="font_nanum center">??? ???</h1>
				<br> <br>
			</div>
		</div>
		<div class="row">
			<div class="col">
				<h1 class="font_nanum center">??? ??? ??? ???</h1>
				<br> <br>
			</div>
		</div>

		<!-- ???????????? ?????? ????????? -->
		<form action="${pageContext.request.contextPath}/selectSignupProc.mem"
			id="formSelect" method="post">
			<div class="row">
				<div class="col"></div>
				<div class="col center">
					<button type="button" class="btn btn-warning font_nanum"
						id="btnGeneral">???????????? ??????</button>
					<p></p>
					<p>
						??????????????? ???????????? ????????????<br> ???????????? ????????????.
					</p>
				</div>
				<div class="col center">
					<button type="button" class="btn btn-warning font_nanum"
						id="btnBusiness">??????????????? ??????</button>
					<p></p>
					<p>
						?????????????????? ???????????? ???????????? ????????????<br> ?????????, ???????????? ????????????.
					</p>
				</div>
				<div class="col"></div>
			</div>
		</form>
	</div>
	<footer>
		<div class="container">
			<div class="row ">
				<div class="col nomal_font footer_margin"></div>
			</div>
			<div class="row">
				<div class="col-1 footer_logo">
					<img src="../images/train_logo.png">
				</div>
				<div class="col-11 nomal_font">
					(???)?????? | ????????????????????? : 1234-56-7891 | ?????? : ????????? | ????????????????????? : ????????? ????????? ?????????
					????????? <br> ?????? : ????????? ????????? ????????? 30, ??????????????? 127, 128???(?????????) | ???????????? :
					02-3472-4177 | Fax : 02-585-3083 <br> Copyright @ 2021 (???)??????
				</div>
			</div>
		</div>
	</footer>

	<script>
		// ???????????? ????????????
		document.getElementById("btnGeneral").onclick=function(){
            location.href="${pageContext.request.contextPath}/toGeneralSignupProc.mem";
        }
		//????????? ???????????? ??????
        document.getElementById("btnBusiness").onclick=function(){
            location.href="${pageContext.request.contextPath}/toBusinessSignupProc.mem";
        }
	</script>

</body>
</html>