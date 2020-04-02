<?php
	// Funcion para evitar inyeccion de SQL y encripta la contraseña mediante md5
	function anti_injection_login_senha($sql, $formUse = true)
	{
		$sql = preg_replace("/(from|select|insert|delete|where|drop table|show tables|,|'|#|\*|--|\\\\)/i","",$sql);
		$sql = trim($sql);
		$sql = strip_tags($sql);
		if(!$formUse || !get_magic_quotes_gpc()){
			$sql = addslashes($sql);
			$sql = md5(trim($sql));
		}
		return $sql;
	}
	function anti_injection_login($sql, $formUse = true)
	{
		$sql = preg_replace("/(from|select|insert|delete|where|drop table|show tables|,|'|#|\*|--|\\\\)/i","",$sql);
		$sql = trim($sql);
		$sql = strip_tags($sql);
		if(!$formUse || !get_magic_quotes_gpc())
			$sql = addslashes($sql);
		return $sql;
	}
?>