<?php session_start();

ob_start();


include_once('includes/db-conn.php'); 
include_once('includes/categories.php');
include_once('includes/article.php'); 

$article = new Article; 
$articles = $article->fetch_all();  

?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Beer Binder</title>
	<link rel="stylesheet" href="css/styles.css">

</head>
<body>


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
					<a href="#">Add </a>
				</div>
				<div class="button button-color2" onclick="loadPage('edit')">
					<a href="#">Edit </a>
				</div>
				<div class="button button-color2" onclick="loadPage('delete')">
					<a href="#">Delete </a>
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


			<div id="page-content" class="text-right">
					<div class="title-container"> 
						<h1> Welcome back <?php echo $_SESSION['u_first']; ?> !!!</h1>
						<p>The standard Lorem Ipsum passage, used since the 1500s
						"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>
					</div>
					<div class="beer-scroll-cont">
						<?php foreach ($articles as $article) { ?>
						<div class="beer-block">
							<div class="beer-title">
									<a href="article.php?id=<?php echo $article['article_id'];?>">
							      <?php echo $article['article_title']; ?>
							     </a>
							</div>
							<div class="beer-info-container">
								<div class="beer-info-class beer-type">
									Lager
								</div>
								<div class="beer-info-class beer-country">
									Denmark
								</div>
								<div class="beer-info-class beer-date">
									posted <?php echo date ('l jS', $article['article_timestamp']); ?>
								</div>
							</div>
							<div class="beer-description-container">
								<div class="beer-desc-class beer-image">
									IMAGE TO GO HERE
								</div>
								<div class="beer-desc-class beer-text">
									<h3> Description Headline </h3>
									<h4> Rating </h4>
									<p> Dummy text for description </p>
								</div>
							</div>
						</div>
						<?php } ?>
					</div> 
		</div>
	</div>
</div>


</body>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="/js/ajax-load.js"></script>
</html>