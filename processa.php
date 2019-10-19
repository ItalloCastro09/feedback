<?php
session_start();
include_once("conexao.php");

if(!empty($_POST['estrela'])){
	$estrela = $_POST['estrela'];
	
	$result_avaliacao = "INSERT INTO avaliacao (qnt_estrela, created) VALUES ('$estrela', NOW())";
	$resultado_avaliacao = mysqli_query($conn, $result_avaliacao);
	
	if(mysqli_insert_id($conn)){
		$_SESSION['msg'] = "Obrigado pelo seu feedback !";
		header("Location: index.php");
	}else{
		$_SESSION['msg'] = "Não foi possível deixar seu feedback";
		header("Location: index.php");
	}
	
}else{
	$_SESSION['msg'] = "Necessário selecionar pelo menos 1 estrela";
	header("Location: index.php");
}