<?php

$resultado = geraSenha(8);
echo $resultado;

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