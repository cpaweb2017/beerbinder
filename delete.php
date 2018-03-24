
<?php  

include_once('includes/db-conn.php'); 
include_once('includes/article.php'); 
$article = new Article; 
$articles = $article->fetch_all(); 
?>

<?php 
include_once ('head.php');
?> 

<body>
	<div class="title-container"> 
		<h1> DELETE PHPHPHPHPHP </h1>
		<p>The standard Lorem Ipsum passage, used since the 1500s
		"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>
	</div>
	<div class="beer-scroll-cont">

		<form action="delete.php" method="get">
			<div class="delete-form-container">
				<?php foreach ($articles as $article) { ?> 
					<div class="delete-form-block"> 
						<option value="
							<?php echo $article['article_id'];?>">
							<h3><?php echo $article['article_title'];?> </h3> 
						</option>
					</div>
				<?php } ?> 
		</div></br></br>
		<div class="delete-submit-container">
			<input type="submit" value="Delete Beers" class="delete-submit" />
		</div>
		</form>
		</div>
	</div>
</body>
