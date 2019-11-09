<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create Player</title>
</head>
<body>
<form:form action="createPlayer.do" method="POST" modelAttribute="player">
		<form:label path="firstName">First Name:</form:label>
		<form:input class="input" required="required" path="firstName" />
		<form:errors path="firstName" />
		<br />
		<form:label path="lastName">Last Name:</form:label>
		<form:input class="input" required="required" path="lastName" />
		<form:errors path="lastName" />
		<br />
		<form:label path="age">Age:</form:label>
		<form:input class="number" min="0" max="120" required="required" path="age" />
		<form:errors path="age" />
		<br />
		<form:label path="nationality">Nationality:</form:label>
		<form:input class="input" required="required" path="nationality" />
		<form:errors path="nationality" />
		<br />
		<form:label path="overall">Overall:</form:label>
		<form:input class="number" min="0" max="99" required="required" path="overall" />
		<form:errors path="overall" />
		<br />
		<form:label path="club">Club Name:</form:label>
		<form:input class="input" required="required" path="club" />
		<form:errors path="club" />
		<br />
		<form:label path="marketValue">Player Value:</form:label>
		<form:input class="number" min="0" required="required" path="marketValue" />
		<form:errors path="marketValue" />
		<br />
		<input class="submit" type="submit" value="Submit" />

</form:form>
</body>
</html>