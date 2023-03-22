<?php
	$StudentId = $_POST['StudentId'];
	$Password = $_POST['Password'];
	// Database connection
	$conn = new mysqli('localhost','root','','StudentInfo');
	if($conn->connect_error){
		echo "$conn->connect_error";
		die("Connection Failed : ". $conn->connect_error);
	} else {
		
		$q = "select studentId,password from registration";
		
		$r = mysqli_query($conn,$q);
		$flag = 0;
		while($row = mysqli_fetch_assoc($r))
		{
			if($row["studentId"] == $StudentId && $row["password"] == $Password)
			{
				echo "login successful!!";
				flag = 1;
				require_once("google.com");
			}
			
		}
		if(flag == 0)
		{
			echo "incorrect credentials. try again";
		}
		
		$stmt->close();
		$conn->close();
	}
?>