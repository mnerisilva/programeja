<?php

//btn-salvar-registro
//registre-se-close
include('connect.php');

                    use PHPMailer\PHPMailer\PHPMailer;
                    use PHPMailer\PHPMailer\Exception;                    

                    require 'PHPMailer/src/Exception.php';
                    require 'PHPMailer/src/PHPMailer.php';
                    require 'PHPMailer/src/SMTP.php';




        $usuario_novo = false;

        $email_envio_pelo_gmail     = 'programejah@gmail.com';
        $nome_envio_pelo_gmail      = 'GEsTri';

	
        $user_email          = $_POST["reg_email"];        
        $user_name           = $_POST["reg_name"];
        $user_sexo           = $_POST["reg_sexo"];
        $user_whatsapp       = $_POST["reg_whatsapp"];
        $user_access_type    = 2;
        $user_logradouro     = $_POST["reg_logradouro"];
        $user_numero         = $_POST["reg_numero"];
        $user_complemento    = $_POST["reg_complemento"];
        $user_cep            = $_POST["reg_cep"];
        $user_bairro         = $_POST["reg_bairro"];
        $user_cidade         = $_POST["reg_cidade"];
        $user_uf             = $_POST["reg_uf"];
        $user_cpf            = $_POST["reg_cpf"];
        $user_idade          = $_POST["reg_idade"];
        $user_login          = $_POST["reg_email"];
        $user_password       = geraSenha(8);
        $user_pix            = $_POST["reg_pix"];
        $user_photo          = "";
        $user_date           = '';

        if($user_photo == ""){
            $user_photo = 'images/users/avatar.png';
        }


	
        

		$sql_consulta = "SELECT * FROM `user` WHERE user_email='$user_email'"; 

        /*$sql_grava = "INSERT INTO `user`( `user_email`, `user_name`, `user_sexo`, 'user_access_type', `user_whatsapp`, `user_logradouro`, `user_numero`, `user_complemento`, `user_cep`, `user_bairro`, `user_cidade`, `user_uf`, `user_cpf`, `user_idade`, `user_login`, `user_password`, `user_pix`, `user_photo`, 'user_date') VALUES ('$user_email', '$user_name', '$user_sexo', '$user_access_type', '$user_whatsapp', '$user_logradouro', '$user_numero', '$user_complemento', '$user_cep', '$user_bairro', '$user_cidade', '$user_uf', '$user_cpf', '$user_idade', '$user_login', '$user_password', '$user_pix', '$user_photo', NOW())";*/

        $result = mysqli_query($conn, $sql_consulta);

        $arr_json = [];
        $arr_json['_status'] = [mysqli_num_rows($result)];
        
		if ($result) {
			//echo json_encode(array("statusCode"=>200));
            if(mysqli_num_rows($result) == 1){
                echo json_encode($arr_json);
                mysqli_close($conn);
                return;
            } else {
                echo json_encode($arr_json);
                //mysqli_close($conn);
                //$user_email          = 'marceloneri@gmail.com';        
                //$user_name           = 'Marcelo Neri da Siva';
                $usuario_novo = true;
            }
		} 
		else {
			echo "Error: " . $sql . "<br>" . mysqli_error($conn);
		}

















        if($usuario_novo){
                    //$sql_grava = "INSERT INTO `user`( `user_name`, `user_email`, `user_whatsapp`, `user_access_type`, `user_password`) VALUES ('$user_name', '$user_email', '$user_whatsapp', '$user_access_type', '$user_password')";
                    $sql_grava = "INSERT INTO `user`( `user_email`, `user_name`, `user_sexo`, `user_access_type`, `user_whatsapp`, `user_logradouro`, `user_numero`, `user_complemento`, `user_cep`, `user_bairro`, `user_cidade`, `user_uf`, `user_cpf`, `user_idade`, `user_login`, `user_password`, `user_pix`, `user_photo`, `user_date`) VALUES ('$user_email', '$user_name', '$user_sexo', '$user_access_type', '$user_whatsapp', '$user_logradouro', '$user_numero', '$user_complemento', '$user_cep', '$user_bairro', '$user_cidade', '$user_uf', '$user_cpf', '$user_idade', '$user_login', '$user_password', '$user_pix', '$user_photo', '$user_date')";
                    if (mysqli_query($conn, $sql_grava)) {
                        //echo json_encode(array("statusCode"=>200));
            
                                // INICIO ENVIO DE EMAIL COM PHPMAILER

                                $body = '<!DOCTYPE html>
                                <html lang="PT-BR">
                                <head>
                                </head>
                                <body>
                                </body>
                                </html>';

                                //$senha_gerada = geraSenha(8);


                                $mail = new PHPMailer(true);

                                try {
                                    //$mail->SMTPDebug = 2;                                         //Enable verbose debug output
                                    $mail->isSMTP();                                                //Send using SMTP
                                    $mail->Host       = 'smtp.gmail.com';                           //Set the SMTP server to send through
                                    $mail->SMTPAuth   = true;                                       //Enable SMTP authentication
                                    $mail->Username   = 'programejah@gmail.com';                    //SMTP username
                                    $mail->Password   = 'vjfwapifwdtuakoq';                         //SMTP password
                                    $mail->SMTPSecure = PHPMailer::ENCRYPTION_SMTPS;                //Enable implicit TLS encryption
                                    $mail->Port       = 465;  



                                    // Destinatários de email
                                    $mail->setFrom($email_envio_pelo_gmail, $nome_envio_pelo_gmail);  // campo DE:
                                    $mail->addAddress($user_email, $user_name);         // Adiciona destinatários [CAMPO PARA:]

                                    // Conteúdo - assunto e copor do email.
                                    $mail->isHTML(true);                                // Define que o formato vai ser HTML
                                    $mail->Subject = 'Dados para acesso ao GEsTri';
                                    $mail->Body    = 'Dados para acesso ao GEsTri<br><br>Nome: '.$user_name.'<br>Login: marceloneri@gmail.com<br>Senha: '.$user_password;
                                    $mail->AltBody = 'TEstamos enviando seus dados para acesso ao Sistema GEsTri';

                                    $mail->send();
                                    //echo 'Mensagem enviada com sucesso!!!';
                                } catch (Exception $e) {
                                    //echo "A mensagem não pôde ser enviadad. Erro Mailer: {$mail->ErrorInfo}";
                                }
                                // FIM ENVIO DE EMAIL COM PHPMAILER


                    } 
                    else {
                        echo "Error: " . $sql_grava . "<br>" . mysqli_error($conn);
                    }
        }





        $usuario_novo = false;













 



function geraSenha($limite){
    $str = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
    $maximo = strlen($str) - 1;
    //return 1000;
    $ret = "";
    for ($i = 0; $i < $limite; $i++){
        $ret .= $str[mt_rand(0, $maximo)];
    }

    return $ret;
}




?>




















