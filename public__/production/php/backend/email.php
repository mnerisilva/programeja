<?php
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

require 'PHPMailer/src/Exception.php';
require 'PHPMailer/src/PHPMailer.php';
require 'PHPMailer/src/SMTP.php';

$body = '<!DOCTYPE html>
<html lang="PT-BR">
<head>
</head>
<body>
</body>
</html>';

$senha_gerada = geraSenha(8);
//echo $resultado;


$mail = new PHPMailer(true);

try {
    //Server settings
    //$mail->SMTPDebug = SMTP::DEBUG_SERVER;                        //Enable verbose debug output
    //$mail->SMTPDebug = 2;                                           //Enable verbose debug output
    $mail->isSMTP();                                                //Send using SMTP
    $mail->Host       = 'smtp.gmail.com';                           //Set the SMTP server to send through
    $mail->SMTPAuth   = true;                                       //Enable SMTP authentication
    $mail->Username   = 'programejah@gmail.com';                    //SMTP username
    $mail->Password   = 'vjfwapifwdtuakoq';                         //SMTP password
    $mail->SMTPSecure = PHPMailer::ENCRYPTION_SMTPS;                //Enable implicit TLS encryption
    $mail->Port       = 465;  

    //Recipients
    $mail->setFrom('programejah@gmail.com', 'GEsTri');
    $mail->addAddress('marceloneri@gmail.com', 'Marcelo Neri');     //Add a recipient

    //Content
    $mail->isHTML(true);                                            //Set email format to HTML
    $mail->Subject = 'Dados para acesso ao GEsTri';
    $mail->Body    = 'Dados para acesso ao GEsTri<br><br>Login: marceloneri@gmail.com<br>Senha: '.$senha_gerada;
    $mail->AltBody = 'TEstamos enviando seus dados para acesso ao Sistema GEsTri';

    $mail->send();
    echo 'Mensagem enviada com sucesso!!!';
} catch (Exception $e) {
    echo "A mensagem não pôde ser enviadad. Erro Mailer: {$mail->ErrorInfo}";
}






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