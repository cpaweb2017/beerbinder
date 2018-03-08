<?php session_start() ?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Beer Binder</title>
</head>
<body>

	<?php if (isset($_SESSION['u_id'])) { ?>

	<header>
		Beer Binder
		<div class="logout-form">
			<form action="includes/logout.php" method="POST">
				<input type="submit" class="logout-submit" value="Logout" name="logoutSubmit">
			</form>
		</div>
	</header>

	<div class="page-wrap">
		<div class="navigation">
			<div class="button button-color1" onclick="loadPage('dashboard')">
				Dashboard
			</div>
			<div class="button button-color2" onclick="loadPage('beers')">
				Beers
			</div>
		</div>
		<div class="page-content" id="page-content"></div>
	</div>

	<?php } else {  ?>

	<div class="login-screen">
		<h2>Welcome to BeerBinder</h2>
		<br>
		<div class="login-form-wrapper">
			<form id="login" action="includes/login.php" class="well" method="POST">
				<div class="form-group">
					<label>Username</label>
					<input name="uid"  type="text" class="form-control">
				</div>
				<div class="form-group">
					<label>Password</label>
					<input name="pwd" type="password" class="form-control">
				</div>
				<button  name="submit" type="submit" class="btn btn-default btn-block">Login</button>
			</form>
		</div>
	</div>
	
	<?php } ?>

</body>
<script src="/js/ajax-load.js"></script>
</html>