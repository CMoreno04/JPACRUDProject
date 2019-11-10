<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	  <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<jsp:include page="navbar.jsp"><jsp:param value="" name=""/></jsp:include>
	<br>
<body>
<br>
<div>
  <h3>${player.firstName} ${player.lastName}</h3>
  <img alt="${player.firstName} ${player.lastName}" src="${player.photo}" width="100" height="100" border="0">
  <p><strong>Age: </strong>${player.age}</p>
  <p><strong>Overall Ability: </strong>${player.overall}</p>
  <p><strong>Player Value: </strong> <fmt:setLocale value = "en_US"/>
         <fmt:formatNumber value = "${player.marketValue}" type = "currency"/></p>
  <p><strong>Nationality: </strong>${player.nationality}   <a href="${player.nationWiki}"><img alt="${player.firstName} ${player.lastName}" src="${player.flag}" ></a></p>
  <p><strong>Club: </strong>${player.club}   <a href="${player.clubWiki}"><img alt="${player.firstName} ${player.lastName}" src="${player.clubLogo}" ></a></p>
</div>
</body>
</html>