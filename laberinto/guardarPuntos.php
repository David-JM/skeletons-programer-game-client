<?php
	require_once 'config.php';
	require_once 'encryption.php';
	connect();
	//----------------------------------------------------------------------------------------------------------------
	//Valida que el hascode del game sea el mismo definido aqui
	$unityHash = anti_injection_login($_POST["myform_hash"]);
	$phpHash = "h4shM4z3"; 
	
	$user = anti_injection_login($_POST["myform_user"]);
	$points = anti_injection_login($_POST["myform_points"]);
	$nivel = anti_injection_login($_POST["myform_nivel"]);
	$rango = null;

	if ($unityHash != $phpHash){
		echo "El Hash code no coincide";
	} else {
		$SQL = "SELECT general_points FROM usuario WHERE username = '".$user."'";
		$result_id = @mysql_query($SQL) or die("DATABASE ERROR!");
		$points += mysql_fetch_array($result_id)["general_points"];
		
		$SQLRANGO = "SELECT * FROM rango ORDER BY puntos_requeridos desc";
		$resultRango_id = @mysql_query($SQLRANGO) or die("DATABASE ERROR!");
		$total = mysql_num_rows($resultRango_id);
		
		if($nivel == "Novato")
			mysql_fetch_array($resultRango_id);
		
		for($i = 0; $i < $total; $i++)
		{
			$datas = mysql_fetch_array($resultRango_id);
			if($points >= $datas["puntos_requeridos"]){
				$rango = $datas["id"];
				break;
			}
		}
		
		$SQL = "UPDATE usuario set general_points = '".$points."', id_rango = '".$rango."' WHERE username = '".$user."'";
		$result_id = @mysql_query($SQL) or die('Error: '.mysql_error());
		echo "true";
	}
	// Close mySQL Connection
	mysql_close();
?>
