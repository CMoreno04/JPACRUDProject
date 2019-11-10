<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome!</title>
<style type="text/css">
.center{
margin: 0 auto; 
padding-top: 200px;
 display: flex;
  align-items: center;
  justify-content: center


}

.b{
background-color: #41C5EE ;

}



</style>
</head>
	<jsp:include page="player/navbar.jsp"><jsp:param value="" name=""/></jsp:include>
	<br>
<body class="b">

<iframe class="center" width="900" height="800" src="https://www.youtube.com/embed/U0Mo8lK4Zic?start=13" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</body>
</html>