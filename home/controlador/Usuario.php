<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Usuario
 *
 * @author David Martinez
 */
class Usuario{
    //put your code here
    
    private $id;
    private $username;
    private $password;
    private $idTipoUsuario;
    private $idRango;
    private $generalPoints;
    private $objConexion;


    //CONSTRUCTOR
    
    public function __construct() {
        $this->objConexion = new Conexion();
    }

    
    // METODOS
    
    public function consultar(){
            $consulta="SELECT username, r.descripcion as nivel, general_points  FROM usuario as  u
                    INNER JOIN nivel as n ON u.id_nivel=n.id
                    INNER JOIN rango as r ON u.id_rango=r.id order by general_points desc";
            $resultado=$this->objConexion->ejecutarQuery($consulta);
            $arreglo=array();
            while($fila = mysql_fetch_array($resultado)) { $arreglo[] = $fila; }
            return $arreglo;
    }

    public function consultarPorPaginacion($limit)
    {
            $consulta="SELECT username, r.descripcion as nivel, general_points  FROM usuario as  u
                    INNER JOIN nivel as n ON u.id_nivel=n.id
                    INNER JOIN rango as r ON u.id_rango=r.id order by general_points desc $limit";
            $resultado=$this->objConexion->ejecutarQuery($consulta);
            $arreglo=array();
            while($fila = mysql_fetch_array($resultado)) { $arreglo[] = $fila; }
            return $arreglo;
    }  
    
    // PROPIEDADES
    function getId() {
        return $this->id;
    }

    function getUsername() {
        return $this->username;
    }

    function getPassword() {
        return $this->password;
    }

    function getIdTipoUsuario() {
        return $this->idTipoUsuario;
    }

    function getIdRango() {
        return $this->idRango;
    }

    function getGeneralPoints() {
        return $this->generalPoints;
    }

    function setId($id) {
        $this->id = $id;
    }

    function setUsername($username) {
        $this->username = $username;
    }

    function setPassword($password) {
        $this->password = $password;
    }

    function setIdTipoUsuario($idTipoUsuario) {
        $this->idTipoUsuario = $idTipoUsuario;
    }

    function setIdRango($idRango) {
        $this->idRango = $idRango;
    }

    function setGeneralPoints($generalPoints) {
        $this->generalPoints = $generalPoints;
    }

}

?>