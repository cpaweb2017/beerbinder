
<?php 

include_once('includes/db-conn.php');

if (isset($_POST['title'], $_POST['content'])) {

		$title = $_POST['title']; 
		$country = $_POST['country'];
		$type = $_POST['type']; 
		$title_content = $_POST['title_content']; 
		$content = nl2br($_POST['content']); 
 
 
		if (empty($title) or empty($content)) {
			$error = 'All fields required';  

		} else {
			
			$query = $pdo->prepare('INSERT INTO articles (article_title, article_type, article_country, article_title_content, article_content,  article_timestamp) VALUES (?,?,?,?,?,?)');  

			$query->bindValue(1, $title);
			$query->bindValue(2, $type); 
			$query->bindValue(3, $country); 
			$query->bindValue(4, $title_content); 
			$query->bindValue(5, $content); 
			$query->bindValue(6, time());

			$query->execute(); 
			$error = "No error";
			//var_dump( $query->errorInfo() );

			//header('Location:index.php');  
		}
	}
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

 			<form action="add.php" method="post" autocomplete="off" enctype="multipart/form-data" id="add-form">
 			<input type="text" name="title" placeholder="Name of Beer" /> </br></br>
 			<input type="text" name="type" placeholder="Type of Beer" /> </br></br>
 			<input type="text" name="country" placeholder="Country" /> </br></br>
 			<input type="text" name="title_content" placeholder="Desription Title"/> </br></br>
 			<textarea rows="15" cols="50" placeholder="Content" Name="content"></textarea> </br></br>

 			<input type="submit" value="Submit" />

		</div> 

	</div>
</body>