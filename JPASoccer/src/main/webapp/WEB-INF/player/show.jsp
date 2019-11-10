<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	  <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Showing Player</title>
</head>
<jsp:include page="navbar.jsp"><jsp:param value="" name=""/></jsp:include>
	<br>
<body style="background-color: #41C5EE">

<div class="container-fluid" style="padding-top:2in;">
		<div class="row row-no-gutters">
			<div class="col-xs-6 col-md-4"></div>
			<div class="col-xs-6 col-md-4 text-center">
				<h3 style="font-family:Impact, Charcoal, sans-serif; "><strong>${player.firstName}&nbsp${player.lastName}</strong></h3>
				<img class="img-thumbnail" alt="${player.firstName} ${player.lastName}"
					src="${player.photo}" width="150" height="150" border="0">
				<p>
					<strong>ID Number: </strong>${player.id}</p>
				<p>
					<strong>Age: </strong>${player.age}</p>
				<p>
					<strong>Overall Ability: </strong>${player.overall}</p>
				<p>
					<strong>Player Value: </strong>
					<fmt:setLocale value="en_US" />
					<fmt:formatNumber value="${player.marketValue}" type="currency" />
				</p>
				<p>
					<strong>Nationality: </strong>${player.nationality} <a
						href="${player.nationWiki}"><img
						alt="${player.firstName} ${player.lastName}" src="${player.flag}"></a>
				</p>
				<p>
					<strong>Club: </strong>${player.club} <a href="${player.clubWiki}"><img
						alt="${player.firstName} ${player.lastName}"
						src="${player.clubLogo}"></a>
				</p>
				<br>
				<br>
				<%-- <form action="deletePlayer.do" method="GET">
					<input type='hidden' name='pid' id='pid' value='${player.id}' />
					<button type="submit" class="btn btn-danger">Delete</button>
				</form>
				<br>
				<form action="updatePlayerForm.do" method="GET">
					<input type='hidden' name='pid' id='pid' value='${player.id}' />
					<button type="submit" class="btn btn-success">Update</button>
				</form> --%>
			</div>
		</div>
</div>
</body>
</html>