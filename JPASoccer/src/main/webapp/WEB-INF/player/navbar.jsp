<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Navbar</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

</head>
<body>
	<div class="w3-bar w3-light-grey w3-border w3-top" >
    
    <form action="/" method="GET">
		<button type="submit" class="w3-bar-item w3-button w3-mobile">Home</button>
	</form>
    <form action="listPlayers.do" method="GET">
		<button type="submit" class="w3-bar-item w3-button w3-mobile">List All Players</button>
	</form>
    
    <form action="createPlayerForm.do" method="GET">
		<button type="submit" class="w3-bar-item w3-button w3-mobile">Create Player</button>
	</form>
   
    <form  action="getPlayer.do" method=GET>
    <input type="number" min="1" class="w3-bar-item w3-input w3-white w3-mobile pull-right" name="pid" placeholder="Player ID">
    <button type="submit" class="w3-bar-item w3-button w3-blue w3-mobile pull-right">Search</button>
    </form>
  </div>

</body>
</html>