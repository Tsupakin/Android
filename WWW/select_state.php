<?php
	require_once("dbconnect.php");

	// if(!empty($_POST['state_number']))
	// {
	// 	$State = mysqli_escape_string($link,$_POST['state_number']);
	// }
	$sql = "SELECT * FROM question WHERE `question_id` NOT IN (5, 3) ORDER BY RAND() LIMIT 1";
	$result = mysqli_query($link, $sql, MYSQLI_USE_RESULT);
	$row = mysqli_fetch_assoc($result);


	echo json_encode($row);
?>
