<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<title>마이 페이지</title>
<style>
* {
	border: 0px solid black;
}

fieldset {
	border: 1px solid black;
}

h2 {
	text-align: center;
}

.category {
	border-right: 1px solid black;
}

.title {
	text-align: center;
	border-right: 1px solid black;
}

.boardBoxBox {
	text-align: center;
}
</style>
</head>
<body>
	<fieldset class="boardBox">
		<legend>
			<h2>내가 쓴 게시글</h2>
		</legend>
		<div class="container">
			<br>
			<c:forEach var="dto" items="${list}">
				<div class="row boardBoxBox">
					<div class="col-10 title">
						${dto.getBoard_category()}
					<c:choose>
						<c:when test="${dto.getBoard_category() eq '고민'}">
							<a href="${pageContext.request.contextPath}/toWorryDetailView.worrybo?currentPage=1&board_seq=${dto.getBoard_seq()}">${dto.getBoard_title()}</a>
						</c:when>
						
						<c:when test="${dto.getBoard_category() eq '자유'}">
							<a href="${pageContext.request.contextPath}/toDetailView.freebo?currentPage=1&board_seq=${dto.getBoard_seq()}">${dto.getBoard_title()}</a>
						</c:when>
						
						<c:when test="${dto.getBoard_category() eq '운동'}">
							<a href="${pageContext.request.contextPath}/toExerciseDetailView.exercisebo?currentPage=1&board_seq=${dto.getBoard_seq()}">${dto.getBoard_title()}</a>
						</c:when>
						
						<c:when test="${dto.getBoard_category() eq '식단'}">
							<a href="${pageContext.request.contextPath}/toFoodDetailView.foodbo?currentPage=1&board_seq=${dto.getBoard_seq()}">${dto.getBoard_title()}</a>
						</c:when>
						
						<c:otherwise>
							<a href="#">${dto.getBoard_title()}</a>	
						</c:otherwise>				
					</c:choose>

					</div>
					<div class="col-2 written_date">${dto.getWritten_date()}</div>
				</div>
			</c:forEach>
		  
			<div class="row">
			<nav class="col" aria-label="Page navigation example">
			  <ul class="pagination justify-content-center">
				  <c:if test="${naviMap.get('needPrev') eq true}">
				  	<li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/toMy.mem?currentPage=${naviMap.get('startNavi')-1}">Previous</a></li>
				  </c:if>
				  <c:forEach var="i" begin="${naviMap.get('startNavi')}" end="${naviMap.get('endNavi')}">
				  	<li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/toMy.mem?currentPage=${i}">${i}</a></li>
				  </c:forEach>
				  <c:if test="${naviMap.get('needNext') eq true}">
				  	<li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/toMy.mem?currentPage=${naviMap.get('endNavi')+1}">Next</a></li>
				  </c:if>			    
			  </ul>
			</nav>
		</div>
		</div>
	</fieldset>
</body>
</html>