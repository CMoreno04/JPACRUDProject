<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	 <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Showing New Player</title>
</head>
<jsp:include page="navbar.jsp"><jsp:param value="" name=""/></jsp:include>
	<br>
<body>
<br>
<div>
  <h3>${player.firstName} ${player.lastName}</h3>
  <p><strong>Age: </strong>${player.age}</p>
  <p><strong>Overall Ability: </strong>${player.overall}</p>
  <p><strong>Nationality: </strong>${player.nationality}</p>
  <p><strong>Player Value: </strong> <fmt:setLocale value = "en_US"/>
         <fmt:formatNumber value = "${player.marketValue}" type = "currency"/></p>
  <p><strong>Club: </strong>${player.club}</p>
</div>

<form action="deletePlayer.do" method="GET">
<input type='hidden' name='pid' id='pid' value='${player.id}' />
<input type="submit" value="Delete Player">
</form>

<form action="updatePlayerForm.do" method="GET">
<input type='hidden' name='pid' id='pid' value='${player.id}' />
<input type="submit" value="Update">
</form>

</body>
</html>