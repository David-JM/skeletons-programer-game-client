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

	if(!$user || !$pass) {
		echo "Nombre de usuario o contraseña vacios";
	} else {
		if ($unityHash != $phpHash){
			echo "El Hash code no coincide";
		} else {
			$SQL = "SELECT u.username AS name, u.password AS pass, n.descripcion AS nivel, r.descripcion AS rango
			FROM usuario AS u INNER JOIN nivel AS n ON u.id_nivel = n.id INNER JOIN rango AS r ON u.id_rango = r.id 
			WHERE username = '" . $user . "'";
			$result_id = @mysql_query($SQL) or die("DATABASE ERROR!");
			$total = mysql_num_rows($result_id);
			if($total) {
				$datas = @mysql_fetch_array($result_id);
				if(!strcmp($pass, $datas["pass"])) {
					echo $datas["name"]."-".$datas["nivel"]."-".$datas["rango"];
				} else {
					echo "Contraseña equivocada";
				}
			} else {
				echo "El usuario ingresado no existe";
			}
		}
	}
	// Cierra la conexion
	mysql_close();
?>
