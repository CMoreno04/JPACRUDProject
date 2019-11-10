<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List All Players</title>
<style type="text/css">
.
</style>
<link href="css/styles.css" rel="stylesheet" />

</head>
<jsp:include page="navbar.jsp"><jsp:param value="" name="" />
</jsp:include>
<body style="background-color: #41C5EE">


	<div class="container-fluid">
		<div class="row row-no-gutters">
			<div class="col-xs-6 col-md-4"></div>
			<div class="col-xs-6 col-md-4 text-center">
				<c:forEach items="${players}" var="player">
					<c:choose>
						<c:when test="${!empty player.photo }">

							<h3 style="font-family:Impact, Charcoal, sans-serif; ">${player.firstName}&nbsp${player.lastName}</h3>
							<img class="img-thumbnail"
								alt="${player.firstName} ${player.lastName}"
								src="${player.photo}" width="100" height="100" border="0">
							<br>
							<br>
							<form action="getPlayer.do" method="GET">
								<input type='hidden' name='pid' id='pid' value='${player.id}' />
								<button type="submit" class="btn btn-success">See
									Player Details</button>
							</form>
						</c:when>

						<c:otherwise>
							<div>
								<h3 style="font-family:Impact, Charcoal, sans-serif; ">${player.firstName}&nbsp${player.lastName}</h3>

								<p>
									<strong>Club: </strong>${player.club}</p>
							</div>
							<br>
							<form action="getPlayer.do" method="GET">
								<input type='hidden' name='pid' id='pid' value='${player.id}' />
								<button type="submit" class="btn btn-success">See
									Player Details</button>
							</form>

						</c:otherwise>
					</c:choose>
					<hr>
				</c:forEach>
			</div>
			<div class="col-xs-6 col-md-4"></div>
		</div>
	</div>
</body>
</html>