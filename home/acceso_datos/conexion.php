<?php class Conexion {
    private $servidor;
    private $user;
    private $password;
    private $dataBase;
    private $conex;
    private $query;
    public $cantidadFilas;

    public function  __construct() {
        $this->servidor = 'localhost';
        $this->user = 'root';
        $this->password = 'laberint0';
        $this->dataBase = 'maze';
    }

    protected function setServidor($Servidor) {
        $this->Servidor = $Servidor;
    }

    public function getServidor() {
        return $this->Servidor;
    }

    protected function setUser($User) {
        $this->User = $User;
    }

    public function getUser() {
        return $this->User;
    }

    protected function setPassword($Password) {
        $this->Password = $Password;
    }

    public function getPassword() {
        return $this->Password;
    }

    protected function setDataBase($DataBase) {
        $this->DataBase = $DataBase;
    }

    public function getDataBase() {
        return $this->DataBase;
    }

    public function setQuery($consulta) {
        $this->Query = $consulta;
    }

    public function getQuery() {
        return $this->Query;
    }
	
	 public function getDatos() {
        return $this->datos;
    }

    public function getConex() {
        return $this->conex;
    }

    public function getCantidadFilas() {
        return $this->cantidadFilas;
    }

	
	//Método para conectarnos a la base de datos
    public function conectar() {
        $x = 0;
        if (!$this->conex = mysql_connect($this->servidor, $this->user, $this->password)) {
?>
            <script> alert("No se establecio conexion con el servidor"); </script>
<?php
             exit;
        }
        if (!mysql_select_db($this->dataBase, $this->conex)) {
?>
            <script> alert("No se encontro base de datos"); </script>
<?php

            exit;
        }
        return $this->conex;
    }

    public function desconectar() {
       mysql_close($this->conex);
    }

    //Método para ejecutar consultas que retornas un registro o más
    public function ejecutarSelect($consulta) {
        $this->conectar();
        $this->query = $consulta;
        $resultado = mysql_query($this->query, $this->conex);
	        if ($resultado != 0) {
            $this->cantidadFilas = mysql_num_rows($resultado);
			return $resultado;
			
        } else {
            return 0;
        }
        $this->desconectar();
    }
	
    //metodo  para ejecutar consultas como update y delete
    public function ejecutarQuery($consulta) {
        $this->conectar();
		$this->query = $consulta;
		$resultado = mysql_query($this->query, $this->conex);
		$this->desconectar();
		return $resultado;	
    }

    //método para hacer una consulta que retorna un dato Ejemplo: select nombre from empleados
    public function traerDato($consulta) {
        $this->conectar();
        $this->query = $consulta;
        $resultado = mysql_query($this->query, $this->conex);
        $array = mysql_fetch_array($resultado);
        if ($array[0]!="") {
            return $array;
        } else {
            return 0;
        }
        $this->desconectar();
    }
}
$conexion = new Conexion();
?>