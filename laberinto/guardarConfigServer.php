<?php
	require_once 'config.php';
	require_once 'encryption.php';
	connect();
	//----------------------------------------------------------------------------------------------------------------
	//Valida que el hascode del game sea el mismo definido aqui
	$unityHash = anti_injection_login($_POST["myform_hash"]);
	$phpHash = "h4shM4z3"; 
	
	$ipServers = anti_injection_login($_POST["myform_ipServers"]);
	$portHades = anti_injection_login($_POST["myform_portHades"]);
	$portShadow = anti_injection_login($_POST["myform_portShadow"]);

	if ($unityHash != $phpHash){
		echo "El Hash code no coincide";
	} else {
		$SQL = "INSERT INTO configuracion_servidor (ip_publica, puertoHades, puertoShadow) VALUES ('$ipServers', '$portHades', '$portShadow');";
		$result_id = @mysql_query($SQL) or die('Error: '.mysql_error());
	}
	// Close mySQL Connection
	mysql_close();
?>
