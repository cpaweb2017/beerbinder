
<?php 

include_once('includes/db-conn.php');
include_once('add-form.php'); 
?>

<?php include ('head.php'); ?>

<body>
	<div class="title-container"> 
		<h1> ADD PHPHPHPHPHP</h1>
		<p>The standard Lorem Ipsum passage, used since the 1500s
		"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>
	</div>
	<div class="beer-scroll-cont">
		<div class="form-container"> 

 			<?php if (isset($error)) { ?> 
 				<small style="color:#aa0000;"> <?php echo $error; ?> </small>
 				</br></br>
 			<?php } ?>

 			<form action="index.php" method="post" autocomplete="off" enctype="multipart/form-data" id="add-form">
 			<input type="text" name="title" placeholder="Name of Beer" /> </br></br>
 			<input type="text" name="type" placeholder="Type of Beer" /> </br></br>
 			<input type="text" name="country" placeholder="Country" /> </br></br>
 			<textarea rows="15" cols="50" placeholder="Short Description..." Name="content"></textarea> </br></br>
 			 <ul class="ratings-list-container"> 
 			 	<h2> Rate this Beer: </h2>
 				<li><label for="rating_1"><i class="fas fa-star"></i></label><input type="radio" name="title_rating" placeholder="Beer Rating" id="rating_1" value="1"/></li>
 				<li><label for="rating_2"><i class="fas fa-star"></i></label><input type="radio" name="title_rating" placeholder="Beer Rating" id="rating_2" value="2"/></li>
 				<li><label for="rating_3"><i class="fas fa-star"></i></label><input type="radio" name="title_rating" placeholder="Beer Rating" id="rating_3" value="3"/></li>
 				<li><label for="rating_4"><i class="fas fa-star"></i></label><input type="radio" name="title_rating" placeholder="Beer Rating" id="rating_4" value="4"/></li>
 				<li><label for="rating_5"><i class="fas fa-star"></i></label><input type="radio" name="title_rating" placeholder="Beer Rating" id="rating_5" value="5"/></li>
			</ul>
			</br></br>

 			<input type="submit" value="Submit" class="add-submit"/>

		</div> 

	</div>
</body>

<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="/js/ajax-load.js"></script>