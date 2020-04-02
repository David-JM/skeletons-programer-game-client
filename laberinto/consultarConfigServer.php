<?php
	require_once 'config.php';
	require_once 'encryption.php';
	connect();
	//----------------------------------------------------------------------------------------------------------------
	//Valida que el hascode del game sea el mismo definido aqui
	$unityHash = anti_injection_login($_POST["myform_hash"]);
	$phpHash = "h4shM4z3";

	if ($unityHash != $phpHash){
		echo "El Hash code no coincide";
	} else {
		$SQL = "SELECT * FROM configuracion_servidor ORDER BY id desc";
		$result_id = @mysql_query($SQL) or die('Error: '.mysql_error());
		$datas = mysql_fetch_array($result_id);
		echo $datas["ip_publica"]."-".$datas["puertoHades"]."-".$datas["puertoShadow"];
	}
	// Close mySQL Connection
	mysql_close();
?>
