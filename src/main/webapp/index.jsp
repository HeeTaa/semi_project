<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
<link rel="icon" href="/favicon.ico" type="image/x-icon">
 <style>
*{
    box-sizing: border-box;
    margin: 0;
    padding: 0;
    text-decoration: none;
    color: rgb(109, 109, 109);
}

    @import url('https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700;800&display=swap');
        
    .center{
        text-align: center;
    }
    .font_nanum{
        font-family: 'Nanum Gothic', sans-serif, ;
    }
    .nomal_font{
        font-family: 'Nanum Gothic', sans-serif, ;
        text-decoration: none;
        color: rgb(109, 109, 109);
        font-size: 13px;
    }
    .nomal_font2{
        font-family: 'Nanum Gothic', sans-serif, ;
        text-decoration: none;
        color: rgb(109, 109, 109);
        font-size: 15px;
        font-weight: 600;
        line-height: 3.3;
    }
    .container{
        margin: auto;
    }

    .navi_logo img{
        padding-top: 12px;
        padding-left: 30px;
        width: 40%;
    }

    .round {
    border-radius: 30px;
}
.navi_size{
    height: 50px;
    margin-top: 20px;
}
.naviBox {
    position: fixed;
    top : 10px;
    left : 0;
    right: 0;
    z-index: 1;
}
.navi_back{
    background-color: rgb(255, 255, 255, 0.8);
}

.point{

}

.main_copy{
    
   
    text-align: center;
    font-family: 'Nanum Gothic', sans-serif, ;
    font-weight: bold;
   
    color: white
   
}
.main_copy2{
    
    font-family: 'Nanum Gothic', sans-serif, ;
    font-weight: bold;
    color: white;
    
    text-align: center;

}
.main_copy3{
    text-align: center;
    font-family: 'Nanum Gothic', sans-serif, ;
    font-weight: bold;
    color: white;
}

.main_gray{

font-family: 'Nanum Gothic', sans-serif, ;
font-weight: bold;
color: gray;
}

.text_gradation {
    font-family: 'Nanum Gothic', sans-serif, ;
    font-weight: bold;
    background : linear-gradient(to right, rgb(234, 7, 140), rgb(141, 33, 190));
    color: transparent;
    -webkit-background-clip: text;
}



.exp{
    background-color: lightgrey;
    margin-top: 50px;
    margin-bottom: 50px;
    padding-top: 100px;
    padding-bottom: 100px;
}
.leftmargen{
   padding-left: 80px;
}

.hi_small{
    height: 10px;
}
.input-group-text{
    height: 50px;
}

.gab{

    margin-bottom: 50px;
}

.gab img{
    text-align: center;
    width: 10%;
}
.center_img img{
    width: 30%;
}
.img_gab{
    margin-left: 20px;
    padding-left: 50px;
}

.picture{
    background-image: url(images/main_sale02.jpg);
}

.gab_bottom{
    margin-bottom: 20px;
}

    .main_explan{
        margin-top: 100px;
        margin-bottom: 20px;
    }
    .explan_carousel{
        width: 250px;
    }
    .form-control{
        height: 50px;
    }
    .search_bar{
        
        margin-top: 20px;
        padding-top: 20px;
        margin-bottom: 100px;
    }
    .search_icon img{
        width: 40%;
    }
    .sale_event{
        background-color: lightgrey;
    }
    .sale_event_margin{
        margin: auto;
    }
    .main_event_title_Box{
        margin-top: 20px;
        margin-bottom: 20px;
    }
    .main_event_title{
        text-align: center;
        color: white;
        font-weight: bold;
    }
    .sale_event_line_01{
        margin-top: 20px;
        margin-bottom: 20px;
    }
    .sale_event_line_02{
        margin-top: 20px;
        margin-bottom: 20px;
    }
    .merit01{
        margin-top: 30px;
        margin-bottom: 80px;
    }
    .merit{
        text-align: center;
        margin-top: 50px;
        margin-bottom: 80px;
    }
    .product_event{
        background-color: silver;
    }
    .before_after{
        margin-bottom: 80px;
    }

    footer{
        background-color: lightgray;
        height: 250px;
    }
    .footer_margin{
        margin-top: 50px;
        margin-bottom: 10px;
    }
    .footer_logo img{
       
        width: 50%;
    }
    .imgaling{
        text-align: right;
    }
    </style>

<title> ?????? </title>
</head>
<body>
<!-- ???????????? -->
    <!-- ???????????? -->
    <div class="naviBox">
        <div class="container">
            <div class="row shadow round navi_size navi_back">
                <div class="col-3 navi_logo">
                    <a href="${pageContext.request.contextPath}/home"> <img src="images/train_logo_typo.png">    </a>   
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
   

<!-- ?????? ?????????-->
<div class="container-fluid point">
    <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
    <div class="carousel-indicators">
      <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
      <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
      <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
    </div>
    <div class="carousel-inner">
      <div class="carousel-item active">
        <img src="images/main_carousel_01.jpg" class="d-block w-100" alt="...">
        <div class="carousel-caption d-none d-md-block"  >
            <h1 class="display-4 main_copy">???????????? ???????????? ????????? ?????? </h1>
            <h1 class="display-3 main_copy"></h1>
          
            
          </div>
    </div>
      <div class="carousel-item">
        <img src="images/main_carousel_02.jpg" class="d-block w-100" alt="...">
        
        <div class="carousel-caption d-none d-md-block"  >
            <h1 class="display-3 main_copy2">????????? ????????? ???????????? ??????</h1>
          </div>
    </div>
      <div class="carousel-item">
        <img src="images/main_carousel_03.jpg" class="d-block w-100" alt="...">
        <div class="carousel-caption d-none d-md-block">
            <h1 class="display-4 main_copy3 ">??????????????? ?????????, ?????????!</h1> 
        </div>
    </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Next</span>
    </button>
  </div>
</div>

        <!--??????????????? ??????-->
   <div class="container">
        <div class="row main_explan">
            <div class="col-2"></div>
            <div class="col">
                <h1 class="display-3 font_nanum text_gradation ">???????????????<br>????????????<br>????????????????</h1>
                <p></p>
                <p>????????? ????????? ???????????? ???????????????.</p>
            </div>
            <div class="col">
                <div class="col">
                    <div id="carouselExampleIndicators" class="carousel slide explan_carousel" data-bs-ride="carousel">
                        <div class="carousel-indicators">
                            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0"
                                class="active" aria-current="true" aria-label="Slide 1"></button>
                            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1"
                                aria-label="Slide 2"></button>
                        </div>
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <img src="images/train_logo.png" class="d-block w-100" alt="...">
                            </div>
                            <div class="carousel-item">
                                <img src="images/mega_sale.png" class="d-block w-100" alt="...">
                            </div>

                        </div>
                        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators"
                            data-bs-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Previous</span>
                        </button>
                        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators"
                            data-bs-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Next</span>
                        </button>
                    </div>
                </div>
            </div>
            <div class="col-2"></div>
        </div>
   </div>
   
   
           <!-- ???????????? ???????????? -->
         <div class="container">
        <div class="row search_bar">
            <div class="col-1"></div>
                <div class="col-9 hi_small">
                  <a href="${PageContext.request.contextPath}/toCenterSearch.cen" class="nomal_font">
                      <div class="input-group hi_small">
                        <span class="input-group-text nomal_font" id="basic-addon1">
                            <h6>???????????? ????????????</h6></span>
                         <input type="text" class="form-control nomal_font" placeholder="???????????? ?????? ??????" aria-label="Username" aria-describedby="basic-addon1">
                       </div>
                    </a>
                   </div>
               <div class="col-1 ">
  
              </div>
            <div class="col-1"></div>
        </div>

         </div>


  
<!--?????? ????????? ??????-->

      <div class="container-fluid exp">
        <div class="row">
          <div class="col-lg-4 my-auto leftmargen">
            <h1 class="text-gradient  display-2 mb-0 text_gradation">?????? ?????????</h1>
            <h1 class="text-gradient  display-2 mb-0 text_gradation">???????????????.</h1>
            <h3 class="mb-4">?????? ????????? ??? ????????????. </h3>
            <p class="lead">????????? ???????????????, ????????????, ?????? ???????????? ?????? ???????????? ????????? ?????? ????????? ???????????????.</p>
            <div class="buttons">
              <button type="button" class="btn btn-warning mt-4">???????????? ????????????</button>
            </div>
          </div>
          <div class="col-lg-8 ps-5 pe-0">
            <div class="row">
              <div class="col-lg-3 col-6">
                <img class="w-100 round border-radius-lg shadow mt-0 mt-lg-7" src="images/train_01.png" alt="">
              </div>
              <div class="col-lg-3 col-6">
                <img class="w-100 round border-radius-lg shadow" src="images/train_02.png" alt="">
                <img class="w-100 round border-radius-lg shadow mt-4" src="images/train_03.png" alt="">
              </div>
              <div class="col-lg-3 col-6">
                <img class="w-100 round border-radius-lg shadow mt-0 mt-lg-5" src="images/train_04.png" alt="">
                <img class="w-100 round border-radius-lg shadow mt-4" src="images/train_05.png" alt="">
              </div>
              <div class="col-lg-3 col-6">
                <img class="w-100 round border-radius-lg shadow mt-3" src="images/train_06.png" alt="">
                <img class="w-100 round border-radius-lg shadow mt-4" src="images/train_07.png" alt="">
              </div>
            </div>
          </div>
        </div>
      </div>

  <!-- ?????? ?????? ?????? -->

  <section class="py-5">
    <div class="container">
        <div class="row center_img">
            <div class="col-5 img_gab"></div>
            <div class="col center_img img_gab">
                <img src="images/train_logo.png"> 
            </div>
            <div class="col-5"></div>
           
        </div>
        <div class="row gab">
            
            <div class="col-md-5 ms-auto me-auto text-center">
              <div class="p-3 info-hover-warning">
                <div class="icon icon-shape bg-gradient-primary shadow icon-shape-circle text-primary">
                  <i class="fa fa-cogs"></i>
                </div>
              </div>
              <h3 class="text-gradient display-3 text_gradation gab_bottom mb-0 mt-4">????????? ?????? ??????</h3>
              <h3>????????? ???????????? ????????? ????????????.</h3>
              <p>We???re not Best, but we're do try</p>
            </div>
          </div>
      <div class="row">
        <div class="col-lg-12">
          <div class="row">
            <div class="col-lg-6 justify-content-center d-flex flex-column">
              <div class="card rounded-3">
                <div class="d-block blur-shadow-image">
                  <img src="images/best_01.png" alt="img-blur-shadow-blog-2" class="img-fluid shadow rounded-3">
                </div>
              </div>
            </div>
            <div class="col-lg-6 justify-content-center d-flex flex-column ps-lg-5 pt-lg-0 pt-3">
              <h6 class="category text-info mt-3">????????? ?????????</h6>
              <h3 class="main_gray display-6">
               ????????? ???????????? 2400???
              </h3>
              <h3 class="main_gray display-6">
                ????????? ??????
               </h3>
              <p>
                  1:1 & 61 ?????? ???????????? / 25M X5??? ?????? ????????? / QED ????????? ????????? / ????????? ????????? ????????? ?????????...
                 <a href="javascript:;" class="text-darker icon-move-right text-sm">
                  <i class="fas fa-arrow-right text-xs ms-1"></i>
                </a>
              </p>
              <p class="author">
                ?????? ????????? ???????????? 260 ?????? ???????????? 
              </p>
              <p class="author">
                ???????????? 02-1234-1234 
              </p>
            </div>
          </div>
        </div>
        <div class="col-lg-12 mt-5">
          <div class="row flex-row-reverse">
            <div class="col-lg-6 justify-content-center d-flex flex-column">
              <div class="card rounded-3">
                <div class="blur-shadow-image">
                  <img src="images/best_03.png" alt="img-blur-shadow-blog-2" class="img-fluid shadow rounded-3">
                </div>
              </div>
            </div>
            <div class="col-lg-6 pe-lg-5 justify-content-center d-flex flex-column pt-lg-0 pt-3">
              <h6 class="category text-info mt-3">????????? ???????????????</h6>
              <h3 class="main_gray display-6">
                ????????? ????????? ??????
               </h3>
               <h3 class="main_gray display-6">
                ?????????
               </h3>
              <p>
                ????????? ????????? ????????? ?????? ????????? ???????????? ?????? ????????? ????????? ????????? ????????? ?????? ????????????????????? ???????????? ????????? ????????? ??? ????????????.<a href="javascript:;" class="text-darker icon-move-right text-sm">
                  <i class="fas fa-arrow-right text-xs ms-1"></i>
                </a>
              </p>
              <p class="author">
                ?????? ????????? ???????????? 461 ??????????????? 
              </p>
              <p class="author">
                ???????????? 02-1234-1234 
              </p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

<!--??????-->
<footer>
    <div class="container">
        <div class="row ">
          <div class="col nomal_font footer_margin">
           
          </div>
        </div>
        <div class="row">
          <div class="col-2 footer_logo">
              <p class="imgaling">
                 <img src="images/train_logo.png"> 
              </p>
            
          </div>
          <div class="col-10 nomal_font">
            (???)?????? | ????????????????????? : 736-81-01238 | ?????? : ????????? | ????????????????????? : ?????????  ????????? ????????? ????????? 
            <br>
            ?????? : ????????? ????????? ????????? 30, ??????????????? 127, 128???(?????????) | ???????????? : 02-3472-4177 | Fax : 02-585-3083
            <br>
            Copyright @ 2021 (???)??????
          </div>
        </div>
      </div>

</footer>
   <script>
   /*
      document.getElementById("btnLogin").onclick=function(){
         location.href="${pageContext.request.contextPath}/toLogin.mem";
   } */
   </script>
</body>
</html>