<?php
	require("dbconnect.php");

	echo $username = $_POST['username'];
	echo $password = $_POST['password'];
	echo $email = $_POST['email'];
	echo $display_name = $_POST['display_name'];

		$sql = "INSERT INTO account (username,password,email,display_name)
		VALUES ('$username','$password','$email','$display_name')";


		if (mysqli_query($link, $sql)) {
    echo "New record created successfully";
		} else {
		    echo "Error: " . $sql . "<br>" . mysqli_error($link);
		}

?>
