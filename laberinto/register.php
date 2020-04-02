<?php
	require_once 'config.php';
	require_once 'encryption.php';
	connect();
	//----------------------------------------------------------------------------------------------------------------
	//Valida que el hascode del game sea el mismo definido aqui
	$unityHash = anti_injection_login($_POST["myform_hash"]);
	$phpHash = "h4shM4z3"; 
	
	$user = anti_injection_login($_POST["myform_user"]);
	$pass = anti_injection_login_senha($_POST["myform_pass"]);
	$nivel = anti_injection_login($_POST["myform_nivel"]);

	if(!$user || !$pass || !$nivel) {
		echo "Ingresa todos los datos";
	} else {
		if ($unityHash != $phpHash){
			echo "El Hash code no coincide";
		} else {
			$SQLNIVEL = "SELECT id FROM nivel WHERE descripcion = '" . $nivel . "'";
			$resultNivel_id = @mysql_query($SQLNIVEL) or die("DATABASE ERROR!");
			$dataNivel = @mysql_fetch_array($resultNivel_id)["id"];
			
			$SQLRANGO = "SELECT r.id, r.descripcion FROM rango AS r ORDER BY r.puntos_requeridos asc";
			$resultRango_id = @mysql_query($SQLRANGO) or die("DATABASE ERROR!");
			$dataRango = @mysql_fetch_array($resultRango_id);
			$rango = $dataRango["id"];
			
			$SQL = "INSERT INTO usuario (username, password, id_nivel, id_rango) VALUES ('$user', '$pass', '$dataNivel', '$rango');";
			$result_id = @mysql_query($SQL) or die('Error: '.mysql_error());
			echo $user."-".$nivel."-".$dataRango["descripcion"];
		}
	}
	// Close mySQL Connection
	mysql_close();
?>
