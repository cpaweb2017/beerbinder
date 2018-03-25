<?php session_start();

ob_start();


include_once('includes/db-conn.php'); 
include_once('includes/categories.php');
include_once('includes/article.php'); 

$article = new Article; 
$articles = $article->fetch_all(); 

?>


<?php 

include_once('includes/db-conn.php');
include_once('add-form.php'); 

?>

<?php include_once ('head.php'); ?>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<body>


	<?php include_once ('navbar-standard.php'); ?>

	<script src="/js/ajax-load.js"></script>

	<div id="page-content" class="text-right">
	<?php if (isset($_POST['addFormSubmitted'])) { ?> 
		<script>loadPage('add');</script>
	<?php } else { ?>
		<div class="title-container"> 
			<h1> Welcome back... </h1>
			<div class="title-sub-title">
				View the latest beers you have added
			</div>
			<p>The standard Lorem Ipsum passage, used since the 1500s
			"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>
		</div>
		<div class="beer-scroll-cont">
			<?php foreach ($articles as $article) { ?>
			<div class="beer-block">
				<div class="beer-title">
					<!-- <a href="article.php?id=<?php echo $article['article_id'];?>"> -->
						<h2><?php echo $article['article_title']; ?></h2>
					</a>
				</div>
				<div class="beer-info-container">
					<div class="beer-info-class beer-type">
						<?php echo $article['article_type']; ?>
					</div>
					<div class="beer-info-class beer-country">
						<?php echo $article['article_country']; ?>
					</div>
					<div class="beer-info-class beer-date">
						<?php echo date ('F Y', $article['article_timestamp']); ?>
					</div>
				</div>
				<div class="beer-description-container">
					<div class="beer-desc-class beer-image">
						IMAGE TO GO HERE
					</div>
					<div class="beer-desc-class beer-text">
						<h4> <?php echo $article['article_rating']; ?> </h4>
						<p> <?php echo $article['article_content']; ?> </p>
					</div>
				</div>
			</div>
			<?php } ?>
		</div> 
	<?php } ?>
	</div>

<script> 

	$('li').on('click', function(){
		$('li').removeClass('active'); 
		$('li').removeClass('secondary-active'); 
		$(this).addClass('active'); 
		$(this).prevAll().addClass('secondary-active'); 
	})

</script>

</body>
</html>