<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- jstl 태그-->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 부트스트랩 태그 -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">


<title>메인화면</title>

<style>
.container {
	width: 700px;
	margin: auto;
	padding: 30px;
}

.row {
	padding-bottom: 10px;
	text-align: center;
}

input {
	width: 100%;
}

</style>
</head>
<body>
<!-- 만약 loginSession이 비어있지 않다면 -->
	<c:choose>
		<c:when test="${!empty loginSession}">

			<div class="container">
				<div class="row">
					<div class="col">
						<h2>${loginSession.get('nickname')} 님 환영합니다.</h2> 
					</div>
				</div>
				<div class="row">
					<div class="col">
						<button type="button" class="btn btn-warning" id="btnMyPage">마이페이지</button>
					</div>
					<div class="col">
						<button type="button" class="btn btn-warning" id="btnSearch">센터검색</button>
					</div>			
				</div>
			</div>
			<script>
				//마이페이지버튼
				document.getElementById("btnMyPage").addEventListener("click",function(){
						location.href = "${pageContext.request.contextPath}/toMyPage.mem";
				})
				//센터검색
				document.getElementById("btnSearch").addEventListener("click",function(){
						location.href = "${pageContext.request.contextPath}/toCenterSearch.cen";
				})
			</script>
		</c:when>
		<c:otherwise>
			<!-- 로그인실패시 -->
			<c:if test="${rs eq 'fail'}">
				<script>
					alert("아이디 혹은 비밀번호를 잘못 입력하였습니다.");
				</script>
			</c:if>
			<form action="${pageContext.request.contextPath}/loginProc.mem"
				id="formLogin" method="post">
				<div class="container">
					<div class="row">
						<div class="col">
							<h2>Board</h2>
						</div>
					</div>
					<div class="row">
						<div class="col">
							<input type="text" id="id" name="id" placeholder="id 입력">
						</div>
					</div>
					<div class="row">
						<div class="col">
							<input type="password" id="pw" name="password"
								placeholder="pw 입력">
						</div>
					</div>
					<div class="row justify-content-center">
						<div class="col-4" style="text-align: right;">
							<button type="button" class="btn btn-primary" id="btnLogin">로그인</button>
						</div>
						<div class="col-4">
							<button type="button" class="btn btn-info" id="btnSignup">회원가입</button>
						</div>
					</div>
				</div>
			</form>
			<script>
				//로그인
				document.getElementById("btnLogin").onclick = function() {
					if (document.getElementById("id").value == "" || document.getElementById("pw").value == "") {
						alert("아이디 혹은 비밀번호를 입력하세요");
						return;
					}
					document.getElementById("formLogin").submit();
				}
				//회원가입
				document.getElementById("btnSignup").addEventListener("click",function() {
					location.href = "${pageContext.request.contextPath}/toSignup.mem";
				});
			</script>
		</c:otherwise>
	</c:choose>

</body>
</html>