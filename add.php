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
	<div class="title-container"> 
		<h1> ADD PHPHPHPHPHP</h1>
		<p>The standard Lorem Ipsum passage, used since the 1500s
		"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>
	</div>
	<div class="beer-scroll-cont">
		<div class="form-container"> 

			<h4> Add Article </h4>

 			<?php if (isset($error)) { ?> 
 				<small style="color:#aa0000;"> <?php echo $error; ?> </small>
 				</br></br>
 			<?php } ?>

 			<form method="post" autocomplete="off" enctype="multipart/form-data">
 			<input type="text" name="title" placeholder="Name of Beer" /> </br></br>
 			<textarea rows="15" cols="50" placeholder="Content" Name="content"></textarea> </br></br>
 			<textarea rows="5" cols="50" placeholder="Country" Name="country"></textarea> </br></br>

 			<input type="submit" value="Submit" />

		</div> 

	</div>
</body>
