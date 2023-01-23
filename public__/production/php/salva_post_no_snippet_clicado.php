<?php

include('connect.php');


//if(count($_POST) > 0){


        $id_conteudo		= intval($_POST['id_conteudo']);
        $trilha_id			= intval($_POST['trilha_id']);
        $user_id			= intval($_POST['user_id']);
        $post_title			= addslashes($_POST['post_title']);
        $post				= addslashes($_POST['post']);

		/*echo "[".$id_conteudo."]<br>";
        echo "[".$trilha_id."]<br>";
        echo "[".$user_id."]<br>";
        echo "[".$post_title."]<br>";
        echo "[".$post."<br>]";*/
		//die();


		$sql = "INSERT INTO `posts`(`id_conteudo`, `trilha_id`, `user_id`, `post_title`, `post`, `post_datepublish`, `post_dateupdate`) VALUES ('$id_conteudo', '$trilha_id', '$user_id', '$post_title', '$post', NOW(), NOW())";
		
		if (mysqli_query($conn, $sql)) {
		} 
		else {
		}


		
		$sql = "SELECT * FROM posts WHERE user_id = $user_id AND id_conteudo = $id_conteudo ORDER BY post_id";
		$result = mysqli_query($conn, $sql);
		


		$arr_json = [];
		$contador = 0;

		if($result){
			while($row = mysqli_fetch_array($result)){
				$arr_json[$contador] = ['user_id' => $row["user_id"], 'id_conteudo' => $row["id_conteudo"],'post_id' => $row["post_id"],'post_title' => $row["post_title"],'post' => $row["post"],'post_dateupdate' => $row["post_dateupdate"]];
				$contador++;			
			}
	
			
			echo json_encode($arr_json);               
		}        
 


		mysqli_close($conn);
	
//}

?>




