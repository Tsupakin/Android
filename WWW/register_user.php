<?php
	require("dbconnect.php");
	$registerpass = true;
	
	if(!empty($_POST['email']))
	{
		$email = mysqli_escape_string($link,$_POST['email']);
	}else{
		$registerpass = false;
	}

	if(!empty($_POST['username']))
	{
		$username = mysqli_escape_string($link,$_POST['username']);
	}else{
		$registerpass = false;
	}

	if(!empty($_POST['password']))
	{
		$password = mysqli_escape_string($link,$_POST['password']);
	}else{
		$registerpass = false;
	}

	if(!empty($_POST['display_name']))
	{
		$display_name = mysqli_escape_string($link,$_POST['display_name']);
	}else{
		$registerpass = false;
	}
// echo "username : ".$username."<br>";
// echo "password : ".$password."<br>";
// echo "email : ".$email."<br>";
// echo "display_name : ".$display_name."<br>";

	if(strlen($email)<=0 || 
	strlen($password)<=0 || 
	strlen($display_name)<=0 || 
	strlen($username)<=0 )
	{	
		$registerpass = false;
	}

	if ($registerpass)
	{
		$sql = "INSERT INTO `account` 
							(`user_id`, `username`, `password`, `email`, `display_name`, `status`) 
				VALUES (NULL, '$username', '$password', '$email', '$display_name', 'Member');";

		$query = mysqli_query($link,$sql) or die("Query Error");
		//include("search_userid.php");
		mysql_close();
	}
?>