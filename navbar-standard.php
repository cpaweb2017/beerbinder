<div class="home-cont">
		<div class="nav-left-main">

			<div class="nav-logo">
				<a href="index.php">
				<div class="logo"> 
					LOGO HERE </a>
				</div>
			</div>
			<div class="nav-links">
				<div class="button button-color1" onclick="loadPage('add')">
					<a href="#">+	Add Beer</a>
				</div>
				<div class="button button-color2" onclick="loadPage('edit')">
					<a href="#">+	Edit Beer</a>
				</div>
				<div class="button button-color2" onclick="loadPage('delete')">
					<a href="#">-	Delete Beer </a>
				</div>
			</div>
			<div class="nav-btm">
				<div class="logout-form">
					<form action="includes/logout.php" method="POST">
						<input type="submit" class="logout-submit" value="Logout" name="logoutSubmit">
					</form>
				</div>
			</div>
		</div>