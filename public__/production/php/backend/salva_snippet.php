<?php

include('connect.php');


if(count($_POST) > 0){


        $id_conteudotipo        = $_POST['id_conteudotipo'];
        $conteudo_titulo        = addslashes($_POST['snippet_title']);
        $id_categoria           = $_POST['snippet_idcategoria'];
        $id_codigoyt           = '';
        $id_conteudotipo        =  $_POST['id_conteudotipo'];

		$sql = "INSERT INTO `conteudo_indice`( `id_conteudotipo`, `conteudo_titulo`, `id_categoria`) VALUES ('$id_conteudotipo', '$conteudo_titulo', '$id_categoria')";
		if (mysqli_query($conn, $sql)) {
			
		} 
		else {
			
		}
 
        $id_doIndice = mysqli_insert_id($conn);


		$sql_2 = "INSERT INTO `conteudo`( `id_conteudo_indice`, `conteudo_descricao`, `conteudo_codigoyoutube`, `id_conteudotipo`, `id_categoria`) VALUES ('$id_doIndice', '$conteudo_titulo', '$id_codigoyt', '$id_conteudotipo', '$id_categoria')";
		if (mysqli_query($conn, $sql_2)) {
			
		} 
		else {
			
		}  

        $id_conteudo = mysqli_insert_id($conn);
		
		





























































	
        //$id_conteudo		= intval($_POST['id_conteudo']);
        $trilha_id			= intval($_POST['trilha_id']);
        $user_id			= intval($_POST['user_id']);
        $post_title			= addslashes($_POST['snippet_title']);
        $post				= addslashes($_POST['post']);



		$sql = "INSERT INTO `posts`(`id_conteudo`, `trilha_id`, `user_id`, `post_title`, `post`, `post_datepublish`, `post_dateupdate`) VALUES ('$id_conteudo', '$trilha_id', '$user_id', '$post_title', '$post', NOW(), NOW())";
		
		if (mysqli_query($conn, $sql)) {
		} 
		else {
		}
 
        
       

		$arr_json = [];
		$contador = 0;

		$ui = mysqli_insert_id($conn);
		$arr_json[0] = ["ultimo_id_inserido" => $ui];
		echo json_encode($arr_json);

		mysqli_close($conn);
	
}
































































if(count($_POST) > 0){
	


	
}


?>




