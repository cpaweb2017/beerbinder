<?php

if (isset($_POST['title'], $_POST['content'])) {

		$title = $_POST['title']; 
		$country = $_POST['country'];
		$type = $_POST['type']; 
		$title_rating = $_POST['title_rating']; 
		$content = nl2br($_POST['content']); 
 
 
		if (empty($title) or empty($content)) {
			$error = 'All fields required';  

		} else {
			
			$query = $pdo->prepare('INSERT INTO articles (article_title, article_type, article_country, article_rating, article_content, article_timestamp) VALUES (?,?,?,?,?,?)');  

			$query->bindValue(1, $title);
			$query->bindValue(2, $type); 
			$query->bindValue(3, $country); 
			$query->bindValue(4, $title_rating);
			$query->bindValue(5, $content); 
			$query->bindValue(6, time());

			$query->execute(); 
			$error = "No error";
			//var_dump( $query->errorInfo() );

			//header('Location:index.php');  
		}
	}

	?>