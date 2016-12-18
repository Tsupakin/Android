<?php
	$host = "localhost";
	$username = "dapperin_chaochao";
	$password = "8xs34VpN";
	$dbname = "dapperin_chaochao";

	$link = mysqli_connect($host,$username,$password,$dbname) or die("Connect Error นะ");

	if (mysqli_connect_errno())
	  {
	  echo "Failed to connect to MySQL: " . mysqli_connect_error();
	  }
		mysqli_query($link,"SET character_set_results=utf8");
		mysqli_query($link,"SET character_set_client=utf8");
		mysqli_query($link,"SET character_set_connection=utf8");
?>
