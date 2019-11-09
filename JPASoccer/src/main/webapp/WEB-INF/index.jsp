<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="getPlayer.do" method="GET">
		Film ID: <input type="number" min=1 name="pid" /> <input
			type="submit" value="Show Player" />
	</form>
	<form action="createPlayerForm.do" method="GET">
	 <input type="submit" value="Create Player" />
	</form>
	
	<hr>
	
	<c:forEach items="${players}" var="player">
	
		<a href="getPlayer.do?pid=${player.id}"><img alt="${player.firstName} ${player.lastName}" src="${player.photo }" width="100" height="100" border="0" ></a>
		 <br>
	</c:forEach>




</body>
</html>