<?php
	require_once 'config.php';
	require_once 'encryption.php';
	connect();
	//----------------------------------------------------------------------------------------------------------------
	//Valida que el hascode del game sea el mismo definido aqui
	$unityHash = anti_injection_login($_POST["myform_hash"]);	
	$phpHash = "h4shM4z3"; 
	
	$idAlgoritmo = anti_injection_login($_POST["myform_idAlgoritmo"]); 

	if ($unityHash != $phpHash){
		echo "El Hash code no coincide";
	} else {
		$SQL = "SELECT * FROM variables_algoritmo WHERE id_algoritmo = '" . $idAlgoritmo . "'";
		$result_id = @mysql_query($SQL) or die("DATABASE ERROR!");
		$total = mysql_num_rows($result_id);
		for($i = 0; $i < $total; $i++)
		{
			$datas = mysql_fetch_array($result_id);
			echo $datas["valor_variable"].",".$datas["posicion_graficaX"].",".$datas["posicion_graficaY"]."/";
		}
	}
	
	// Cierra la conexion
	mysql_close();
?>
