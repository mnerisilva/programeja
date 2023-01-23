<?php

include('connect.php');

$post_id = $_POST['post_id'];

		
		$sql = "SELECT * FROM posts WHERE post_id = '$post_id' LIMIT 1";
		$result = mysqli_query($conn, $sql);
		


		$arr_json = [];
		$contador = 0;

		if($result){
			while($row = mysqli_fetch_array($result)){
				$arr_json[$contador] = ['post_id' => $row["post_id"], 'post_title' => $row["post_title"], 'post' => $row["post"], 'post_dateupdate' => $row["post_dateupdate"]];
				$contador++;			
			}
	
			
			echo json_encode($arr_json);               
		}		

		mysqli_close($conn);
	



?>




