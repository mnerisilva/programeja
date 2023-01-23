<?php

//btn-salvar-registro
//registre-se-close
include('connect.php');

                    use PHPMailer\PHPMailer\PHPMailer;
                    use PHPMailer\PHPMailer\Exception;                    

                    require 'PHPMailer/src/Exception.php';
                    require 'PHPMailer/src/PHPMailer.php';
                    require 'PHPMailer/src/SMTP.php';




        $usuario_ja_existe = false;

        $email_envio_pelo_gmail     = 'programejah@gmail.com';
        $nome_envio_pelo_gmail      = 'GEsTri';

	
        $emailesqueceuasenha          = trim($_POST["_inputemailesqueceuasenha"]); 

        $user_email = '';
        $user_name = '';
        $user_password = '';

		$sql_consulta = "SELECT user_email, user_name, user_password FROM `user` WHERE user_email='$emailesqueceuasenha' LIMIT 1";
        

        $result = mysqli_query($conn, $sql_consulta);

        if(mysqli_num_rows($result) > 0) {
            //echo 'encontrou o registro e a lista dos campos';
            $row = mysqli_fetch_array($result);
            $user_email     = $row['user_email'];
            $user_name      = $row['user_name'];
            $user_password  = $row['user_password'];
        } else {
            echo 'NÃO ENCONTROU o registro e a lista dos campos';            
        }

        $arr_json = [];
        $arr_json['_status'] = [mysqli_num_rows($result)];
        
		if ($result) {
			//echo json_encode(array("statusCode"=>200));
            if(mysqli_num_rows($result) == 1){
                echo json_encode($arr_json);
                mysqli_close($conn);
                $usuario_ja_existe = true;
            } else {
                echo json_encode($arr_json);
                //mysqli_close($conn);
                //$user_email          = 'marceloneri@gmail.com';        
                //$user_name           = 'Marcelo Neri da Siva';
                $usuario_ja_existe = false;
            }
		} 
		else {
			echo "Error: " . $sql . "<br>" . mysqli_error($conn);
		}

















        if($usuario_ja_existe){
            
                                // INICIO ENVIO DE EMAIL COM PHPMAILER

                                $body = '<!DOCTYPE html>
                                <html lang="PT-BR">
                                <head>
                                </head>
                                <body>
                                </body>
                                </html>';



                                $mail = new PHPMailer(true);

                                try {
                                    //$mail->SMTPDebug = 2;                                         //Enable verbose debug output
                                    $mail->isSMTP();                                                //Send using SMTP
                                    $mail->Host       = 'smtp.gmail.com';                           //Set the SMTP server to send through
                                    $mail->SMTPAuth   = true;
                                    $mail->SMTPSecure = 'ssl';                                      // secure transfer enabled REQUIRED for Gmail                                      //Enable SMTP authentication
                                    $mail->Username   = 'programejah@gmail.com';                    //SMTP username
                                    $mail->Password   = 'vjfwapifwdtuakoq';                         //SMTP password
                                    $mail->SMTPSecure = PHPMailer::ENCRYPTION_SMTPS;                //Enable implicit TLS encryption
                                    $mail->Port       = 465;  



                                    // Destinatários de email
                                    $mail->setFrom($email_envio_pelo_gmail, $nome_envio_pelo_gmail);  // campo DE:
                                    //$mail->addAddress($user_email, $user_name);         // Adiciona destinatários [CAMPO PARA:]
                                    $mail->addAddress($user_email, $user_name);         // Adiciona destinatários [CAMPO PARA:]

                                    // Conteúdo - assunto e copor do email.
                                    $mail->isHTML(true);                                // Define que o formato vai ser HTML
                                    $mail->Subject = utf8_decode('Recuperação de senha - GEsTri');
                                    //$mail->Body    = 'Dados para acesso ao GEsTri<br><br>Nome: '.$user_name.'<br>Login: marceloneri@gmail.com<br>Senha: '.$user_password;
                                    $mail->Body    = 'Dados para acesso ao GEsTri<br><br>Nome: '.$user_name.'<br>Login: '.$user_email.'<br>Senha: '.$user_password;
                                    $mail->AltBody = 'Estamos renviando dados para acesso ao GEsTri';

                                    $mail->send();
                                    //echo 'Mensagem enviada com sucesso!!!';
                                } catch (Exception $e) {
                                    //echo "A mensagem não pôde ser enviadad. Erro Mailer: {$mail->ErrorInfo}";
                                }
                                // FIM ENVIO DE EMAIL COM PHPMAILER

}



        $usuario_ja_existe = false;


















?>




















