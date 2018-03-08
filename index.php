<?php session_start() ?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Beer Binder</title>
</head>
<body>

	<?php if (isset($_SESSION['u_id'])) { ?>

	<h1>You logged in, <?php echo $_SESSION['u_id'] ?></h1>
	<br>
	<div class="logout-form">
		<form action="includes/logout.php" method="POST">
			<input type="submit" class="logout-submit" value="Logout" name="logoutSubmit">
		</form>
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
</html>