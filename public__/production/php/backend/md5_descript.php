<?php

$string = '123456';
$codificada = base64_encode($string);
echo $codificada;
echo '<br />';

$decodificada = base64_decode($codificada);
echo $decodificada;

?>