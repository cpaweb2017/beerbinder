<?php
session_start();
if (isset($_POST['submit'])) {
	include_once 'db-conn.php';
	$uid = mysqli_real_escape_string($conn, $_POST['uid']);
	$pwd = mysqli_real_escape_string($conn, $_POST['pwd']);
	//Error handlers
	//Check if inputs are empty
	if (empty($uid) || empty($pwd)) {
		header("Location: ../index.php?login=empty");
		exit();
	} else {
		//Check if username exists
		$sql = "SELECT * FROM users WHERE u_username=?";
		//Create a prepared statement
		$stmt = mysqli_stmt_init($conn);
		//Check if prepared statement fails
		if(!mysqli_stmt_prepare($stmt, $sql)) {
		    header("Location: ../index.php?login=error");
		    exit();
		} else {
			//Bind parameters to the placeholder
			mysqli_stmt_bind_param($stmt, "s", $uid);
			//Run query in database
			mysqli_stmt_execute($stmt);
			//Get results from query
        	$result = mysqli_stmt_get_result($stmt);
        	if ($row = mysqli_fetch_assoc($result)) {
				//De-hashing the password
				$hashedPwdCheck = password_verify($pwd, $row['u_password']);
				if ($hashedPwdCheck == false) {
					header("Location: ../index.php?login=error");
					exit();
				} elseif ($hashedPwdCheck == true) {
					//Set SESSION variables and log user in
					$_SESSION['u_first'] = $row['u_first_name'];
					$_SESSION['u_last'] = $row['u_last_name'];
					$_SESSION['u_email'] = $row['u_email'];
					$_SESSION['u_id'] = $row['u_username'];
					header("Location: ../");
					exit();
				}
        	} else {
        		header("Location: ../index.php?login=error");
				exit();
        	}
		}
	}
	//Close statement
	mysqli_stmt_close($stmt);
} else {
	header("Location: ../index.php?login=error");
	exit();
}