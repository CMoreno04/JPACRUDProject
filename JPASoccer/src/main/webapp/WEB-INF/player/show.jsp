<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div>
  <h3>${player.firstName} ${player.lastName}</h3>
  <img alt="${player.firstName} ${player.lastName}" src="${player.photo}" width="100" height="100" border="0">
  <p><strong>Nationality: </strong>${player.nationality}<a href=""><img alt="${player.firstName} ${player.lastName}" src="${player.flag}" ></a></p>
  <p><strong>Club: </strong>${player.club}</p>
</div>
</body>
</html>