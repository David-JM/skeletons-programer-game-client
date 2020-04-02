<?php
	require_once 'config.php';
	require_once 'encryption.php';
	connect();
	//----------------------------------------------------------------------------------------------------------------
	//Valida que el hascode del game sea el mismo definido aqui
	$unityHash = anti_injection_login($_POST["myform_hash"]);
	$phpHash = "h4shM4z3"; 
	
	$user = anti_injection_login($_POST["myform_user"]);
	$logro = anti_injection_login($_POST["myform_logro"]);
	$contador = anti_injection_login($_POST["myform_cont"]);	
	if ($unityHash != $phpHash){
		echo "El Hash code no coincide";
	} else {
		$SQL_MEDALLA = "SELECT id, orden FROM medalla ORDER BY orden asc";
		$result_id_medalla = @mysql_query($SQL_MEDALLA) or die('Error: '.mysql_error());
		$oro = mysql_fetch_array($result_id_medalla);
		$plata = mysql_fetch_array($result_id_medalla);
		$bronce = mysql_fetch_array($result_id_medalla);
		$medalla = null;
		
		$SQLLOGRO = "SELECT id FROM logro WHERE nombre = '".$logro."'";
		$result_id_logro = @mysql_query($SQLLOGRO) or die('Error: '.mysql_error());
		$id_logro = mysql_fetch_array($result_id_logro)["id"];
		
		$SQL_USER = "SELECT id FROM usuario WHERE username = '".$user."'";
		$result_id_user = @mysql_query($SQL_USER) or die('Error: '.mysql_error());
		$user = mysql_fetch_array($result_id_user)["id"];
	
		$SQL_LOGRO_USUARIO = "SELECT lu.id, lu.contador, lu.id_medalla AS med FROM logro_usuario AS lu INNER JOIN logro AS l ON lu.id_logro = l.id 
		INNER JOIN usuario AS u ON lu.id_usuario = u.id WHERE l.id = '".$id_logro."' and u.id = '".$user."'";
		$result_id_logro_usuario = @mysql_query($SQL_LOGRO_USUARIO) or die('Error: '.mysql_error());
		$datos = mysql_fetch_array($result_id_logro_usuario);
		$id_logro_usuario = $datos["id"];
		$contadorBD = $datos["contador"];
		$medallaActual = $datos["med"];
		if($id_logro_usuario) {
			switch ($logro) {
				case "Invencible":
					if($contadorBD + $contador >= 30 && $medallaActual != $oro)
						$medalla = $oro;
					else if($contadorBD + $contador >= 20 && $medallaActual != $plata)
						$medalla = $plata;
					else if($contadorBD + $contador >= 10 && $medallaActual != $bronce)
						$medalla = $bronce;
					break;
				case "Resistente":
					if($contadorBD + $contador >= 30 && $medallaActual != $oro)
						$medalla = $oro;
					else if($contadorBD + $contador >= 20 && $medallaActual != $plata)
						$medalla = $plata;
					else if($contadorBD + $contador >= 10 && $medallaActual != $bronce)
						$medalla = $bronce;
					break;
				case "Eficaz":
					if($contadorBD + $contador >= 60 && $medallaActual != $oro)
						$medalla = $oro;
					else if($contadorBD + $contador >= 40 && $medallaActual != $plata)
						$medalla = $plata;
					else if($contadorBD + $contador >= 20 && $medallaActual != $bronce)
						$medalla = $bronce;
					break;
			}

			$id_medalla = $medalla["id"];
			if($medalla != null){
				$SQL = "UPDATE logro_usuario set contador = contador+'".$contador."', id_medalla = '".$id_medalla."' WHERE id = '".$id_logro_usuario."'";
				$result_id = @mysql_query($SQL) or die('Error: '.mysql_error());
				echo $logro."-".$medalla["orden"];
			}
			else{
				$SQL = "UPDATE logro_usuario set contador = contador+'".$contador." WHERE id = '".$id_logro_usuario."'";
				$result_id = @mysql_query($SQL) or die('Error: '.mysql_error());
			}
		}
		else{
			$SQL = "INSERT INTO logro_usuario (id_usuario, id_logro, contador) VALUES ('$user', '$id_logro', '$contador');";
			$result_id = @mysql_query($SQL) or die('Error: '.mysql_error());
		}
	}
	// Close mySQL Connection
	mysql_close();
?>
