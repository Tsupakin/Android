<?php
require 'connect.php';

//$subject  = $_POST['subject'];
//$category = $_POST['catagory'];
//$level = $_POST['level'];
echo $question = $_POST['question'];
echo $choice1 = $_POST['answer1'];
echo $choice2 = $_POST['answer2'];
echo $choice3 = $_POST['answer3'];
echo $choice4 = $_POST['answer4'];
echo $answer = $_POST['correct'];


					$sql = "INSERT INTO question (question,choice1,choice2,choice3,choice4,answer)
		                   VALUES ('$question','$choice1','$choice2','$choice3','$choice4','$answer');";




echo $question;
echo $choice1;
echo $choice2;
echo $choice3;
echo $choice4;
echo $answer;



if (mysqli_query($link, $sql)) {
echo "New record created successfully";
} else {
		echo "Error: " . $sql . "<br>" . mysqli_error($link);
}

//header( "Location:index.php" );

?>
