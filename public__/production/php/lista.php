<?php

include('connect.php');



		
		$sql = "SELECT * FROM conteudo ORDER BY conteudo_descricao";
		$result = mysqli_query($conn, $sql);
		


		$arr_json = [];
		$contador = 0;

		if($result){
			while($row = mysqli_fetch_array($result)){
				$arr_json[$contador] = ['id' => $row["id_conteudo"], 'id_conteudo_indice' => $row["id_conteudo_indice"],'id_conteudotipo' => $row["id_conteudotipo"],'descricao' => $row["conteudo_descricao"], 'codigo' => $row["conteudo_codigoyoutube"]];
				$contador++;			
			}
	
			
			echo json_encode($arr_json);               
		}		

		mysqli_close($conn);
	



?>




