<?php
	require_once 'config.php';
	require_once 'encryption.php';
	connect();
	//----------------------------------------------------------------------------------------------------------------
	//Valida que el hascode del game sea el mismo definido aqui
	$unityHash = anti_injection_login($_POST["myform_hash"]);	
	$phpHash = "h4shM4z3"; 
	
	$trampa = anti_injection_login($_POST["myform_trampa"]); 
	$numAlgoritmo = anti_injection_login($_POST["myform_numAlgoritmo"]); 
	$nivel = anti_injection_login($_POST["myform_nivel"]); 

	if ($unityHash != $phpHash){
		echo "El Hash code no coincide";
	} else {
		$SQL = "SELECT a.id, a.descripcion, a.guia FROM algoritmo AS a INNER JOIN desafio AS d ON a.id_desafio = d.id 
		INNER JOIN nivel AS n ON a.id_nivel = n.id WHERE d.trampa = '".$trampa."' AND n.descripcion = '".$nivel."'";
		$result_id = @mysql_query($SQL) or die("DATABASE ERROR!");
		$total = mysql_num_rows($result_id);
		for($i = 1; $i <= $total; $i++)
		{
			$datas = mysql_fetch_array($result_id);
			if($numAlgoritmo == $i)
			{
				echo $datas["id"]."-".$datas["descripcion"]."-".$datas["guia"];
				break;
			}
		}
	}
	
	// Cierra la conexion
	mysql_close();
?>
