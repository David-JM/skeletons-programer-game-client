<?php
	//Conexion
	define ('HOST','localhost');
	define ('USER','root');
	define ('PASSWORD','laberint0');
	define ('DB_NAME','maze');
	
	function connect(){
		mysql_connect(HOST, USER,PASSWORD ) or die('Error: '.mysql_error());
		mysql_select_db(DB_NAME)or die('Error: '.mysql_error());
	}
?>