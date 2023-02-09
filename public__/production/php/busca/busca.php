<?php


// Conexão
require_once '../backend/connect.php';


if (!isset($_GET['string_a_buscar'])) {
	header("Location: index.php");
	exit;
}

$string_a_buscar = "%".trim($_GET['string_a_buscar'])."%";





		
		$sql = "SELECT * FROM posts WHERE post LIKE '$string_a_buscar'";
		$result = mysqli_query($conn, $sql);
		


		$arr_json = [];
		$contador = 0;

		if($result){
			while($row = mysqli_fetch_array($result)){
				$arr_json[$contador] = ['post_id' => $row["post_id"], 'id_conteudo' => $row["id_conteudo"], 'trilha_id' => $row["trilha_id"], 'user_id' => $row["user_id"], 'post_title' => $row["post_title"], 'post' => $row["post"]];
				$contador++;			
			}// post_id, id_conteudo, trilha_id, user_id, post_title, post
	
			
			echo json_encode($arr_json);               
		}		

		mysqli_close($conn);
	



?>