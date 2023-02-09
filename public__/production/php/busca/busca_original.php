<?php
if (!isset($_GET['nome_livro'])) {
	header("Location: index.php");
	exit;
}

$nome = "%".trim($_GET['nome_livro'])."%";

$dbh = new PDO('mysql:host=127.0.0.1;dbname=canalti', 'root', 'root1234');

$sth = $dbh->prepare('SELECT * FROM `livro` WHERE `nome` LIKE :nome');
$sth->bindParam(':nome', $nome, PDO::PARAM_STR);
$sth->execute();

$resultados = $sth->fetchAll(PDO::FETCH_ASSOC);
?>

<!DOCTYPE html>
<html>
<head>
	<title>Resultado da busca</title>
</head>
<body>
<h2>Resultado da busca</h2>
<?php
if (count($resultados)) {
	foreach($resultados as $Resultado) {
?>
<label><?php echo $Resultado['id']; ?> - <?php echo $Resultado['nome']; ?></label>
<br>
<?
} } else {
?>
<label>Não foram encontrados resultados pelo termo buscado.</label>
<?php
}
?>
</body>
</html>