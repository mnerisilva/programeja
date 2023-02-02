<?php

include('connect.php');

		$id_userlogado = 29;
		$id_conteudotipo = 4;
	
		//$sql = "SELECT p.post_id, p.id_conteudo, p.trilha_id, p.user_id, p.post_title, p.post, p.post_dateupdate, t.trilha_id, t.trilha_name, t.id_categoria, c.id_categoria, c.abrev_categoria, c.icon_categoria FROM posts p INNER JOIN trilha t ON p.trilha_id = t.trilha_id INNER JOIN categoria c ON c.id_categoria = t.id_categoria ORDER BY c.abrev_categoria, p.post_dateupdate, p.post_title";
		//$sql = "SELECT p.post_id, p.id_conteudo, p.trilha_id, p.user_id, p.post_title, p.post, p.post_dateupdate FROM posts p WHERE p.user_id = '$id_userlogado' ORDER BY p.post_dateupdate, p.post_title";
		//$sql = "SELECT p.post_id, p.id_conteudo, p.trilha_id, p.user_id, p.post_title, p.post, p.post_dateupdate, c.id_categoria, c.abrev_categoria, c.icon_categoria, y.id_conteudo, y.id_categoria FROM posts p INNER JOIN conteudo y ON y.id_conteudo = p.id_conteudo INNER JOIN categoria c ON c.id_categoria = y.id_categoria ORDER BY p.post_dateupdate DESC, p.post_title DESC";
		$sql = "SELECT c.id_categoria, c.abrev_categoria, c.icon_categoria, ct.id_conteudo, ct.conteudo_descricao, ct.id_conteudotipo, ct.id_categoria FROM conteudo ct INNER JOIN categoria c ON ct.id_categoria = c.id_categoria WHERE ct.id_conteudotipo = '$id_conteudotipo' ORDER BY conteudo_descricao";
		$result = mysqli_query($conn, $sql);
		


		$arr_json = [];
		$contador = 0;

		if($result){
			while($row = mysqli_fetch_array($result)){
				//$arr_json[$contador] = ['id_categoria' => $row["id_categoria"], 'abrev_categoria' => $row["abrev_categoria"],'icon_categoria' => $row["icon_categoria"], 'post_id' => $row["post_id"], 'post_title' => $row["post_title"], 'post' => $row["post"], 'post_dateupdate' => $row["post_dateupdate"]];
				$arr_json[$contador] = ['post_title' => $row["conteudo_descricao"], 'id_categoria' => $row["id_categoria"], 'abrev_categoria' => $row["abrev_categoria"], 'icon_categoria' => $row["icon_categoria"], 'id_conteudo' => $row["id_conteudo"], 'id_conteudotipo' => $id_conteudotipo, 'id_userlogado' => $id_userlogado, 'indice' => $contador];
				$contador++;			
			}
	
			
			echo json_encode($arr_json);               
		}		

		mysqli_close($conn);
	



?>




