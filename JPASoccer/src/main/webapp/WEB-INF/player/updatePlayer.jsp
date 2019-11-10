<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Player</title>
</head>
<jsp:include page="navbar.jsp"><jsp:param value="" name=""/></jsp:include>
	<br>
<body style="background-color: #41C5EE">

	<br>
	<div class="container-fluid" style="padding-top: 2in;">
		<div class="row row-no-gutters">
			<div class="col-xs-6 col-md-4"></div>
			<div class="col-xs-6 col-md-4 text-center">



				<form:form action="updatePlayer.do" method="POST" modelAttribute="player">
					<div class="form-row">
						<div class="form-group col-md-6">
							<form:label path="firstName">First Name</form:label> 
							<form:input type="text"
								class="form-control" required="required" path="firstName" placeholder="${player.firstName }"/>
						</div>
						<div class="form-group col-md-6">
							<form:label path="lastName">Last Name</form:label> <form:input
								type="text" required="required" class="form-control" path="lastName"
								placeholder="${player.lastName }"/>
						</div>
					</div>
					<div class="form-group col-md-6">
						<form:label path="age">Age</form:label> <form:input type="number"
							class="form-control" min="1" required="required" path="age" placeholder="P${player.age}"/>
					</div>
					<div class="form-group col-md-6">
						<form:label path="nationality">Nationality</form:label> <form:input type="text"
							class="form-control" required="required" path="nationality"
							placeholder="${player.nationality}"/>
					</div>
					<div class="form-row">
						<div class="form-group col-md-6">
							<form:label path="overall">Overall Ability </form:label> <form:input type="number"
								class="form-control" required="required" min="1" path="overall" placeholder="${player.overall }"/>
						</div>
						<div class="form-group col-md-6">
							<form:label path="club">Club Name</form:label> 
								<form:input type="text"
								class="form-control" required="required" path="club" placeholder="${player.club }" />
						</div>
						<div class="form-group col-md-6">
							<form:label path="marketValue">Market Value:</form:label> <form:input type="number"
								class="form-control" required="required" min="1" path="marketValue" placeholder="${player.marketValue }"/>
								<br>
								<br>
								<input type='hidden' name='pid' id="pid" value='${player.id}' />
								<button type="submit" class="btn btn-success">Submit</button>
						</div>
							
			
					</div>
				
				</form:form>
			</div>
		</div>
	</div>

</body>
</html>